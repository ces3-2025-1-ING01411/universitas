<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/index.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Press+Start+2P&family=Sora:wght@100..800&display=swap" rel="stylesheet">
</head>
<body>
<%--
<%
    int x = 5;
    int y = 8;

    if (x < y) {
        %><h3>Suma: </h3><%= x + y %><%
    }
%>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
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
            <p class="press-start-2p-regular titleHeader"> // HELLO, WORLD !</p>
        </div>
    </div>
    <div class="mainBody">
        <p class="press-start-2p-regular textOptions" id="bootText">booting up...</p>
        <p class="press-start-2p-regular mainText accessGranted">> ACCESS GRANTED</p>
        <p class="press-start-2p-regular mainText connectingServer">> Connecting to server...</p>
        <p class="press-start-2p-regular mainText userRole">> User: Admin</p>
        <p class="press-start-2p-regular mainText status">> Status: Online</p>
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