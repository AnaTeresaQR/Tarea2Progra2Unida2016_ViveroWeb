function confirmAction(idForm) {

    var registerForm = $(idForm);
    var confirmName = validateName(registerForm.find('#userName'));
    var confirmLastName = validateLastName(registerForm.find('#lastName'));
    var confirmSchedule = validateShedule(registerForm.find('#schedule'));
    var confirmTel = validateTelephone(registerForm.find('#telephone'));
    var confirmEmail = validateEmail(registerForm.find('#email'));
    var confirmEmailPass = validatePassword(registerForm.find('#password'));

    if (confirmName
            && confirmLastName
            && confirmSchedule
            && confirmTel
            && confirmEmail
            && confirmEmailPass) {
        return true;
    } else {
        return false;
    }

}

function validateName(input) {
    var expNick = new RegExp("[a-zA-Z\\s]{3,100}$");
    if (expNick.test(input.value)) {
        input.setCustomValidity('');
        return true;
    } else {
        input.setCustomValidity("El nombre esta vacío o contiene formato incorrecto");
        input.focus();
        return false;
    }
}

function validateLastName(input) {
    var expNick = new RegExp("[a-zA-Z\\s]{3,100}$");
    if (expNick.test(input.value)) {
        input.setCustomValidity('');
        return true;
    } else {
        input.setCustomValidity('El apellido esta vacío o contiene formato incorrecto');
        input.focus();
        return false;
    }
}
function validateShedule(input) {
    var expNick = new RegExp("[0-9]{9}$");
    if (expNick.test(input.value)) {
        input.setCustomValidity('');
        return true;
    } else {
        input.setCustomValidity('La cédula esta vacía o contiene formato incorrecto');
        input.focus();
        return false;
    }
}
function validateTelephone(input) {
    var expNick = new RegExp("[0-9]{8}$");
    if (expNick.test(input.value)) {
        input.setCustomValidity('');
        return true;
    } else {
        input.setCustomValidity('El teléfono esta vacío o contiene formato incorrecto');
        input.focus();
        return false;
    }
}

function validateEmail(input) {
    var expEmail = new RegExp("[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");
    if (expEmail.test(input.value)) {
        input.setCustomValidity('');
        return true;
    } else {
        input.setCustomValidity('El email esta vacío o contiene formato incorrecto');
        input.focus();
        return false;
    }
}
function validatePassword(input) {
    var expPassword = new RegExp("[a-zA-Z]+[0-9]+$");
    if (expPassword.test(input.value) && input.value.length >= 5) {
        input.setCustomValidity('');
        return true;
    } else {
        input.setCustomValidity('El password esta vacío o contiene formato incorrecto');
        input.focus();
        return false;
    }
}


