$(document).ready(function () {
    'use strict'


    // save edited details using ajax

    let editSubmitButton = $("#submit-edit");
    editSubmitButton.on("click", function(event) {
        event.preventDefault();
        let empCode = $(location).attr("href").split('/').pop();
        const formBody = $('#employee-form');
        const empNameInput = formBody.find("#name").val();
        const empLocationInput = formBody.find("#location").val();
        const empEmailInput = formBody.find("#email").val();
        const empDobInput = formBody.find("#dob").val();
        let data = {
            employeeCode: empCode,
            name: empNameInput,
            location: empLocationInput,
            email: empEmailInput,
            dob: empDobInput
        };
        $.ajax({
            type: "POST",
            url: "http://localhost:8000/api/v1/employee/" + empCode ,
            contentType: "application/json",
            data: JSON.stringify(data),
            success: submitResultHandler
        });
    });

    function submitResultHandler(jsonRes) {
        if (jsonRes.status === "success" || jsonRes.status === "failure") {
            showAlert(jsonRes.message, jsonRes.status)
        } else {
            showAlert(jsonRes.error, "failure")
        }
        // window.location.replace(document.location.origin + "/portal");
    }

    // save edited details using ajax end


    // populate edit form using ASYNC call

    function employee(empCode) {
        return fetch(`http://localhost:8000/api/v1/employee/` + empCode)
            .then((response) => {
                return response.json()
            })
            .then(json => {
                return json
            })
            .catch((err) => {
                console.log('Fetch Error :-S', err);
            });
    }

    const getEmployee = async(empCode) => {
        return await employee(empCode)
    }

    (async function() {
        let empCode = $(location).attr("href").split('/').pop();
        const employee = await getEmployee(empCode)
        // now you have the repositories in the repos const - from here,
        // you can work with it
        console.log('getRepos:', employee)

        populateForm(employee)
    })();

    const populateForm = (emp) => {

        const formBody = $('#employee-form');
        const empCodeInput = formBody.find("#employee-code");
        const empNameInput = formBody.find("#name");
        const empLocationInput = formBody.find("#location");
        const empEmailInput = formBody.find("#email");
        const empDobInput = formBody.find("#dob");

        empCodeInput.val(emp.employeeCode);
        empCodeInput.prop('disabled', true);
        empNameInput.val(emp.name);
        empLocationInput.val(emp.location);
        empEmailInput.val(emp.email);

        let dob = new Date(emp.dob).toISOString().split("T")[0];

        empDobInput.val(dob);

    }

    // populate edit form using ASYNC call end

    document.getElementById("cancel-edit").onclick = function (event) {
        event.preventDefault();
        window.location.replace(document.location.origin + "/portal");
    };

    $("#logout").on("click", logout);
});
