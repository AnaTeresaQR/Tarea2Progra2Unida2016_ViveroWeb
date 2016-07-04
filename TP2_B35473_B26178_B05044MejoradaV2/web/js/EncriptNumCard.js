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


