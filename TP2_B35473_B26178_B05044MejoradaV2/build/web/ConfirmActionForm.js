function confirmAction(idForm, message) {
    var result = confirm(message);
    if (result === true) {
        document.getElementById(idForm).submit();
        return true;
    } else {
        return false;
    }

//    swal({title: message,
//        text: "Confirmación para eliminar cuenta!",
//        type: "warning",
//        showCancelButton: true,
//        confirmButtonColor: "#DD6B55",
//        confirmButtonText: "Si borrar cuenta!",
//        cancelButtonText: "No, cancelar!",
//        closeOnConfirm: false,
//        closeOnCancel: false
//    },
//    function (isConfirm) {
//        if (isConfirm) {
//            swal("Deleted!", "Se procederá a borrar su cuenta, espere mensaje de confirmación o fallido", "success");
//            document.getElementById(idForm).submit();
//            return true;
//        } else {
//            swal("Cancelled", "Su cuenta no será borrada", "error");
//            return false;
//        }
//    });
}
