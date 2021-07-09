<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
        table{
            border:2px solid blue;
            border-collapse:collapse;
            margin-left:auto;
            margin-right:auto;
        }
        tr,th,td{
        border:2px solid blue;
        }
    </style>
<meta charset="ISO-8859-1">
<title>Show Customer</title>
</head>
<body>
   
<table>
    <tr>
        <th>Id</th>
        <th>Customer Name</th>
        <th>Email</th>
    </tr>
    <c:forEach items="${list}" var="eachItem">
    <tr>
        <td><c:out value="${eachItem.id}"></c:out></td>
        <td><c:out value="${eachItem.customerName}"></c:out></td>
        <td><c:out value="${eachItem.email}"></c:out></td>
    </tr>
    </c:forEach>
</table>
</body>
</html>