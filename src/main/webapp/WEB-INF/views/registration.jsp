<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
            <div class="row">
                <div class="col-md-6 offset-md-3 bg-gray">



                    <h1 class="my-4">Registrazione</h1>
                    <form:form action="${ctx}/registration" modelAttribute="user" method="post">
                        <!-- area degli errori -->
                        <%--
                        <form:errors path="*" cssClass="text-danger text-center" element="div" /> --%>

                        <div class="form-group">
                            <label for="firstName" class="control-label">Nome</label>
                            <form:input path="firstName"  cssClass="form-control" id="firstName" required="required" />
                            <form:errors path="firstName" cssClass="text-danger" element="p" />
                        </div>

                        <div class="form-group">
                            <label for="lastName" class="control-label">Cognome</label>
                            <form:input path="lastName"  cssClass="form-control" id="lastName" required="required" />
                            <form:errors path="lastName" cssClass="text-danger" element="p" />
                        </div>

                        <div class="form-group">
                            <label for="email" class="control-label">Email</label>
                            <form:input type="email" path="email"  cssClass="form-control" id="email" required="required" />
                            <form:errors path="email" cssClass="text-danger" element="p" />
                        </div>


                        <div class="form-group">
                            <label for="password" class="control-label">Password</label>
                            <form:password path="password"  cssClass="form-control" id="password" required="required"/>
                            <form:errors path="password" cssClass="text-danger" element="p" />
                        </div>

                        <div class="form-group">
                            <label for="confirmPassword" class="control-label">Conferma Password</label>
                            <form:password path="confirmPassword"  cssClass="form-control" id="confirmPassword" required="required" />
                            <form:errors path="confirmPassword" cssClass="text-danger" element="p" />
                        </div>




                        <div class="form-group">
                            <div class="form-check">
                            <form:checkbox path="terms"  cssClass="form-check-input" id="terms" required="required" />
                            <label for="terms" class="form-check-label">Accetto i <a href="#">Termini e Privacy</a> per usare il servizio</label>

                            <form:errors path="terms" cssClass="text-danger" element="p" />
                            </div>
                        </div>




                        <div class="form-group">
                            <form:button type="submit" class="btn btn-primary">Registrati</form:button>
                            <div class="mt-2">Già registrato? <a href="${ctx}/login">Login</a></div>
                        </div>

                    </form:form>
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
