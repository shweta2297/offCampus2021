<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Customer</title>
</head>
<body>


<p>RowAdded</p><c:out value="${rowAdded}"/>
<form:form method="post" action="customers">

<form:label path="id">Customer ID</form:label>
<form:input path="id"/>

<form:label path="customerName">Customer Name</form:label>
<form:input path="customerName"/>


<form:label path="email">E-MAIL</form:label>
<form:input path="email"/>

<input type="submit" value="Add">
</form:form>
</body>
</html>