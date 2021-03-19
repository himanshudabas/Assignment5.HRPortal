<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--@elvariable id="loginMsg" type="java.lang.String"--%>
<html>
<head>
<title>Assignment5 | Login</title>
<link
  href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
  rel="stylesheet"
  integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
  crossorigin="anonymous">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
</head>
<body>

  <header class="fw-bold bg-secondary">
    <span>Assignment5 - Spring Boot</span>
  </header>

  <div class="container-fluid">
    <div id="form-container" class="row p-4">

      <c:if test="${ loginMsg != null }">
        <div id="alert-box"
          class="mb-5 mx-8 mt-2 alert alert-danger alert-dismissible fade show"
          role="alert">
          ${ loginMsg }
          <button type="button" class="btn-close"
            data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
      </c:if>
      <form method="post" action="login"
        class="offset-md-3 offset-sm-2 form-inline col-sm-8 col-md-6">
        <div class="card text-center">
          <div class="card-header fw-bolder text-start">Login</div>
          <div class="card-body">
            <div class="form-group row pb-1 align-items-center">
              <label for="username"
                class="col-sm-3 col-md-3 col-lg-3 text-start col-form-label-sm"><span>Username:</span></label>
              <div class="col-sm-9 col-md-8 col-lg-5">
                <input type="text" id="username"
                  class="form-control form-control-sm" name="username"
                  required>
              </div>
            </div>
            <div class="form-group row align-items-center">
              <label for="pass"
                class="col-sm-3 col-md-3 col-lg-3 text-start col-form-label-sm"><span>Password:</span></label>
              <div class="col-sm-9 col-md-8 col-lg-5">
                <input id="pass" type="password"
                  class="form-control form-control-sm" name="pass"
                  required>
              </div>
            </div>
          </div>
          <div class="card-footer text-end">
            <button type="submit" class="btn-sm btn btn-secondary">Login&nbsp;>></button>
          </div>
        </div>
      </form>

    </div>
  </div>


  <footer class="fixed-bottom bg-secondary">
    <span>Copyright 2020-2021 by Fresher Training</span>
  </footer>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
    crossorigin="anonymous"></script>
  <script src="<c:url value="/resources/js/main.js" />"></script>
</body>
</html>
