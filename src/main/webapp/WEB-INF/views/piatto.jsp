<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<%@ include file="parts/start.jsp" %>
<title>${titolo} - ${piatto.titolo}</title>
<%@ include file="parts/css.jsp" %>
<%@ include file="parts/js_head.jsp" %>

<%@ include file="parts/middle.jsp" %>
<!-- navbar -->
<%@ include file="parts/navbar.jsp" %>

<!-- qui dentro il contenuto della pagina -->
<div class="content">


    <sec:authorize access="hasRole('ROLE_ADMIN')">

        <div class="row">
            <div class="col">

                <div class="admin-area btn-group btn-group-lg justify-content-center d-flex mt-4" role="toolbar"
                     aria-label="admin toolbar">
                    <a href="${ctx}/admin/piatto/edit?id=${piatto.id}" class="btn btn-outline-info">MODIFICA</a>
                    <!-- todo fare prompt di conferma -->
                    <button data-url="${ctx}/admin/piatto/delete?id=${piatto.id}" class="btn btn-outline-info"
                            onclick="conferma(this)">CANCELLA
                    </button>
                </div>

            </div>
        </div>
    </sec:authorize>


    <!-- recipe detail -->
    <div class="recipe-detail">
        <div class="container">
            <div class="row justify-content-center1">
                <div class="col-lg-12 text-center">
                    <%--<h4>insert date</h4>--%>
                    <h1>${piatto.titolo}</h1>
                    <div class="by"><i class="fa fa-user" aria-hidden="true"></i> Lorem Ipsum</div>
                </div>
                <!-- col sx -->
                <div class="col-lg-6">
                    <img src="${ctx}/res/${piatto.imageURL}" alt="piatto">


                    <div class="info">
                        <div class="row">
                            <div class="col-lg-4 col-sm-4">
                                <p>Serves:</p>
                                <p><strong><i class="fa fa-users" aria-hidden="true"></i> 4 people</strong>
                                </p>
                            </div>
                            <div class="col-lg-4 col-sm-4">
                                <p>Prep Time:</p>
                                <p><strong><i class="fa fa-clock-o" aria-hidden="true"></i> 30 min</strong>
                                </p>
                            </div>
                            <div class="col-lg-4 col-sm-4">
                                <p>Cooking:</p>
                                <p><strong><i class="fa fa-clock-o" aria-hidden="true"></i> 1 Hour</strong>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end col sx -->

                <!-- col dx -->
                <div class="col-lg-6">

                    <p>${piatto.descrizione}</p>

                    <div class="tag">
                        <a href="#">Chicken</a>
                        <a href="#">Lemon</a>
                        <a href="#">Sayur</a>
                    </div>

                </div>
                <!-- end col dx -->
            </div>


            <div class="ingredient-direction">
                <div class="row">
                    <div class="col-lg-4 col-sm-6">
                        <h3>Ingredients</h3>
                        <ul class="ingredients">
                            <li>
                                50g butter, softened
                            </li>
                            <li>
                                bunch fresh thyme or lemon thyme, leaves picked, stalks reserved, plus extra to serve
                            </li>

                            <li>
                                4 garlic cloves, 1 mashed, the other 3 left whole but squashed
                            </li>
                            <li>
                                2 lemons , halved
                            </li>

                            <li>
                                1 chicken, about 1,5 kg
                            </li>

                            <li>
                                2 carrots, roughly chopped
                            </li>

                            <li>
                                1 onion, roughly chopped
                            </li>
                            <li>
                                2 bay leaves
                            </li>
                            <li>
                                1 tbsp plain flour
                            </li>
                            <li>
                                250ml chicken stock
                            </li>
                            <li>
                                splash soy sauce (optional)
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-8 col-sm-6">
                        <h3>Directions</h3>
                        <ol class="directions">
                            <li>Heat oven to 200C/180C fan/gas 6. In a small bowl, mash the butter with one-third of the
                                thyme leaves, the mashed garlic and the juice of half a lemon. Mix everything together
                                with some seasoning and set aside.
                            </li>
                            <li>Use your hand to loosen the chicken skin away from the breast, then push most of the
                                butter mix into the gap. Rub the rest of the butter all over the outside of the chicken,
                                then stuff the cavity with the lemon halves, remaining thyme leaves and stalks, and the
                                garlic.
                            </li>
                            <li>Scatter the chopped carrot, onion and bay leaves over the base of a small roasting tin.
                                Sit the chicken on top, breast-side up, and roast on the middle shelf for 1 hr 30 mins,
                                basting with the buttery juices after about 40 mins. When the chicken is dark golden,
                                crispy-skinned and the juices run clear, remove from the oven and leave in the tin for 5
                                mins. Use a pair of tongs to pull the lemons, garlic and thyme out of the cavity and
                                into the tin. Lift the chicken up, letting any juices dribble into the tin, and transfer
                                the chicken to a serving platter to rest for at least another 15 mins.
                            </li>
                            <li>To make the gravy, squeeze the juice out of the cooked lemon halves and discard the
                                skins. Place the tin on a low heat, stir in flour and sizzle until light brown.
                                Gradually pour in the stock and cook for a few mins. If you like a darker gravy, add a
                                splash of soy sauce to the tin. Strain the gravy into a jug and serve with the chicken.
                            </li>
                        </ol>
                    </div>
                </div>
            </div>


        </div>
    </div><!-- end recipe detail -->


</div>
<!-- fine contenuto pagina -->


<!-- footer -->
<%@ include file="parts/footer.jsp" %>

<!-- JS -->
<%@ include file="parts/js.jsp" %>

<script>
    function conferma(el) {
        if (confirm("Vuoi cancellare questo elemento?")) {
            location.href = el.dataset.url
        }
    }
</script>


<%@ include file="parts/end.jsp" %>
