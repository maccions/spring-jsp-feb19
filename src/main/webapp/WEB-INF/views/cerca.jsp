<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<%@ include file="parts/start.jsp" %>
    <title>${titolo} - Cerca</title>
    <%@ include file="parts/css.jsp" %>
    <%@ include file="parts/js_head.jsp" %>


<%@ include file="parts/middle.jsp" %>


<!-- navbar -->
<%@ include file="parts/navbar.jsp" %>








<!-- qui dentro il contenuto della pagina  -->
<div class="content">
    <div class="page">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12 title text-center">
                    <h1>Risultati</h1>
                </div>
                <div class="col-lg-12">

                    <c:forEach var="piatto" items="${piatti}">
                        <div class="card">
                            <p class="card-title">${piatto.titolo}</p>
                            <p class="">${piatto.descrizione}</p>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- fine contenuto pagina -->






<!-- footer -->
<%@ include file="parts/footer.jsp" %>

<!-- JS -->
<%@ include file="parts/js.jsp" %>





<%@ include file="parts/end.jsp" %>
