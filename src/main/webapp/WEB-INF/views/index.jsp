<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<%@ include file="parts/start.jsp" %>
<title>${titolo}</title>
<%@ include file="parts/css.jsp" %>
<%@ include file="parts/js_head.jsp" %>


<%@ include file="parts/middle.jsp" %>


<!-- navbar -->
<%@ include file="parts/navbar.jsp" %>


<!-- qui dentro il contenuto della pagina -->
<div class="content">


    <div class="page home">
        <div class="container">
            <div class="row">
                <div class="col title text-center">
                    <h1>Steaks & Chops</h1>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col text-center">
                    <img src="https://cache.marriott.com/marriottassets/marriott/LONGH/longh-steakhouse-0100-hor-feat.jpg"
                         alt="locale" class="img-fluid mb-4">
                </div>
            </div>
        </div>


        <c:if test="${pasti >=3}">

            <!-- Top Recipes -->
            <div class="top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4">
                            <h5><i class="fa fa-utensils" aria-hidden="true"></i> Top Breakfast</h5>
                            <div class="box clearfix">
                                <a href="${ctx}/piatto?id=${colaz.id}">
                                    <div style="background-image: url('${ctx}/res/${colaz.imageURL}');"
                                         class="thumb"></div>
                                    <!--<img src="${colaz.image}" alt="">-->
                                </a>
                                <h3><a href="${ctx}/piatto?id=${colaz.id}">${colaz.titolo}</a></h3>
                                <p>${colaz.descrizione}</p>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <h5><i class="fa fa-utensils" aria-hidden="true"></i> Top Lunch</h5>
                            <div class="box clearfix">
                                <a href="${ctx}/piatto?id=${pranzo.id}">
                                    <div style="background-image: url('${ctx}/res/${pranzo.imageURL}');"
                                         class="thumb"></div>
                                        <%--<img src="${pranzo.image}" alt="">--%>
                                </a>
                                <h3><a href="${ctx}/piatto?id=${pranzo.id}">${pranzo.titolo}</a></h3>
                                <p>${pranzo.descrizione}</p>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <h5><i class="fa fa-utensils" aria-hidden="true"></i> Top Dinner</h5>
                            <div class="box clearfix">
                                <a href="${ctx}/piatto?id=${cena.id}">
                                    <div style="background-image: url('${ctx}/res/${cena.imageURL}');"
                                         class="thumb"></div>
                                        <%--<img src="${cena.image}" alt="">--%>
                                </a>
                                <h3><a href="${ctx}/piatto?id=${cena.id}">${cena.titolo}</a></h3>
                                <p>${cena.descrizione}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:if>


    </div>


</div>
<!-- fine contenuto pagina -->


<!-- footer -->
<%@ include file="parts/footer.jsp" %>

<!-- JS -->
<%@ include file="parts/js.jsp" %>


<%@ include file="parts/end.jsp" %>
