<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Recipe Database</title>
</head>
<body>
<h1>View All Recipes</h1>
<br><br>
<table>
    <tr>
        <th> Ingredient Id </th>
        <th> | </th>
        <th> Name of Recipe </th>
        <th> | </th>
        <th> Meat </th>
        <th> | </th>
        <th> Veggies </th>
        <th> | </th>
        <th> Fruit </th>
        <th> | </th>
        <th> Fish </th>
        <th> | </th>
        <th> Seasonings </th>
        <th> | </th>
        <th> Grains </th>
        <th> | </th>
        <th> Dairy </th>
        <th> | </th>
        <th> Toppings </th>
        <th> | </th>
        <th> Directions </th>
    </tr>
    <c:forEach var="basicIngredients" items="${basicIngredients}">
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><textarea rows="1" cols="15"></textarea></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.meat}" /></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.fruits}" /></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.fish}" /></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.seasonings}" /></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.grains}" /></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.dairy}" /></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.toppings}" /></td>
            <th>|</th>
            <td><textarea rows="2" cols="15"></textarea> </td>


            <td><a href="/admin/deletebasicIngredient?id=${basicIngredients.id}">DELETE<c:out value="${basicIngredients.id}" /></a></td>

        </tr>
    </c:forEach>
</table

 <%--<br>--%>
<%--<table>--%>
    <%--<tr>--%>
        <%--<th>Cook Time/Ingredients/Directions </th>--%>
    <%--</tr><br>--%>

        <%--<tr>--%>
       <%--<TextArea rows="10" cols="30"></TextArea>--%>
        <%--</tr>--%>
<%--</table>--%>
<br><br>
<a href="/">HOME</a>
&nbsp;&nbsp;&nbsp;&nbsp;
<a href="/admin/inputRecipe">Input new Recipe</a>
||
<a href="/restData/getAllRecipes">Bulk Download Recipes</a>
||
<a href="/admin/uploadQuestions">Bulk Upload Recipes</a>

</body>
</html>