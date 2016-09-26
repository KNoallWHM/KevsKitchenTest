<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

</head>
<body>
<c:if test="${!empty param.NONE} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Meat </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.meat}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.TURKEY} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Meat </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.meat}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.BEEF} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Meat </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.meat}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.PORK} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Meat </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.meat}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.CHICKEN} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Meat </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.meat}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.SAUSAGE} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Meat </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.meat}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.FRANKS} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Meat </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.meat}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.HAM} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Meat </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.meat}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<br>
<a href="/">HOME</a>

</body>
</html>