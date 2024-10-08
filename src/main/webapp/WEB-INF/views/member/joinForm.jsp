<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Please sign in</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>

<body>
<%@ include file="/WEB-INF/views/commons/header.jsp" %>

<form class="form-signin" method="post" action="/joinProc">
    <div class="container row">
        <div class="col-md-6 mx-auto">
            <h2 class="form-signin-heading">Join Form</h2>
            <p>
                <label for="username" class="sr-only">Username ID</label>
                <input type="text" id="username" name="USERNAME" class="form-control" placeholder="Username"
                       required="" autofocus="" value="test_01">
            </p>
            <p>
                <label for="password" class="sr-only">Password</label>
                <input type="password" id="password" name="password" class="form-control" placeholder="Password"
                       required="" value="1234">
            </p>
            <p>
                <label for="NAME" class="sr-only">NAME</label>
                <input type="NAME" id="NAME" name="NAME" class="form-control" placeholder="NAME" required=""
                       value="test_first">
            </p>
            <p>
                <label for="email" class="sr-only">email</label>
                <input type="email" id="email" name="EMAIL" class="form-control" placeholder="email" required=""
                       value="test_01@yoju.lab">
            </p>
            <p>
                <label for="auth" class="sr-only">Auth</label>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="auth" id="ROLE_ADMIN" value="ADMIN">
                <label class="form-check-label" for="ROLE_ADMIN">Admin</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="auth" id="SYSTEM_MANAGER" value="MANAGER">
                <label class="form-check-label" for="ROLE_MANAGER">Menager</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="auth" id="USER" value="MEMBER" checked>
                <label class="form-check-label" for="USER">Member</label>
            </div>
            </p>
            <select class="form-select" aria-label="Default select example" name="department_pk">
                <option selected >부서를 선택해 주세요</option>
                <option value="1">개발</option>
                <option value="2">영업</option>
                <option value="3">인사</option>
                <option value="4">기획</option>
            </select>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Join</button>
        </div>
    </div>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>