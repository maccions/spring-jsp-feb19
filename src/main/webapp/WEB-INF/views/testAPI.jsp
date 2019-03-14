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
    <div class="page menu">

        <div class="container">
            <div class="top">
                <div id="result">

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


<script>
    const box = document.getElementById("result");
    var ctx = "${ctx}";

    function creaNodoMenu(piatto) {
        let piattoCont = document.createElement("div");
        let descrizione = document.createElement("p");
        let a_img = document.createElement("a"); 
        let div_img = document.createElement("div");
        let titolo = document.createElement("h3");
        let a_titolo = document.createElement("a");

        piattoCont.classList = "box clearfix"
        a_img.setAttribute("href", ctx+"/piatto?id="+piatto.id)
        div_img.classList.add("thumb")
        div_img.setAttribute("style","background-image: url('"+ctx+"/res/"+piatto.immagine+"');")
        a_titolo.setAttribute("href", ctx+"/piatto?id="+piatto.id)
        a_titolo.innerText=piatto.titolo
        descrizione.innerText = piatto.descrizione;




        a_img.appendChild(div_img);
        titolo.appendChild(a_titolo);        
        piattoCont.appendChild(a_img);
        piattoCont.appendChild(titolo);
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
