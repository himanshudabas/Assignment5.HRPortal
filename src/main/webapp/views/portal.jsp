<%--@elvariable id="username" type="java.lang.String"--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
  <title>Assignment5 | Portal</title>
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
    <h2 class="mt-3 text-center">Employee Listings</h2>
    <div class="container mt-3">
      <section class="m-0 p-0 container-fluid .overflow-auto">
        <div class="table-wrapper-scroll-y my-custom-scrollbar">
          <div class="table-responsive text-nowrap">
            <table id="employee-table"
                   class="table table-striped table-bordered border-dark">
              <thead>
              <tr class="align-middle table-custom-clr">
                <th class="" scope="col">Employee Code</th>
                <th class="" scope="col">Name</th>
                <th class="" scope="col">Location</th>
                <th class="" scope="col">Email</th>
                <th class="" scope="col">Date of Birth</th>
                <th class="" scope="col">Action</th>
              </tr>
              </thead>
              <tbody>
              
              </tbody>
            </table>
          </div>
        </div>
      </section>
    </div>
    <div class="my-3 mx-4 border-bottom border-dark border-1"></div>

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
  <script src="<c:url value="/resources/js/portal.js" />"></script>
  <%-- scripts end --%>

</body>
</html>
