document.addEventListener("DOMContentLoaded", function () {

    // ===== NAVBAR TOGGLE =====
    var menuToggle = document.getElementById("menu-toggle");
    var navUl = document.querySelector("nav ul");

    if (menuToggle && navUl) {
        menuToggle.addEventListener("click", function () {
            navUl.classList.toggle("show");
        });
    }

});
    