using Microsoft.EntityFrameworkCore;
using SaphiraTerror.Data;
using SaphiraTerror.Interfaces;
using SaphiraTerror.Repositories;

var builder = WebApplication.CreateBuilder(args);

// Base de dados
builder.Services.AddDbContext<SaphiraTerrorDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

// REGISTRO DE REPOSITÓRIOS
builder.Services.AddScoped<IFilmeRepository, FilmeRepository>();
builder.Services.AddScoped<IGeneroRepository, GeneroRepository>();
builder.Services.AddScoped<IClassificacaoRepository, ClassificacaoRepository>();
builder.Services.AddScoped<IUsuarioRepository, UsuarioRepository>();
builder.Services.AddScoped<ITipoUsuarioRepository, TipoUsuarioRepository>();

// Configuração de autenticação baseada em Cookies.
// Para uma API com front-end externo, considere usar Tokens JWT no futuro.
builder.Services.AddAuthentication("SaphiraAuth").AddCookie("SaphiraAuth", options =>
{
    // Para uma API, em vez de redirecionar, o ideal é apenas retornar status 401 e 403.
    // Isso é configurado de outra forma, geralmente com manipuladores de eventos.
    options.LoginPath = "/Usuario/Login";
    options.AccessDeniedPath = "/Usuario/AcessoNegado";
    options.ExpireTimeSpan = TimeSpan.FromMinutes(30);
    options.SlidingExpiration = true;
});

// Adiciona serviços para Controllers e Views.
builder.Services.AddControllersWithViews();

// Configuração do CORS
builder.Services.AddCors(options =>
{
    // ATENÇÃO: Esta política é muito permissiva e ideal apenas para desenvolvimento.
    // Em produção, troque 'AllowAnyOrigin' por 'WithOrigins("http://seu-front-end.com")'.
    options.AddPolicy("PermitirTudo", p =>
        p.AllowAnyOrigin()
         .AllowAnyMethod()
         .AllowAnyHeader());
});

var app = builder.Build();

// Configure o pipeline de requisições HTTP.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // Em produção, você pode querer usar HSTS.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

// Habilita o roteamento
app.UseRouting();

// **CORREÇÃO:** Aplica a política de CORS definida acima.
app.UseCors("PermitirTudo");

// **CORREÇÃO:** Adiciona o middleware de autenticação.
app.UseAuthentication();

// O middleware de autorização vem DEPOIS da autenticação.
app.UseAuthorization();

//app.MapControllerRoute(
//    name: "default",
//    pattern: "{controller=Home}/{action=Index}/{id?}");

app.MapFallbackToFile("index.html");

app.Run();