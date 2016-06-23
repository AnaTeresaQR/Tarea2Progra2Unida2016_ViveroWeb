$(document).ready(function () {
    $(function () {
        $("div").hide();
        $(function () {
            if ($("input[name=type]").val() === "1") { // cuando esta registrado o no
                $("#userMenu").fadeIn(300);
            } else {
                $("#userMenu").hide();
            }
        });
    });

// devuelve el elemento que ocupo y oculta el resto
    $("a").click(function () {
        var id = $(this).attr("id");
        $("div").hide();
        $("div[id=" + id + "]").fadeIn(300);
    });
});





//function myFunction() {
//    document.getElementById("menu").classList.toggle("panel");
//}
//
//// Close the dropdown if the user clicks outside of it
//window.onclick = function (e) {
//    if (!e.target.matches('.menu')) {
//
//        var options = document.getElementsByClassName("menu");
//
//        for (var option_i = 0; option_i < options.length; option_i++) {
//            var openDropdown = options[option_i];
//            if (openDropdown.classList.contains('panel')) {
//                openDropdown.classList.remove('panel');
//            }
//        }
//    }
//};
//function showInicio(){
//    mostrarDiv(inicio);
//    ocultarDiv(info);
//    ocultarDiv(contacto);
//    
//}
//
//function mostrarDiv(element) {
//    var elementToShow = element;
//    $(elementToShow).fadeIn(300);
//}
//
//function ocultarDiv(element) {
//    var elementToHide = element;
//    $(elementToHide).hide();
//}
