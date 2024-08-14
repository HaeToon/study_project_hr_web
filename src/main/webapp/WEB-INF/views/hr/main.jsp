<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
</head>
<body style="height: 100vh">
<main>
    <div class="container-sm" style="max-width: 640px;height:100vh;display:flex;align-items: center;">
        <ul class="list-group" style="width: 100%">
            <li class="list-group-item">
                <a href="/hrproject/insert">근태 생성</a>
            </li>
            <li class="list-group-item">
                <a href="/hrproject/delete">근태 삭제</a>
            </li>
            <li class="list-group-item">
                <a href="/hrproject/select">개인별 근태 조회</a>
            </li>
            <li class="list-group-item">
                <a href="/hrproject/dept">부서별 근태 조회</a>
            </li>
        </ul>
    </div>
</main>
</body>
</html>
