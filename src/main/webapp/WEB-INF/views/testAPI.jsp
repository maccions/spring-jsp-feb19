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
            <div id="result">

            </div>
        </div>
    </div>
</div>
<!-- fine contenuto pagina -->


<!-- footer -->
<%@ include file="parts/footer.jsp" %>

<!-- JS -->
<%@ include file="parts/js.jsp" %>


<script>
    const box = document.getElementById("result");
    var ctx = "${ctx}";

    function creaNodoMenu(piatto) {
        let piattoCont = document.createElement("div");
        let descrizione = document.createElement("p");
        piattoCont.classList = "box clearfix";

        descrizione.innerText = piatto.descrizione;
        piattoCont.appendChild(descrizione);

        return piattoCont;
    }

    fetch(ctx + "/api/menu",{method:"GET"})
        .then(risp => risp.json())
        .then(res => {
            console.log(res);
            for (item of res){
                console.log(item.titolo)                
                box.appendChild( creaNodoMenu(item) )
            }

            /*
                let tits = new Array();
                res.map(e=>tits.push(e.titolo))
                box.innerHTML = tits;
             */
        })
    .catch(err=>console.error(err))


</script>


<%@ include file="parts/end.jsp" %>
