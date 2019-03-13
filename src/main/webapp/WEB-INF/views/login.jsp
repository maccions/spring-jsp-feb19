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
            <div class="row justify-content-center">
                <div class="col-4">




                    <%-- versione ctx --%>
                    <%-- <form class="form-signin" method="post" action="${ctx}/login"> --%>
                        <%-- versione spring:url autocontext --%>
                     <form class="form-signin" method="post" action="<spring:url value="/login" />" >

                        <h2 class="form-signin-heading">Accesso</h2>

                        <c:if test="${param.error!=null}">
                            <div class="alert alert-danger">Dati non validi</div>
                        </c:if>

                        <p>
                            <label for="username" class="sr-only">Email</label>
                            <input type="text" id="username" name="username" class="form-control" placeholder="Email"
                                   required autofocus>
                        </p>
                        <p>
                            <label for="password" class="sr-only">Password</label>
                            <input type="password" id="password" name="password" class="form-control"
                                   placeholder="Password"
                                   required>
                        </p>
                        <button class="btn btn-lg btn-block btn-rosso" type="submit">ACCEDI</button>
                    </form>
                    <div class="text-center mt-4">Oppure <a href="${ctx}/registration">registrati</a> subito</div>

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
