<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<%@ include file="parts/start.jsp" %>
<title>${titolo} - </title>
<%@ include file="parts/css.jsp" %>
<%@ include file="parts/js_head.jsp" %>

<%@ include file="parts/middle.jsp" %>
<!-- navbar -->
<%@ include file="parts/navbar.jsp" %>

<!-- qui dentro il contenuto della pagina -->
<div class="content">

    <div class="page">
        <div class="container">
            <h1>${statusCode} - ${messagge}</h1>
        </div>
    </div>

</div>
<!-- fine contenuto pagina -->


<!-- footer -->
<%@ include file="parts/footer.jsp" %>

<!-- JS -->
<%@ include file="parts/js.jsp" %>

<%@ include file="parts/end.jsp" %>
