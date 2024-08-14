<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>
<body>
<!-- Menu -->
<%@ include file="/WEB-INF/views/commons/header.jsp" %>

<% List result= (List) request.getAttribute("result"); %>
<table>
    <thead>
    <tr>
        <th>회사이름</th>
        <th>자동차이름</th>
        <th>연식</th>
        <th>옵션개수</th>
    </tr>
    </thead>
    <tbody id="carTableBody">
    <%
        for (Object object : result) {
            HashMap record = (HashMap) object;
    %>
    <tr>
        <td>
            <%= record.get("회사이름") %>
        </td>
        <td>
            <a href=""><%= record.get("자동차이름") %> <a/>
        </td>
        <td>
            <%= record.get("연식") %>
        </td>
        <td>
            <%= record.get("옵션갯수") %>
        </td>
    </tr>
    <% } %>
    <!-- Empty -->
    </tbody>
</table>
<!-- Footer -->
<%@ include file="/WEB-INF/views/commons/footer.jsp" %>
</body>
</html>
