document.addEventListener("DOMContentLoaded", function () {

    var menuToggle = document.querySelector(".menu-toggle");
    var navUl = document.querySelector("nav ul");

    if (menuToggle && navUl) {
        menuToggle.addEventListener("click", function () {
            navUl.classList.toggle("show");
        });
    }

});
