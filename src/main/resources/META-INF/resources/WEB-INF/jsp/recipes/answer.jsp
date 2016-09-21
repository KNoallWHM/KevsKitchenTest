<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%--<body background="http://wallpapercave.com/wp/gB3sgTh.jpg">--%>

<head>
</head>
<body background="http://wallpapercave.com/wp/gB3sgTh.jpg">
<span style="color:Orange">Kev's Recipes</span>

    <c:if test="${basicIngredients.veggies == 'SPAGHETTI_SQUASH'}">
        <c:out value="${basicIngredients.findByVeg}" />

        <br>
        <c:choose>
            <c:when test="${basicIngredients.veggies == 'SPAGHETTI_SQUASH'}">
                <pre><code class="spaghetti_squash">
            </c:when>


        </c:choose>

        </code></pre>
    </c:if>


<br><br>
<form action="/quiz/nextQuestion" method="POST">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <input type="submit" value="Next Question" />
</form>
</body>
</html>