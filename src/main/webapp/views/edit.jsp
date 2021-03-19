<%--@elvariable id="username" type="java.lang.String"--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
  <title>Assignment5 | Edit Employee</title>
  <link
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
          crossorigin="anonymous">
  <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
</head>
<body>

  <%-- Header --%>
  <nav class="bg-secondary navbar navbar-dark">
    <div class="container-fluid">
      <a class="navbar-brand">Assignment5 - Spring Boot</a>
      <div class="d-flex align-items-center"><span class="me-4
            ">Welcome ${username}!</span>
        <button id="logout" class="btn btn-danger">Logout</button></div>
    </div>
  </nav>
  <%-- Header end --%>



  <%-- Main Body --%>
  <div class="container mt-4 mb-6 pb-5">

    <%--  Error Msg --%>
    <div style="display: none" id="alert-box" class="mb-5 mx-8 mt-2 alert alert-danger alert-dismissible fade show" role="alert">
      <span></span>
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <%--  Error Msg end --%>
    <h2 class="text-center">Edit Employee Details</h2>
    <form id="employee-form" class="mx-auto col-md-7 col-sm-9 mt-5" method="post" action="edit">
      <div class=" input-container">
        <div class="row mb-3">
          <label for="employee-code" class="col-sm-4 col-md-4 col-lg-4 col-form-label">Employee Code</label>
          <input disabled class="col" type="number" name="employeeCode" id="employee-code" value="0" required>
        </div>

        <div class="row mb-3">
          <label for="name" class="col-sm-4 col-md-4 col-lg-4 col-form-label">Employee Name</label>
          <input class="col" type="text" name="name" id="name" value="" required>
        </div>

        <div class="row mb-3">
          <label for="location" class="col-sm-4 col-md-4 col-lg-4 col-form-label">Location</label>
          <input class="col" type="text" name="location" id="location" value="" required>
        </div>

        <div class="row mb-3">
          <label for="email" class="col-sm-4 col-md-4 col-lg-4 col-form-label">Email</label>
          <input class="col" type="email" name="email" id="email" value="" required>
        </div>

        <div class="row mb-3">
          <label for="dob" class="col-sm-4 col-md-4 col-lg-4 col-form-label" >Date of Birth</label>
          <div class="p-0 d-flex align-items-center col" >
            <input class="text-center col" type="date" name="dob" id="dob" value="2000-01-01" required>
          </div>
        </div>
      </div>

      <div class="text-center">
        <button type="submit" id="submit-edit" class="btn btn-success">Save</button>
        <button id="cancel-edit" class="btn btn-secondary">Cancel</button>
      </div>
    </form>
  </div>

  <%-- Main Body end --%>


  <%-- footer --%>
  <footer class="fixed-bottom bg-secondary">
    <span>Copyright 2020-2021 by Fresher Training</span>
  </footer>
  <%-- footer end --%>


  <%-- scripts  --%>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script
          src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
          crossorigin="anonymous"></script>
  <script src="<c:url value="/resources/js/main.js" />"></script>
  <script src="<c:url value="/resources/js/edit.js" />"></script>
  <%-- scripts end --%>

</body>
</html>
