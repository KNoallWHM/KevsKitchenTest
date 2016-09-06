<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Kevs Kitchen</title>

</head>
<body>

   <span style="color:deepskyblue;"> <h1 style="font-size:18px">WELCOME TO Kevs Kitchen</h1></span><br>


   <p4><span style="color:orange;">INSTRUCTIONS...input what you have</span> </p4>


    <form name="Recipe finder" method="POST" action="/quiz/searchRecipes">

        <span style="color: red;"> Type of Meat: <select name="meat"> <br>
            <c:forEach var="meat" items="${meats}">
                <option value="<c:out value="${meat}"/>"><c:out value="${meat}"/></option>
            </c:forEach>
        </span>
        </select><br><br>

        <span style="color: forestgreen;"> Type of Veggies: <select name="veggies">
            <c:forEach var="veggies" items="${vegetables}">
                <option value="<c:out value="${veggies}"/>"><c:out value="${veggies}"/></option>
            </c:forEach>
            </select>
            </span>
        </select><br><br>

        Types of Fruits: <select name="fruit">
            <c:forEach var="fruit" items="${fruits}">
                <option value="<c:out value="${fruit}"/>"><c:out value="${fruit}"/></option>
            </c:forEach>
        </select><br><br>

        Type of Fish: <select name="fish">
            <c:forEach var="fish" items="${fishies}">
                <option value="<c:out value="${fish}"/>"><c:out value="${fish}"/></option>
            </c:forEach>
        </select><br><br>

        Type of Seasonings: <select name="seasonings">
            <c:forEach var="seasonings" items="${seasonings}">
                <option value="<c:out value="${seasonings}"/>"><c:out value="${seasonings}"/></option>
            </c:forEach>
        </select><br><br>

        Type of Grain: <select name="grains">
            <c:forEach var="grains" items="${grain}">
                <option value="<c:out value="${grains}"/>"><c:out value="${grains}"/></option>
            </c:forEach>
        </select><br><br>

        Dairy Products: <select name="dairy">
            <c:forEach var="dairy" items="${dairy}">
                <option value="<c:out value="${dairy}"/>"><c:out value="${dairy}"/></option>
            </c:forEach>
        </select><br><br>


        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <input type="submit" value="View Recipes related to the food you have">


    </form>


    <br><br><br><br>
    <a href="/admin/"> #Click here to add Recipe
    </a>

</body>
</body>
</html>