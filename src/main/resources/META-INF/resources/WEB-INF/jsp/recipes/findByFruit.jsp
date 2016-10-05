<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

</head>
<body>
<c:if test="${basicIngredients.fruit == 'NONE'} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Fruit </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.fruits}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${basicIngredients.fruit == 'APPLES'} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Fruit </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.fruits}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${basicIngredients.fruit == 'ORANGES'} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Fruit </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.fruits}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${basicIngredients.fruit == 'STRAWBERRIES'} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Fruit </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.fruits}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${basicIngredients.fruit == 'RASPBERRIES'} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Fruit </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.fruits}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${basicIngredients.fruit == 'WATERMELON'} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Fruit </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.fruits}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${basicIngredients.fruit == 'BLUEBERRIES'} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Fruit </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.fruits}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${basicIngredients.fruit == 'BLACKBERRIES'} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Fruit </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.fruits}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${basicIngredients.fruit == 'GRAPES'} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Fruit </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.fruits}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${basicIngredients.fruit == 'CRANBERRIES'} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Fruit </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.fruits}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${basicIngredients.fruit == 'PINEAPPLE'} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Fruit </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.fruits}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${basicIngredients.fruit == 'COCONUT'} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Fruit </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.fruits}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.MANGO} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Fruit </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.fruits}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.PEARS} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Fruit </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.fruits}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.PEACHES} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Fruit </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.fruits}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.CANTELOUPE} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Fruit </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.fruits}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.GRAPEFRUIT} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Fruit </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.fruits}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.BANANA} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Fruit </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.fruits}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.AVACADOS} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Fruit </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.fruits}" /></td>
            <th>|</th>
                <%--<td><c:out value="${basicIngredients.toppings}" /></td>--%>
                <%--<th>|</th>--%>
            <td><c:out value="${basicIngredients.directions}" /></td>
        </tr>
    </table>
</c:if>

<c:if test="${!empty param.KIWI} ">
    <table>
        <tr>
            <th> Ingredient Id </th>
            <th> | </th>
            <th> Name of Recipe </th>

            <th> Fruit </th>
            <th> | </th>
            <th> Directions </th>
        </tr>
        <c:forEach var="basicIngredients" items="${basicIngredients}"/>
        <tr>
            <td><a href="/admin/viewBasicIngredient?id=${basicIngredients.id}"><c:out value="${basicIngredients.id}" /></a></td>
            <th>|</th>
            <td><c:out value="${basicIngredients.nameOfRecipe}"/> </td>
            <th>|</th>
            <td><c:out value="${basicIngredients.fruits}" /></td>
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