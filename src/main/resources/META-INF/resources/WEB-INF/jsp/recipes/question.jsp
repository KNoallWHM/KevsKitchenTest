<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<title>QUIZ QUESTION</title>

<head>
    <link type="text/css" rel="stylesheet" href="/css/homepage.css"/>
</head>
<body background="http://wallpapercave.com/wp/gB3sgTh.jpg">
<h1>QUIZ QUESTION</h1>

QUESTION: <c:out  value="${basicIngredients.question}" />
<br><br><br>
    <section>
<form name="questionForm" method="POST" action="/quiz/questionAnswer">
<c:if test="${basicIngredients.veggies == ''}">
    <input type="radio" name="multiAnswer" value="yes"> :<c:out value="${basicIngredients.}" /><br>
    <input type="radio" name="multiAnswer" value="no"> :<c:out value="${basicIngredients.wrongMultipleChoiceAnswer1}" /><br>
    <input type="radio" name="multiAnswer" value="no"> :<c:out value="${basicIngredients.wrongMultipleChoiceAnswer2}" /><br>
    <input type="radio" name="multiAnswer" value="no"> :<c:out value="${basicIngredients.wrongMultipleChoiceAnswer3}" /><br>
</c:if>
<c:if test="${basicIngredients.questionType == 'TRUE_FALSE'}">
    True: <input type="radio" name="trueFalseAnswer" value="true"><br>
    False: <input type="radio" name="trueFalseAnswer" value="false">
</c:if>

    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
<br><br><input type="submit" name="Show me">
</form>
        </section>
</body>
</html>