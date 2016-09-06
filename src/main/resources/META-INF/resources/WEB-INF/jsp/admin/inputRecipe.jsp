<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<title> </title>
</head>
<body>
<h1>hi there</h1>
<h2> insert directions here </h2>
<textarea rows="15" cols="55">

</textarea>
<br>
<br>
<form:form id="newRecipeForm" commandName="basicIngredients" method="POST" action="/admin/saveNewRecipe">
    <form:label path="meat">Amount of Meat:</form:label>
    <form:select path="meat" id="meat">
        <form:options items="${Meat}" />
    </form:select>
    <br>
    <form:label path="veggies">Amount of Veggies:</form:label>
    <form:select path="veggies" id="veggies">
        <form:options items="${Veggies}" />
    </form:select>
    <br>
    <form:label path="fruits">Amount of Fruit:</form:label>
    <form:select path="fruits" id="fruits">
        <form:options items="${Fruits}" />
    </form:select>
    <br>
    <form:label path="fish">Amount of Fish:</form:label>
    <form:select path="fish" id="fish"> <textarea rows="1" cols="25">lbs </textarea>
        <form:options items="${Fish}" />
    </form:select>
    <br>
    <form:label path="seasonings">Seasonings and Amount:</form:label>
    <form:select path="seasonings" id="seasonings">
        <form:options items="${Seasonings}" />
    </form:select>
    <br>
    <form:label path="grains">Amount of Grains:</form:label>
    <form:select path="grains" id="grains" >
        <form:options items="${Grains}" />
    </form:select>
    <br>
    <br>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <input type="submit">
</form:form>
</body>
</html>