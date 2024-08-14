<%--
  Created by IntelliJ IDEA.
  User: jhta
  Date: 2024-08-14
  Time: 오전 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <title>Insert</title>
</head>
<body>
<main style="height: 100vh;display: flex;justify-content: center;align-items: center">
    <div class="container" style="max-width: 640px">
        <h2>근태 생성</h2>
        <form class="pt-3 pb-3">
            <div class="mb-3">
                <label for="userId" class="form-label">ID</label>
                <input type="text" class="form-control" id="userId">
            </div>
            <div class="mb-3">
                <label for="date" class="form-label">날짜</label>
                <input type="date" class="form-control" id="date">
            </div>
            <div class="mb-3">
                <label for="status" class="form-label">날짜</label>
                <select class="form-select" name="status" id="status">
                    <option value="1">출근</option>
                    <option value="2">결근</option>
                    <option value="3">휴가</option>
                </select>
            </div>
            <div class="d-flex justify-content-between">
                <a href="/hrproject/home" class="btn btn-secondary">목록으로</a>
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </form>
    </div>
</main>
</body>
</html>
