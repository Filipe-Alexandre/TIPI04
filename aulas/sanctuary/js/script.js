// #region video
window.addEventListener("load", () => {
    let video = window.document.querySelector("#video");

    video.play();
    video.loop = true;
    video.muted = true;

});
//#endregion video

//#region temas

const btnLight = document.querySelector("#lightMode");
const btnDark = document.querySelector("#darkMode");
const body = document.body;

body.classList.add("lightMode");
btnLight.style.display = "inline";
btnDark.style.display = "none";

btnLight.addEventListener("click", () => {
    body.classList.remove("lightMode");
    btnLight.style.display = "none";

    body.classList.add("darkMode");
    btnDark.style.display = "inline";
});

btnDark.addEventListener("click", () => {
    body.classList.remove("darkMode");
    btnDark.style.display = "none";

    body.classList.add("lightMode");
    btnLight.style.display = "inline";
});

//#region temas

//#region AOS

AOS.init({
    duration: 2000,
  });

//#endregion AOS

