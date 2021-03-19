$(document).ready(function () {
    'use strict'

});

function showAlert(msg, type) {
    let alertBox = $("#alert-box");
    if (type === "success") {
        alertBox.removeClass("alert-danger");
        alertBox.addClass("alert-success");
    } else if (type === "failure") {
        alertBox.removeClass("alert-success");
        alertBox.addClass("alert-danger");
    }
    alertBox.find("span").eq(0).text(msg);
    alertBox.show();
}

function hideAlert() {
    let alertBox = $("#alert-box");
    alertBox.find("span").eq(0).text("");
    alertBox.hide();
}

function logout() {
    let logoutUrl = document.location.origin + "/logout"
    $.ajax({
        type: "GET",
        url: logoutUrl ,
        success: function () {
            window.location.replace(document.location.origin + "/login");
        }
    });
}