//#region slick
$(".cards__tab").slick({
    infinite: true,
    slidesToShow: 2,
    slidesToScroll: 1,
    autoplay: true,
    speed: 2000,
    responsive: [
      {
        breakpoint: 900,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 1,
        },
      },
      {
        breakpoint: 600,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1,
        },
      },
    ],
  });
  
  $(".blogs").slick({
    infinite: true,
    slidesToShow: 2,
    slidesToScroll: 1,
    autoplay: true,
    speed: 2000,
    responsive: [
      {
        breakpoint: 900,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 1,
        },
      },
      {
        breakpoint: 600,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1,
        },
      },
    ],
  });
  //#endregion slick
  
  // #region menu mobile
  let open = document.querySelector(".btn-open");
  let close = document.querySelector(".btn-close");
  let nav = document.querySelector("nav");
  
  open.addEventListener("click", () => {
    nav.classList.add("ativo");
  });
  
  close.addEventListener("click", () => {
    nav.classList.remove("ativo");
  });
  // #endregion menu mobile
  
  // #region AOS
  AOS.init();
  // #endregion AOS
  
  // #region gaveta de duvidas
  
  let gaveta = document.querySelector(".gaveta");
  
  gaveta.addEventListener("click", () => {
    if (gaveta.classList.contains("gaveta")) {
      gaveta.classList.replace("gaveta", "gaveta-click");
    } else {
      gaveta.classList.replace("gaveta-click", "gaveta");
    }
  });
  // #endregion gaveta de duvidas
  
  // identificar qual bloco está ativo e dar display block, caso contrario, display none isso vale para o header
  
  // #region MVV
  var btnMissao = document.querySelector("#btn-missao");
  var btnVisao = document.querySelector("#btn-visao");
  var btnValores = document.querySelector("#btn-valores");
  
  var missao = document.querySelector("#missao");
  var visao = document.querySelector("#visao");
  var valores = document.querySelector("#valores");
  var imgMvv = document.querySelector("#img-mvv");
  
  btnMissao.addEventListener("click", () => {
    missao.style.display = "block";
    visao.style.display = "none";
    valores.style.display = "none";
    imgMvv.innerHTML = '<img src="assets/itens/mvv-missao.svg" id="img-mvv">'
  });
  
  btnVisao.addEventListener("click", () => {
    missao.style.display = "none";
    visao.style.display = "block";
    valores.style.display = "none";
    imgMvv.innerHTML = '<img src="assets/itens/mvv-visao.svg" id="img-mvv">'
  });
  
  btnValores.addEventListener("click", () => {
    // alert("valores");
    missao.style.display = "none";
    visao.style.display = "none";
    valores.style.display = "block";
    imgMvv.innerHTML = '<img src="assets/itens/mvv-valores.svg" id="img-mvv">'
  });
  
  // #endregion MVV
  
  // #region forms
  
  function formWhats() {
    var nome = '*Nome: *' + document.querySelector('#nome').value;
    var email = '*Email: *' + document.querySelector('#email').value;
    var tel = '*Fone: *' + document.querySelector('#tel').value;
    var mens = '*Mensagem: *' + document.querySelector('#msg').value;
  
    var agencia = '*Cloud Wise*';
    var assunto = 'Mensagem do site!'
  
    var numFome = '5511912345678'
    var quebraDeLinha = '%0A'
  
    if (email == '') {
      alert("O campo do e-mail é obrigatório");
    }
  
    window.open('https://api.whatsapp.com/send?phone=' + numFome)
  }
  
  // #endregion forms