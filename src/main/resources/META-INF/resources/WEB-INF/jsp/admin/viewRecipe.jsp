<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
<form name="viewRecipe"  method="POST" action="/admin/saveEditedRecipe">

    <p>Please Input one of the fallowing in each category as an</p><br>
    <p>ID/main Ingredients for your recipe, Please Use <b>CAPS</b></p><br>
    <p>If you do not have any of these Just type <b>NONE</b></p>
    <p>HAPPY COOKING :) </p>
    <br>
    Type of Meat:<br>
    <input type="text" style="background-color: orange " name="meat" value="NONE">
    <br>
    <p> TURKEY, BEEF, PORK, CHICKEN, SAUSAGE, FRANKS, HAM</p>
    <br>
    <input type="text" name="veggies" style="background-color: orange " value="NONE">
    <br>
    <p>ONIONS, TOMATOES, CHEERY_TOMATOES, POTATOES, GARLIC,</p>
    <p>GREEN PEPPERS, BELL PEPPERS, BANANA PEPPERS, SUMMER SQUASH,</p>
    <p>SPAGHETTI SQUASH, BUTTERNUT SQUASH, PUMPKIN, BROCCOLI, BEANS,</p>
    <p>GREEN BEANS, CARROTS, CORN, ASPEARAGUS, BRUSSEL SPROUTS, ZUCCINI,</p>
    <p>LETTUCE, BEETS, PEAS, MUSHROOMS, SWEET POTATOES</p>
    <br><br>
    <input type="text" name="fruits" style="background-color: orange " value="NONE">
    <br>
    <p>APPLES, ORANGES, STRAWBERRIES, RASPBERRIES, WATERMELON, AVACADOS,</p>
    <p>BLUEBERRIES, BLACKBERRIES, GRAPES, CRANBERRIES, PINEAPPLE, KIWI</p>
    <p>COCONUT, MANGO, PEARS, PEACHES, CANTELOUPE, GRAPEFRUIT, BANANA</p>
    <br><br>

    <input type="text" name="fish" style="background-color: orange " value="NONE">
    <br>
    <p>TUNA, SALMON, SQUID, OCTOPUS, CRAB, COD, TROUT, HALIBUT </p>
    <br><br>

    <input type="text" name="seasonings" style="background-color: orange " value="NONE">
    <br>
    <p> CINNAMON, PAPRIKA, TURMERIC, GINGER, NUTMEG, TARMORIND,</p>
    <p>OREGANO, CORDAMON, SALT, PEPPER, CLOVES, CHILI POWDER, CUMIN</p>
    <br>
    <input type="text" name="grains" style="background-color: orange " value="NONE">
    <br>

    <p>SPAGHETTI, TORTELLINI, SHELL, MACARONI, LASAGNA, PENNE, LINGUINI,</p>
    <p>FORFALLI, ANGEL HAIR, WHITE BREAD, WHEAT BREAD, RYE, SOUR DOUGH, </p>
    <p>CORN BREAD, WHITE RICE, BROWN RICE, JASMINE, WHITE FLOUR, WHEAT FLOUR,</p>
    <p>COCONUT FLOUR, WHITE TORTILLA, WHEAT TORTILLA, CORN TORTILLA, OATS</p>
    <br>
    <input type="text" name="dairy" style="background-color: orange "value="NONE">
    <br>
    <p>CHOCOLATE_MILK, MILK, BLOCK_CHEESE, SHREDDED_CHEESE, YOGURT,</p>
    <p>COTTAGE_CHEESE, CREAM_CHEESE, SOUR_CREAM, EGGS</p>
    <br>

    Name of Recipe: <input type="text" style="background-color: cornflowerblue " name="nameOfRecipe"value="NONE">
    <br>
    <%--Directions for Recipe:<input type="text" style="background-color: cornflowerblue " name="directions"value="NONE"><br>--%>
<%--<div>--%>
    <%--<form:label path="directions">directions:</form:label>--%>
    <%--<br>--%>
    <%--Cook time: <form:input path="directions[0]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--<form:input path="directions[1]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--Ingredients: <form:input path="directions[2]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--<form:input path="directions[3]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--<form:input path="directions[4]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--<form:input path="directions[5]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--<form:input path="directions[6]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--<form:input path="directions[7]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--<form:input path="directions[8]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--<form:input path="directions[9]" maxlength="255" size="100" />--%>
    <%--<br> <form:label path="directions">directions:</form:label>--%>
    <%--<br>--%>
    <%--Cook time: <form:input path="directions[10]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--<form:input path="directions[11]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--Ingredients: <form:input path="directions[12]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--<form:input path="directions[13]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--<form:input path="directions[14]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--<form:input path="directions[15]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--Directions: <form:input path="directions[16]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--<form:input path="directions[17]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--<form:input path="directions[18]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--<form:input path="directions[19]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--<form:input path="directions[15]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--<form:input path="directions[16]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--<form:input path="directions[17]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--<form:input path="directions[18]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--<form:input path="directions[19]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--<form:input path="directions[20]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--<form:input path="directions[21]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--<form:input path="directions[22]" maxlength="255" size="100" />--%>
    <%--<br>--%>
    <%--<form:input path="directions[23]" maxlength="255" size="100" />--%>
    <%--<br>--%>
<%--</div>--%>
    <div class="form-group">
        <label for="comment">Comment:</label>
        <textarea class="form-control" rows="5" id="comment"></textarea>
    </div>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <input type="submit">

</form>
</body>
<script type="text/javascript">
    changeTypeDisplay();
</script>
</html>