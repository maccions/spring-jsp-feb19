<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<%@ include file="parts/start.jsp" %>
<title>${titolo} - Menu</title>
<%@ include file="parts/css.jsp" %>
<%@ include file="parts/js_head.jsp" %>


<%@ include file="parts/middle.jsp" %>


<!-- navbar -->
<%@ include file="parts/navbar.jsp" %>


<!-- qui dentro il contenuto della pagina -->
<div class="content">

    <div class="page menu">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12 title">
                    <h1>Menu</h1>
                </div>
                <div class="col-lg-12">
                    <div class="top">
                        <c:forEach var="piatto" items="${piatti}">
                            <div class="box clearfix">
                                    <%--<img src="${ctx}/res/img/...." alt="">--%>
                                    <%--<img src="${piatto.image}" alt="anteprima">--%>
                                <a href="${ctx}/piatto?id=${piatto.id}">
                                    <div style="background-image: url('${ctx}/res/${piatto.imageURL}');" class="thumb"></div>
                                </a>
                                <h3><a href="${ctx}/piatto?id=${piatto.id}">${piatto.titolo}</a></h3>
                                <p>${piatto.descrizione}</p>
                            </div>
                        </c:forEach>
                    </div>
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
