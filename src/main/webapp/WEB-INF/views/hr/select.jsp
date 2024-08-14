<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %><%--
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
    <div class="container" style="max-width: 640px;">
        <h2>개인별 근태 조회</h2>
        <form class="pt-3 pb-3 d-flex flex-column" method="post" action="/selectByMonth">
            <label>ID & Month</label>
            <div class="d-flex" style="gap:10px">
                <div class="flex-grow-1 d-flex" style="gap:10px">
                    <input placeholder="userId" type="text" class="form-control" id="userId" name="userId">
                    <input placeholder="month" type="text" class="form-control" id="month" name="month">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </form>
        <%  List list = (List) request.getAttribute("list");
            if (list == null) {
                list = new ArrayList();
            }
        %>
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
            <% for(Object item : list) {
                HashMap data = (HashMap) item;
            %>
            <tr>
                <td>
                    <%=data.get("userId")%>
                </td>
                <td>
                    <%=data.get("dept")%>
                </td>
                <td>
                    <%=data.get("name")%>
                </td>
                <td>
                    <%=data.get("status")%>
                </td>
                <td>
                    <%=data.get("date")%>
                </td>
            </tr>
            <%}%>
            </tbody>
        </table>
    </div>
</main>
</body>
</html>
