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
    </tr>
    <c:forEach var="basicIngredients" items="${basicIngredients}">
        <tr>
            <td><a href="/admin/viewIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th> | </th>
            <td><c:out value="${basicIngredients.meat}" /></td>
            <th> | </th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th> | </th>
            <td><c:out value="${basicIngredients.fruits}" /></td>
            <th> | </th>
            <td><c:out value="${basicIngredients.fish}" /></td>
            <th> | </th>
            <td><c:out value="${basicIngredients.seasonings}" /></td>
            <th> | </th>
            <td><c:out value="${basicIngredients.grains}" /></td>
            <th> | </th>
            <td><c:out value="${basicIngredients.dairy}" /></td>
            <th> | </th>
            <%--<td>--%>
                <%--<c:if test="${basicIngredients.questionType == 'MULTIPLE_CHOICE'}">--%>
                    <%--<c:out value="${basicIngredients.correctMultipleChoiceAnswer}" />--%>
                <%--</c:if>--%>
                <%--<c:if test="${basicIngredients.questionType == 'TRUE_FALSE'}">--%>
                    <%--<c:out value="${basicIngredients.trueOrFalse}" />--%>
                <%--</c:if>--%>
                <%--<c:if test="${basicIngredients.questionType == 'CODE'}">--%>
                    <%--<c:forEach var="codeLine" items="${basicIngredients.codeLines}">--%>
                        <%--<c:if test="${not empty codeLine}">--%>
                            <%--<c:out value="${codeLine}"/><br>--%>
                        <%--</c:if>--%>
                    <%--</c:forEach>--%>
                <%--</c:if>--%>

            <%--</td>--%>

            <td><a href="/admin/deleteRecipe?id=${basicIngredients.id}">DELETE<c:out value="${basicIngredients.id}" /></a></td>

        </tr>
    </c:forEach>
</table

    <%--<br>--%>
    <%--<br>--%>
    <%--<br>--%>
<%--<table>--%>

<%--<tr>--%>
    <%--<th> recipe Id</th>--%>
    <%--<th> | </th>--%>
    <%--<th> Cook time </th>--%>
    <%--<th> | </th>--%>
    <%--<th> Ingredients </th>--%>
    <%--<th> | </th>--%>
    <%--<th> difficulty </th>--%>
    <%--<th> | </th>--%>
<%--</tr>--%>
    <%--<c:forEach var="stepByStep" items="${stepByStep}">--%>

    <%--<tr>--%>
        <%--<td><a href="/admin/viewIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>--%>
        <%--<th> | </th>--%>
        <%--<td><c:out value="${stepByStep.cooktime}" /></td>--%>
        <%--<th> | </th>--%>
        <%--<td><c:out value="${stepByStep.ingredients}" /></td>--%>
        <%--<th> | </th>--%>
        <%--<td><c:out value="${stepByStep.difficulty}" /></td>--%>


    <%--</tr>--%>
    <%--</c:forEach>--%>


</table>
<br><br>
<a href="/">HOME</a>
&nbsp;&nbsp;&nbsp;&nbsp;
<a href="/admin/inputRecipe">Input new Recipe</a>
||
<a href="/restData/getAllRecipes">Bulk Download Recipes</a>
||
<a href="/admin/uploadQuestions">Bulk Upload Recipes</a>

</body>
</body>
</html>