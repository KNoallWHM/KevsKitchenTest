<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head></head>
<body>
<c:if test="${!empty param.NONE} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Seasoning </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.seasonings}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.CINNAMON} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Seasoning </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.seasonings}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.PAPRIKA} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Seasoning </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.seasonings}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.TURMERIC} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Seasoning </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.seasonings}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.GINGER} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Seasoning </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.seasonings}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.NUTMEG} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Seasoning </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.seasonings}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.TARMORIND} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Seasoning </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.seasonings}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.CUMIN} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Seasoning </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.seasonings}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.OREGANO} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Seasoning </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.seasonings}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.CORDAMON} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Seasoning </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.seasonings}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.SALT} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Seasoning </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.seasonings}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.PEPPER} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Seasoning </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.seasonings}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.CLOVES} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Seasoning </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.seasonings}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.CHILI_POWDER} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Seasoning </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.seasonings}" /></td>
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