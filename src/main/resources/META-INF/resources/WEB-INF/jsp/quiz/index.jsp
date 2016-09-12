<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Kevs Kitchen</title>
    <link type="text/css" rel="stylesheet" href="/css/homepage.css"/>

</head>
<body>

   <span style="color:deepskyblue;"> <h1 style="font-size:18px">WELCOME TO Kevs Kitchen</h1></span><br>


   <p><span style="color:orange;">INSTRUCTIONS...input what you have</span> </p>
   <p><span style="color:deepskyblue;"> Hold down the Ctrl (windows) / Command (Mac) button to select multiple options.</span></p>


    <form name="Recipe finder" method="POST" action="/quiz/searchRecipes">


        <span style="color: red;"> Type of Meat:
            <select name="meat" multiple> <br>
            <c:forEach var="meat" items="${meats}">
                <option value="<c:out value="${meat}"/>"><c:out value="${meat}"/></option>

            </c:forEach>
            </select>
            </span>


        <span style="color: forestgreen;"> Type of Veggies:
            <select name="veggies" multiple>
            <c:forEach var="veggies" items="${vegetables}">
                <option value="<c:out value="${veggies}"/>"><c:out value="${veggies}"/></option>
            </c:forEach>
            </select>

            </span><br><br>

        <span style="color:purple"> Types of Fruits:
        <select name="fruit" multiple >
            <c:forEach var="fruit" items="${fruits}">
                <option value="<c:out value="${fruit}"/>"><c:out value="${fruit}"/></option>
            </c:forEach>
            </select>
        </span>

        <span style="color:deepskyblue"> Type of Fish:
        <select name="fish" multiple>
            <c:forEach var="fish" items="${fishies}">
                <option value="<c:out value="${fish}"/>"><c:out value="${fish}"/></option>
            </c:forEach>
        </select>
            </span><br><br>


        <span style="color:lightseagreen"> Type of Seasonings:
        <select name="seasonings" multiple>
            <c:forEach var="seasonings" items="${seasonings}">
                <option value="<c:out value="${seasonings}"/>"><c:out value="${seasonings}"/></option>
            </c:forEach>
        </select>
        </span>

        <span style="color:sandybrown"> Type of Grain:
        <select name="grains" multiple>
            <c:forEach var="grains" items="${grain}">
                <option value="<c:out value="${grains}"/>"><c:out value="${grains}"/></option>
            </c:forEach>
        </select>
            </span><br><br>

        <span style="color:cornflowerblue"> Dairy Products:
        <select name="dairy" multiple>
            <c:forEach var="dairy" items="${dairy}">
                <option value="<c:out value="${dairy}"/>"><c:out value="${dairy}"/></option>
            </c:forEach>
        </select>
            </span><br><br>


        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <input type="submit" value="View Recipes related to the food you have">


    </form>


    <br><br><br><br>
    <a href="/admin/"> #Click here to add Recipe
    </a>

</body>
</body>
</html>