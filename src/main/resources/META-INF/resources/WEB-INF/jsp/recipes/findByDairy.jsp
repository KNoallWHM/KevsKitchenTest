<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>View All Dairy Recipes</title>
</head>
<body>
<table>
<br><br>
<c:if test="${!empty param.NONE} ">
    <table>
            <tr>
                <th> Ingredient Id </th>
                <th> | </th>
                <th> Name of Recipe </th>

                <th> Dairy </th>
                <th> | </th>
                <th> Directions </th>
            </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
            <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.dairy}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
            </tr>
    </table>
</c:if>

<c:if test="${!empty param.CHOCOLATE_MILK} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Dairy </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.dairy}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.MILK} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Dairy </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.dairy}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.BLOCK_CHEESE} ">
<table>
    <tr>
        <th> Ingredient Id </th>
        <th> | </th>
        <th> Name of Recipe </th>

        <th> Dairy </th>
        <th> | </th>
        <th> Directions </th>
    </tr>
    <c:forEach var="basicIngredients" items="${basicIngredients}"/>
    <tr>
        <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
        <th>|</th>
        <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
        <th>|</th>
        <td><c:out value="${basicIngredients.dairy}" /></td>
        <th>|</th>
            <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
            <%--<th>|</th>--%>
        <td><c:out value="${basicIngredients.directions}" /></td>
    </tr>
</table>
</c:if>

<c:if test="${!empty param.SHREDDER_CHEESE} ">
<table>
    <tr>
        <th> Ingredient Id </th>
        <th> | </th>
        <th> Name of Recipe </th>

        <th> Dairy </th>
        <th> | </th>
        <th> Directions </th>
    </tr>
    <c:forEach var="basicIngredients" items="${basicIngredients}"/>
    <tr>
        <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
        <th>|</th>
        <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
        <th>|</th>
        <td><c:out value="${basicIngredients.dairy}" /></td>
        <th>|</th>
            <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
            <%--<th>|</th>--%>
        <td><c:out value="${basicIngredients.directions}" /></td>
    </tr>
</table>
</c:if>

<c:if test="${!empty param.YOGURT} ">
<table>
    <tr>
        <th> Ingredient Id </th>
        <th> | </th>
        <th> Name of Recipe </th>

        <th> Dairy </th>
        <th> | </th>
        <th> Directions </th>
    </tr>
    <c:forEach var="basicIngredients" items="${basicIngredients}"/>
    <tr>
        <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
        <th>|</th>
        <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
        <th>|</th>
        <td><c:out value="${basicIngredients.dairy}" /></td>
        <th>|</th>
            <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
            <%--<th>|</th>--%>
        <td><c:out value="${basicIngredients.directions}" /></td>
    </tr>
</table>
</c:if>

<c:if test="${!empty param.COTTAGE_CHEESE} ">
<table>
    <tr>
        <th> Ingredient Id </th>
        <th> | </th>
        <th> Name of Recipe </th>

        <th> Dairy </th>
        <th> | </th>
        <th> Directions </th>
    </tr>
    <c:forEach var="basicIngredients" items="${basicIngredients}"/>
    <tr>
        <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
        <th>|</th>
        <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
        <th>|</th>
        <td><c:out value="${basicIngredients.dairy}" /></td>
        <th>|</th>
            <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
            <%--<th>|</th>--%>
        <td><c:out value="${basicIngredients.directions}" /></td>
    </tr>
</table>
</c:if>

<c:if test="${!empty param.CREAM_CHEESE} ">
<table>
    <tr>
        <th> Ingredient Id </th>
        <th> | </th>
        <th> Name of Recipe </th>

        <th> Dairy </th>
        <th> | </th>
        <th> Directions </th>
    </tr>
    <c:forEach var="basicIngredients" items="${basicIngredients}"/>
    <tr>
        <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
        <th>|</th>
        <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
        <th>|</th>
        <td><c:out value="${basicIngredients.dairy}" /></td>
        <th>|</th>
            <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
            <%--<th>|</th>--%>
        <td><c:out value="${basicIngredients.directions}" /></td>
    </tr>
</table>
</c:if>

<c:if test="${!empty param.SOUR_CREAM} ">
<table>
    <tr>
        <th> Ingredient Id </th>
        <th> | </th>
        <th> Name of Recipe </th>

        <th> Dairy </th>
        <th> | </th>
        <th> Directions </th>
    </tr>
    <c:forEach var="basicIngredients" items="${basicIngredients}"/>
    <tr>
        <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
        <th>|</th>
        <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
        <th>|</th>
        <td><c:out value="${basicIngredients.dairy}" /></td>
        <th>|</th>
            <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
            <%--<th>|</th>--%>
        <td><c:out value="${basicIngredients.directions}" /></td>
    </tr>
</table>
</c:if>

<c:if test="${!empty param.EGGS} ">
        <table>
    <tr>
        <th> Ingredient Id </th>
        <th> | </th>
        <th> Name of Recipe </th>

        <th> Dairy </th>
        <th> | </th>
        <th> Directions </th>
    </tr>
    <c:forEach var="basicIngredients" items="${basicIngredients}"/>
    <tr>
        <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
        <th>|</th>
        <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
        <th>|</th>
        <td><c:out value="${basicIngredients.dairy}" /></td>
        <th>|</th>
            <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
            <%--<th>|</th>--%>
        <td><c:out value="${basicIngredients.directions}" /></td>
    </tr>
        </table>
</c:if>
<br><br>
    </table>
<a href="/">HOME</a>
</body>

</html>
