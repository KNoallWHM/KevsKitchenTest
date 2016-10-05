<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Kevs Kitchen</title>
    <link type="text/css" rel="stylesheet" href="/css/homepage.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
<%--<div class="white-out"></div>--%>
<%--<div class="clear-float"></div>--%>
<%--<div class="form-div">--%>
<br>
<br>
<br>
<span style="color:navajowhite;"> <p style="font-size:18px">WELCOME TO Kevs Kitchen</p></span><br>
<p><span style="color:navajowhite;">INSTRUCTIONS...input what you have</span> </p>
<p><span style="color:navajowhite;">select a main Ingredients from a category</span></p>
    <br>

<%--<span class="form-span">--%>
<form name="Recipe finder" method="POST" action="/recipes/findBy">


       <p> <span style="color: white;"> Type of Meat:
            <select name="meat"> <br>
            <c:forEach var="meat" items="${meats}">
                <option value="<c:out value="${meat}"/>"><c:out value="${meat}"/></option>

            </c:forEach>
            </select>
            </span>
           <br>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <input type="submit" value="Find by..." onclick="location.href='/recipes/findByMeat';">
</form>
<%----%>
<form name="Recipe finder" method="POST" action="/recipes/findByVeg">
</p>
    <p>

        <span style="color: white;"> Type of Veggies:
            <select name="veggies">
            <c:forEach var="veggies" items="${vegetables}">
                <option value="<c:out value="${veggies}"/>"><c:out value="${veggies}"/></option>
            </c:forEach>
            </select>

            </span>
           <br>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <input type="submit" value="Find by..." onclick="location.href='/recipes/findByVeg';">
</form>
<%----%>
<form name="Recipe finder" method="POST" action="/recipes/findByFruit">
</p>
    <p>
        <span style="color:white"> Types of Fruits:
            <select name="fruit" >
                <c:forEach var="fruit" items="${fruits}">
                    <option value="<c:out value="${fruit}"/>"><c:out value="${fruit}"/></option>
                </c:forEach>
            </select>
        </span>
           <br>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <input type="submit" value="Find by..." onclick="location.href='/recipes/findByFruits';">
</form>
<%----%>
<form name="Recipe finder" method="POST" action="/recipes/findByFish">
</p>
    <p>

        <span style="color:white"> Type of Fish:
            <select name="fish">
                <c:forEach var="fish" items="${fishies}">
                    <option value="<c:out value="${fish}"/>"><c:out value="${fish}"/></option>
                </c:forEach>
            </select>
        </span>
           <br>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <input type="submit" value="Find by..." onclick="location.href='/recipes/findByFish';">
</form>
<%----%>
<form name="Recipe finder" method="POST" action="/recipes/findBySeasoning">
</p>
    <p>

        <span style="color:white"> Type of Seasonings:
        <select name="seasonings">
            <c:forEach var="seasonings" items="${seasonings}">
                <option value="<c:out value="${seasonings}"/>"><c:out value="${seasonings}"/></option>
            </c:forEach>
        </select>
        </span><br>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <input type="submit" value="Find by..." onclick="location.href='/recipes/findBySeasoning';">
</form>

<form name="Recipe finder" method="POST" action="/recipes/findByGrain">
        </p>
<p>
        <span style="color:white"> Type of Grain:
        <select name="grains">
            <c:forEach var="grains" items="${grain}">
                <option value="<c:out value="${grains}"/>"><c:out value="${grains}"/></option>
            </c:forEach>
        </select>
            </span>
           <br>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <input type="submit" value="Find by..." onclick="location.href='/recipes/findByGrain';">
</form>

<form name="Recipe finder" method="POST" action="/recipes/findByDairy">
</p>
    <p>
        <span style="color:white"> Dairy Products:
        <select name="dairy">
            <c:forEach var="dairy" items="${dairy}">
                <option value="<c:out value="${dairy}"/>"><c:out value="${dairy}"/></option>
            </c:forEach>
        </select>
            </span>

    <br>


    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <input type="submit" value="Find by..."
           onclick="location.href='/recipes/error';">

</p>
</form>
    <%--</span>--%>
    </div>
<br>
<br>


</body>

<a href="/admin/"> #Click here to add Recipe
</a>

</html>