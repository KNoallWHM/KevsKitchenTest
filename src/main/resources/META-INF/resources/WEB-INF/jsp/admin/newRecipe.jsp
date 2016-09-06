<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add New Recipe</title>
    <%--<script type="text/javascript">--%>
        <%--function changeTypeDisplay () {--%>
            <%--var e = document.getElementById("questionType");--%>
            <%--var optionValue = e.options[e.selectedIndex].value;--%>
            <%--if(optionValue == 'MULTIPLE_CHOICE') {--%>
                <%--document.getElementById("type1").style.display = 'block';--%>
                <%--document.getElementById("type2").style.display = 'none';--%>
                <%--document.getElementById("type3").style.display = 'none';--%>
            <%--} else if(optionValue == 'TRUE_FALSE') {--%>
                <%--document.getElementById("type1").style.display = 'none';--%>
                <%--document.getElementById("type2").style.display = 'block';--%>
                <%--document.getElementById("type3").style.display = 'none';--%>
            <%--} else if(optionValue == 'CODE') {--%>
                <%--document.getElementById("type1").style.display = 'none';--%>
                <%--document.getElementById("type2").style.display = 'none';--%>
                <%--document.getElementById("type3").style.display = 'block';--%>
            <%--}--%>
        <%--}--%>
    <%--</script>--%>
</head>
<body>
<h1>Add New Recipe</h1>
<form:form id="newRecipeForm" commandName="basicIngredients" method="POST" action="/admin/saveNewRecipe">
    <form:label path="meat">Amount of Meat:</form:label>
    <form:select path="meat" id="meat">
        <form:options items="${Meat}" />
    </form:select>
    <br> <form:label path="veggies">Amount of Veggies:</form:label>
    <form:select path="veggies" id="veggies">
        <form:options items="${Veggies}" />
    </form:select>
    <br> <form:label path="fruits">Amount of Fruit:</form:label>
    <form:select path="fruits" id="fruits">
        <form:options items="${Fruits}" />
    </form:select>
    <br> <form:label path="fish">Amount of Fish:</form:label>
    <form:select path="fish" id="fish">
        <form:options items="${Fish}" />
    </form:select>
    <br> <form:label path="seasonings">Seasonings and Amount:</form:label>
    <form:select path="seasonings" id="seasonings">
        <form:options items="${Seasonings}" />
    </form:select>
    <br>
    <%--onchange="changeTypeDisplay();"--%>
    <form:label path="grains">Amount of Grains:</form:label>
    <form:select path="grains" id="grains" >
        <form:options items="${Grains}" />
    </form:select>
    <br>
   <%--<form:textarea path=""> </form:textarea>--%>
<textarea rows="10" cols="50"> insert directions</textarea>
    <br>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <input type="submit">
</form:form>
</body>
</html>