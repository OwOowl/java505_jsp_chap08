<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오전 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>form태그 파라미터 전체값 받기</title>

    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>
</head>
<body>
<table border="1">
    <tr>
        <th>요청 파라미터 이름</th>
        <th>요청 파라미터 값</th>
    </tr>
    <%
        request.setCharacterEncoding("UTF-8");

//        파라미터 이름을 열거형으로 전달받음
        Enumeration paramName = request.getParameterNames();

//        paramName 요소가 있으면 true, 없으면 false
        while(paramName.hasMoreElements()) {
//            paramName 요소를 반환
            String name = (String) paramName.nextElement();
            out.print("<tr><td>" + name + "</td>\n");
            String paramValue = request.getParameter(name);
            out.print("<td>" + paramValue + "</td></tr>\n");
        }
    %>
</table>
</body>
</html>
