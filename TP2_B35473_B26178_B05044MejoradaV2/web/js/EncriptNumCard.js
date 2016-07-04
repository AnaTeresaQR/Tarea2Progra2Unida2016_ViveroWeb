function convertNumCard() {
    var numCardtoConvert = document.getElementById("numcard").value;
    var stringFinal = "";
    var flag = numCardtoConvert.length - 4;
    for (var i = 0; i <= numCardtoConvert.length; i++) {
        var caracter = numCardtoConvert.charAt(i);
        if (caracter === " ") {
            stringFinal = stringFinal + " ";
        } else {
            if (i < flag) {
                stringFinal = stringFinal + "x";

            } else {
                stringFinal = stringFinal + caracter;
            }
        }
    }
    document.getElementById("numcard").value = stringFinal;
}

function NumCardSize(input) {
     var expNick = new RegExp("[0-9]{12}");
    if (expNick.test(input.value)) {
        input.setCustomValidity('');
        return true;
    } else {
        input.setCustomValidity("La cantidad de números no tiene formato correcto");
        input.focus();
        return false;
    }
}

function exportPDF() {
    window.open("BuildBill.jsp");
}


