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
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/index.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Press+Start+2P&family=Sora:wght@100..800&display=swap" rel="stylesheet">
</head>
<body>

<%--

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

<a href="index.jsp">Volver a Inicio</a>
--%>
<div class="container main1">
    <div class="mainHeader">
        <div class="containerHeader1">
            <a href="index.jsp">
                <div class="item1"></div>
            </a>
            <a href="materias.jsp">
                <div class="item2"></div>
            </a>
            <a href="docentes.jsp">
                <div class="item3"></div>
            </a>
        </div>
        <div class="containerHeader2">
            <p class="press-start-2p-regular titleHeader"> // MATERIAS !</p>
        </div>
    </div>
    <div class="mainBody">
        <p class="press-start-2p-regular textOptions" id="bootText">Algunas...</p>
        <p class="press-start-2p-regular mainText accessGranted">> CES3</p>
        <p class="press-start-2p-regular mainText connectingServer">> DPLM3</p>
        <p class="press-start-2p-regular mainText userRole">> BD2</p>
        <p class="press-start-2p-regular mainText status">> Profundización 1</p>
    </div>

</div>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        let textElement = document.getElementById("bootText");
        let text = textElement.textContent;
        textElement.innerHTML = "";

        text.split("").forEach((char, index) => {
            let span = document.createElement("span");
            span.textContent = char === " " ? "\u00A0" : char; // Mantener espacios
            span.style.animationDelay = `${index * 0.1}s`; // Retraso progresivo para la ola
            textElement.appendChild(span);
        });
    });
</script>

</body>
</html>
