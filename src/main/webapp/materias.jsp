<%--
  Created by IntelliJ IDEA.
  User: YuriAlejandraMonroyB
  Date: 19/02/2025
  Time: 7:25 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Materias</title>
</head>
<body>

<h1>Materias</h1>
<ul>
    <%
        String[] materias = new String[3];
        materias[0] = "CES3";
        materias[1] = "DPLM4";
        materias[2] = "BD2";
        for (int i = 0; i < materias.length; i++) {
            %> <li> <%= materias[i] %> </li> <%
        }
    %>
</ul>
</body>
</html>
