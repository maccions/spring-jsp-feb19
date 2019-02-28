<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="shorcut icon" href="/res/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/res/favicon.ico" type="image/x-icon">
    <title>Document</title>
</head>
<body>
<h1>Hello Academy!!!</h1>
<p>Risultato: ${ris}</p>

<div>
    <%--<img src="${pageContext.request.ctx}/res/img/vr.jpg" />--%>
    <img src="${ctx}/res/img/vr.jpg" />
</div>

<!--
commento HTML
-->
<%-- commento JSP --%>

</body>
</html>