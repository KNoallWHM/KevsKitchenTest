<html>
<head>
    <title>view All Expenses</title>
</head>
<body>
<br><br>
<table>




    <c:forEach items="${expenses}" var="expenses">
        <tr>
                <%--<td><a href="/mvc_cust/viewOwner?ownerid=${owner.ownerId}"><c:out value="${owner.ownerId}" /></a></td>--%>

            <td><a href="/mvc_cust/viewExpense?expenseID=${expenses.expenseID}"><c:out value="${expenses.expensesID}" /></a></td>
            <td><c:out value="${expenses.expenseID}" /></td>
            <td><c:out value="${expenses.expenseName}" /></td>
            <td><c:out value="${expenses.expenseAmount}" /></td>
            <td><c:out value="${expenses.expenseDate}" /></td>
            <td><c:out value="${expenses.categoryType}" /></td>
        </tr>
    </c:forEach>
</table>
<br><br>
<a href="/">HOME</a>
</body>
</html>