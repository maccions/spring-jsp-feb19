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




    function logga(){


        let form = new FormData(document.getElementById("loginForm"))


/*
        let user = $("#inlineFormInputGroupUsername").val();
        let pwd =  document.getElementById("inlineFormInputGroupPassword").value;

        let body = new URLSearchParams();
        body.append("username", user);
        body.append("password", pwd);
*/

        var myHeaders = new Headers();
        myHeaders.append("Content-Type", "application/x-www-form-urlencoded");

        return fetch(ctx+"/login",{method:"POST", body: form})


    }





    function caricaMenu(){

    var myHeaders = new Headers();

    //myHeaders.append("Content-Type", "text/plain");
    //The contents can be queried and retrieved:
    //console.log(myHeaders.has("Set-Cookie")); 
    //myHeaders.set("Content-Type", "text/html");

    fetch(ctx + "/api/menu",{method:"GET", headers: myHeaders, redirect:"error"})
        .then(risp => {
            console.log("risp", risp)
            return risp.json()
        })
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
    .catch(err=>{
        console.error("Errore: ",err)
        $("#loginModal").modal('show');
        //logga().then(risp=>caricaMenu()).catch(err=>console.error("Errore di login", err));
    })

    }


    caricaMenu();

    //document-ready, al caricamento del dom
    $(function(){
        $("#btn-login").click(function(){
            logga()
            .then(risp=>{
                //console.log(risp.status);
                //console.log(risp.statusText);
                //console.log(risp.type);
                //console.log(risp.url);
                //console.log(risp.headers)
                //if (risp.headers.has("X-Frame-Options") && risp.headers.get("X-Frame-Options")){
                if(risp.url.indexOf(ctx+"/login")>=0){
                    alert("Credenziali non valide");
                }else{
                    $("#loginModal").modal('hide');
                    caricaMenu()
                }
            })
            .catch(err=>{
                alert("Dati non validi");
            });
        });
        
    });


</script>




<!-- Modal -->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Login</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              
              
              <div class="container">
              
              <form class="" id="loginForm">
                
                
             
                          
                
                
                <div class="row form-group ">
                  <div class="col-xs-12 my-1">
                  <label class="sr-only" for="inlineFormInputGroupUsername">Username</label>
                  <div class="input-group ">
                    <div class="input-group-prepend ">
                      <div class="input-group-text"><i class="fas fa-user-astronaut"></i></div>
                    </div>
                    <input type="text" class="form-control  " id="inlineFormInputGroupUsername" placeholder="Username" name="username">
                  </div>
                </div>
                  </div>
                  
                  <div class="row form-group">
                  <div class="col-xs-12 my-1">
                  <label class="sr-only" for="inlineFormInputGroupPassword">Password</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <div class="input-group-text"><i class="fas fa-sun"></i></div>
                    </div>
                    <input type="password" class="form-control" id="inlineFormInputGroupPassword" placeholder="Password" name="password">
                  </div>
                </div>
                  </div>
                  
                  <div class="row form-group">
                    <div class="col-xs-12 my-1">
            <div class="form-check">
              <input class="form-check-input" type="checkbox" id="autoSizingCheck2">
              <label class="form-check-label" for="autoSizingCheck2">
                Remember me
              </label>
            </div>
          </div>
                  </div>
          
                
              </form>
                </div>
              
              
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-success" id="btn-login">Enter</button>
            </div>
          </div>
        </div>
      </div>





<%@ include file="parts/end.jsp" %>
