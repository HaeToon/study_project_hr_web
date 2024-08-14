<%--
  Created by IntelliJ IDEA.
  User: jhta1
  Date: 2024-08-14
  Time: 오후 2:42
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
    <title>Select</title>
</head>
<body>
<main style="height: 100vh;display: flex;justify-content: center;align-items: center">
    <div class="container" style="max-width: 640px">
        <h2>개인별 근태 조회</h2>
        <form class="pt-3 pb-3 d-flex flex-column">
            <label>ID</label>
            <div class="d-flex" style="gap:10px">
                <div class="flex-grow-1">
                    <input type="text" class="form-control" id="userId">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </form>
        <table class="table">
            <thead>
            <tr>

                <th scope="col">사용자 ID</th>
                <th scope="col">부서</th>
                <th scope="col">이름</th>
                <th scope="col">근태</th>
                <th scope="col">날짜</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Mark</td>
                <td>관리</td>
                <td>Otto</td>
                <td>@mdo</td>
                <th scope="col">2024-01-27</th>
            </tr>
            <tr>
                <th scope="row">2</th>
                <td>Jacob</td>
                <td>관리</td>
                <td>Thornton</td>
                <td>@fat</td>
                <th scope="col">2024-02-09</th>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td>Larry</td>
                <td>관리</td>
                <td>the Bird</td>
                <td>@twitter</td>
                <th scope="col">2024-09-11</th>
            </tr>
            </tbody>
        </table>
    </div>
</main>
</body>
</html>
