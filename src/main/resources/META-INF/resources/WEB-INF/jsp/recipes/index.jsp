<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
    <%--<title>Kevs Kitchen</title>--%>
    <%--<link type="text/css" rel="stylesheet" href="/css/homepage.css"/>--%>

<%--</head>--%>
<%--<body>--%>

<%--<span style="color:deepskyblue;"> <p style="font-size:18px">WELCOME TO Kevs Kitchen</p></span><br>--%>
   <%--<p><span style="color:orange;">INSTRUCTIONS...input what you have</span> </p>--%>
   <%--<p><span style="color:deepskyblue;">select the main Ingredients from each category</span></p>--%>


    <%--<form name="Recipe finder" method="POST" action="/recipes/findByMeat">--%>


        <%--<span style="color: red;"> Type of Meat:--%>
            <%--<select name="meat"> <br>--%>
            <%--<c:forEach var="meat" items="${meats}">--%>
                <%--<option value="<c:out value="${meat}"/>"><c:out value="${meat}"/></option>--%>

            <%--</c:forEach>--%>
            <%--</select>--%>
            <%--</span>--%>
        <%--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />--%>
        <%--<input type="submit" value="Find by..." onclick="location.href='/recipes/findByMeat';">--%>
    <%--</form>--%>

   <%--<form name="Recipe finder" method="POST" action="/recipes/findByVeg">--%>


        <%--<span style="color: forestgreen;"> Type of Veggies:--%>
            <%--<select name="veggies">--%>
            <%--<c:forEach var="veggies" items="${vegetables}">--%>
                <%--<option value="<c:out value="${veggies}"/>"><c:out value="${veggies}"/></option>--%>
            <%--</c:forEach>--%>
            <%--</select>--%>

            <%--</span><br>--%>
       <%--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />--%>
       <%--<input type="submit" value="Find by..." onclick="location.href='/recipes/findByVeg';">--%>
   <%--</form>--%>

   <%--<form name="Recipe finder" method="POST" action="/recipes/findByFruit">--%>

        <%--<span style="color:purple"> Types of Fruits:--%>
            <%--<select name="fruit" >--%>
                <%--<c:forEach var="fruit" items="${fruits}">--%>
                    <%--<option value="<c:out value="${fruit}"/>"><c:out value="${fruit}"/></option>--%>
                <%--</c:forEach>--%>
            <%--</select>--%>
        <%--</span>--%>
       <%--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />--%>
       <%--<input type="submit" value="Find by..." onclick="location.href='/recipes/findByFruits';">--%>
   <%--</form>--%>

   <%--<form name="Recipe finder" method="POST" action="/recipes/findByFish">--%>

        <%--<span style="color:deepskyblue"> Type of Fish:--%>
            <%--<select name="fish">--%>
                <%--<c:forEach var="fish" items="${fishies}">--%>
                    <%--<option value="<c:out value="${fish}"/>"><c:out value="${fish}"/></option>--%>
                <%--</c:forEach>--%>
            <%--</select>--%>
        <%--</span><br>--%>
       <%--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />--%>
       <%--<input type="submit" value="Find by..." onclick="location.href='/recipes/findByFish';">--%>
   <%--</form>--%>

   <%--<form name="Recipe finder" method="POST" action="/recipes/findBySeasoning">--%>


        <%--<span style="color:lightseagreen"> Type of Seasonings:--%>
        <%--<select name="seasonings">--%>
            <%--<c:forEach var="seasonings" items="${seasonings}">--%>
                <%--<option value="<c:out value="${seasonings}"/>"><c:out value="${seasonings}"/></option>--%>
            <%--</c:forEach>--%>
        <%--</select>--%>
        <%--</span>--%>
       <%--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />--%>
       <%--<input type="submit" value="Find by..." onclick="location.href='/recipes/findBySeasoning';">--%>
   <%--</form>--%>

   <%--<form name="Recipe finder" method="POST" action="/recipes/findByGrain">--%>

        <%--<span style="color:sandybrown"> Type of Grain:--%>
        <%--<select name="grains">--%>
            <%--<c:forEach var="grains" items="${grain}">--%>
                <%--<option value="<c:out value="${grains}"/>"><c:out value="${grains}"/></option>--%>
            <%--</c:forEach>--%>
        <%--</select>--%>
            <%--</span><br>--%>
       <%--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />--%>
       <%--<input type="submit" value="Find by..." onclick="location.href='/recipes/findByGrain';">--%>
   <%--</form>--%>

   <%--<form name="Recipe finder" method="POST" action="/recipes/findByDairy">--%>

        <%--<span style="color:cornflowerblue"> Dairy Products:--%>
        <%--<select name="dairy">--%>
            <%--<c:forEach var="dairy" items="${dairy}">--%>
                <%--<option value="<c:out value="${dairy}"/>"><c:out value="${dairy}"/></option>--%>
            <%--</c:forEach>--%>
        <%--</select>--%>
            <%--</span><br>--%>
        <%--<br>--%>


        <%--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />--%>
        <%--<input type="submit" value="Find by..." onclick="location.href='/recipes/findByDairy';">--%>


    <%--</form>--%>
    <%--<br>--%>
   <%--<a href="/recipes/findByVeg";>find by veg</a>--%>
    <%--<br>--%>
    <%--<a href="/admin/"> #Click here to add Recipe--%>
    <%--</a>--%>

<%--</body>--%>
<%--</body>--%>
<%--</html>--%>

<html>
    <head>
        <body>
            <a href="/recipes/"> <img src="https://www.sciencenews.org/sites/default/files/main/blogposts/080715_ls_eating_free.jpg"
                                      style="width:100%; height: 100%; border: 0;">click me</a>
        </body>
    </head>
</html>

<%--<a href="/admin/"> <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR2JK2S8870Eak77Wb7nhT9EX4GzcHlp3BYm5uD_jVURv0MoJjVw"--%>
                        <%--alt="admin link"--%>
                        <%--style="width:15%;height:15%;border:0;">--%>