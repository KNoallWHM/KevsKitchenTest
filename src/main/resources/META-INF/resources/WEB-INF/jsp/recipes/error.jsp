<html>
<head>
</head>
<body>
<br>
<br>
<br>
<br>
<br>
<form>
<link type="text/css" rel="stylesheet" href="/css/error.css"/>
<a href="index.jsp">Print</a>

    </form>
<br>
<br>
<br>
<form>
<a href="index.jsp"> Email This To Me</a>
<input type="text" name="email" style="background-color: deepskyblue " value="Ex. rev@outlook.com">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <input type="submit">
    </form>
<br>
<br>
<br>
    <form>
<a href="index.jsp">TEXT Grocery List</a>
<input type="text" name="phone" style="background-color: deepskyblue " value="PHONE #">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <input type="submit">
        </form>



</body>
</html>


<%--background="http://www.whatelsemichelle.com/wp-content/uploads/2012/06/carrot_cake_recipe.jpg";   background-size: 100%;--%>
<%--background-repeat: no-repeat;--%>