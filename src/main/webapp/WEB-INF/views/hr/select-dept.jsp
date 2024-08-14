<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.math.BigDecimal" %>
<html>
<head>
    <title>Dept</title>
</head>
<body>
<form action="/hrproject/dept" method="POST">
    <label>부서명</label>
    <input type="text" name="DEPARTMENT_NAME">
    <label>년월</label>
    <input type="text" name="WORKDATE">
    <button>search</button>
</form>
<div>
    <h1></h1>
    <% List result= (List) request.getAttribute("result"); %>
    <table>
        <thead>
        <tr>
            <th>직원ID</th>
            <th>이름</th>
            <th>출근율</th>
            <th>출근</th>
            <th>결근</th>
            <th>휴가</th>
        </tr>
        </thead>
        <tbody id="carTableBody">
        <%
            for (Object object : result) {
                HashMap record = (HashMap) object;
        %>
        <tr>
            <td>
                <%= record.get("직원ID") %>
            </td>
            <td>
                <%= record.get("이름") %>
            </td>
            <td>
                <%
                    // 출근일수를 BigDecimal로 가져오기
                    BigDecimal 출근일수 = (BigDecimal) record.get("출근일수");

                    // BigDecimal을 double로 변환
                    double 출근일수Double = 출근일수 != null ? 출근일수.doubleValue() : 0.0;

                    // 백분율 계산
                    double 백분율 = 출근일수Double * 100.0 / 24;

                    // 결과를 소수점 두 자리까지 포맷
                    String 포맷된백분율 = String.format("%.2f%%", 백분율);
                %>
                <%= 포맷된백분율 %>
            </td>
            <td>
                <%= record.get("출근일수") %>
            </td>
            <td>
                <%= record.get("휴가일수") %>
            </td>
            <td>
                <%= record.get("결근일수") %>
            </td>
        </tr>
        <% } %>
        <!-- Empty -->
        </tbody>
    </table>
</div>
</body>
</html>
