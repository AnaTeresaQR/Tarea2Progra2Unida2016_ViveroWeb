var currentProvinceSelect;
var currentCantonSelect;
var currentDistrictSelect;

$(document).ready(function () {

    $('#canton').attr('disabled', 'disabled');
    $('#district').attr('disabled', 'disabled');
    loadProvince();
});


function returnVars() {
    var selectBox = document.getElementById("district");
    currentDistrictSelect = selectBox.options[selectBox.selectedIndex].value;
    if (!currentProvinceSelect
            && !currentCantonSelect
            && !currentDistrictSelect) {
        var p = document.getElementById("impresion");
        alert('p.innerText = currentProvinceSelect + " " + currentCantonSelect + " " + currentDistrictSelect + " "');
    }
}

function loadProvince() {
    var provincesURL = 'http://wsprovincias.azurewebsites.net/Service1.svc/provincias';

    var req = $.ajax({
        url: provincesURL,
        dataType: "jsonp",
        timeout: 10000,
        success: function (datos) {
            processProvinces(datos);
        },
        error: function (x, t, m) {
            messageError(x, t, m);
        }
    });

}

function loadCanton() {

    $('#canton').removeAttr('disabled');
    var selectBox = document.getElementById("province");
    currentProvinceSelect = selectBox.options[selectBox.selectedIndex].value; // setado del currentProvince.name;
    var cantonesURL = 'http://wsprovincias.azurewebsites.net/Service1.svc/cantones?provincia=' + currentProvinceSelect;

    var req = $.ajax({
        url: cantonesURL,
        dataType: "jsonp",
        timeout: 10000,
        success: function (datos) {
            processCantones(datos);
        },
        error: function (x, t, m) {
            messageError(x, t, m);
        }
    });
}

function loadDistrict() {
    $('#district').removeAttr('disabled');
    var selectBox = document.getElementById("canton");
    currentCantonSelect = selectBox.options[selectBox.selectedIndex].value; // setado del currentProvince.name;
    var districtsURL = 'http://wsprovincias.azurewebsites.net/Service1.svc/distritos?provincia='
            + currentProvinceSelect + '&canton=' + currentCantonSelect;

    var req = $.ajax({
        url: districtsURL,
        dataType: "jsonp",
        timeout: 10000,
        success: function (datos) {
            processDistricts(datos);
        },
        error: function (x, t, m) {
            messageError(x, t, m);
        }
    });
}

function processProvinces(datos) {
    $('#province').empty();
    for (var i = 0, max = datos.length; i < max; i++) {
        var currentProvince = datos[i];
        var newOption = document.createElement("option");
        newOption.value = currentProvince.name;
        newOption.innerText = currentProvince.name;

        $('#province').append(newOption);
    }
}

function processCantones(datos) {
    $('#canton').empty();
    for (var i = 0, max = datos.length; i < max; i++) {
        var currentCanton = datos[i];
        var newOption = document.createElement("option");
        newOption.value = currentCanton.name;
        newOption.innerText = currentCanton.name;

        $('#canton').append(newOption);
    }
}

function processDistricts(datos) {
    $('#district').empty();
    for (var i = 0, max = datos.length; i < max; i++) {
        var currentDistrict = datos[i];
        var newOption = document.createElement("option");
        newOption.value = currentDistrict.name;
        newOption.innerText = currentDistrict.name;

        $('#district').append(newOption);
    }
}

function messageError(x, t, m) {
    if (t === "timeout") {
        alert("Tiempo de espera agotado");
    } else {
        alert(t);
    }
}