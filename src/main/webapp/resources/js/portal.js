$(document).ready(function () {
    'use strict'

    // edit button click handler
    let table = document.getElementById('employee-table');
    table.addEventListener('click', clickHandler);
    function clickHandler(event) {
        let eleName = event.target.getAttribute('name');
        switch (eleName) {
            case 'edit-employee':
                editEmployee(event);
                break;

            default:
                break;
        }
    }

    function editEmployee(event) {
        let employeeCode = $(event.target).closest('tr').find(".employee-code").eq(0).text();
        window.location.replace("http://localhost:8080/edit/" + employeeCode);
    }

    // edit button click handler end


    // populate table data using ASYNC call
    function employees() {
        return fetch(`http://localhost:8000/api/v1/employee`)
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

    const getEmployees = async() => {
        return await employees()
    }

    (async function() {
        const allEmployees = await getEmployees()
        // now you have the repositories in the repos const - from here,
        // you can work with it
        console.log('getRepos:', allEmployees)

        addAllRows(allEmployees)
    })();

    const addAllRows = (rows) => {
        rows.forEach(row => {
            const tbody = document.querySelector('#employee-table tbody')
            const tr = document.createElement('tr')
            tr.innerHTML = rowHtml(row)
            tbody.appendChild(tr)
        })
    }

    const rowHtml = row => {
        let tr_html = ''
        let dob = new Date(row.dob).toISOString().split("T")[0];
        tr_html += `<td class="employee-code">${row.employeeCode}</td>
                    <td>${row.name}</td>
                    <td>${row.location}</td>
                    <td>${row.email}</td>
                    <td>${dob}</td>
                    <td><button name="edit-employee" class="btn btn-warning">Edit</button></td>`
        return tr_html
    }
    // populate table data using ASYNC call end

    // logout
    $("#logout").on("click", logout);
    // logout end
});