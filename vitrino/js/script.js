const btnSobre = document.querySelector(".sobre")
const btnMissao = document.querySelector(".missao")
const btnVisao = document.querySelector(".visao")
const btnValores = document.querySelector(".valores")

const sobre = document.querySelector(".sobreDiv");
const missao = document.querySelector(".missaoDiv");
const visao = document.querySelector(".visaoDiv");
const valores = document.querySelector(".valoresDiv");

btnSobre.addEventListener("click", ()=> {
    sobre.style.display = "flex";
    missao.style.display = "none";
    visao.style.display = "none";
    valores.style.display = "none";
})

btnMissao.addEventListener("click", ()=> {
    sobre.style.display = "none";
    missao.style.display = "flex";
    visao.style.display = "none";
    valores.style.display = "none";
})

btnVisao.addEventListener("click", ()=> {
    sobre.style.display = "none";
    missao.style.display = "none";
    visao.style.display = "flex";
    valores.style.display = "none";
})

btnValores.addEventListener("click", ()=> {
    sobre.style.display = "none";
    missao.style.display = "none";
    visao.style.display = "none";
    valores.style.display = "flex";
})


const darkBtn = document.querySelector(".darkBtn")
const lightBtn = document.querySelector(".lightBtn")
const body = document.body

darkBtn.addEventListener("click", ()=> {
    body.classList.remove("lightMode");
    body.classList.add("darkMode");
    lightBtn.style.display="flex";
    darkBtn.style.display="none";
}) 

lightBtn.addEventListener("click", ()=> {
    body.classList.remove("darkMode");
    body.classList.add("lightMode");
    darkBtn.style.display="flex";
    lightBtn.style.display="none";
})

// +100px para os links
document.addEventListener("DOMContentLoaded", function () {
    document.querySelectorAll("a[href^='#']").forEach(anchor => {
        anchor.addEventListener("click", function (event) {
            event.preventDefault();
            
            const targetId = this.getAttribute("href").substring(1);
            const targetElement = document.getElementById(targetId);
            
            if (targetElement) {
                const offset = 100;
                const elementPosition = targetElement.getBoundingClientRect().top + window.scrollY;
                
                window.scrollTo({
                    top: elementPosition - offset,
                    behavior: "smooth"
                });
            }
        });
    });
});