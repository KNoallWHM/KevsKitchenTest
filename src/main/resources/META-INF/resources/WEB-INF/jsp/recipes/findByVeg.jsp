<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <h2>find by veg</h2>
</head>
<body>

<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>


<c:if test="${!empty param.} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> VEGGIE </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.veggies}" /></td>
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