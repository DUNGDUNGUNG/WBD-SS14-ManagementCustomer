<%--
  Created by IntelliJ IDEA.
  User: cong
  Date: 22/07/2019
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Customer</title>
    <style>
        body{
            background-color: antiquewhite;
            width: 560px;
            height: auto;
            border: 1px solid #bbccca;
            margin: auto;
        }
        p a{
            color: cadetblue;
        }
    </style>
</head>
<body>
<h1>List Customer</h1>
<p>
    <a href="customer?action=create">Create new customer</a>
</p>
<table border="1" cellpadding="10">
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items='${requestScope["customers"]}' var="cus">
        <tr>
            <td><a href="customer?action=view&id=${cus.getId()}">${cus.getName()}</a></td>
            <td>${cus.getEmail()}</td>
            <td>${cus.getAddress()}</td>
            <td><a href="customer?action=edit&id=${cus.getId()}">edit</a></td>
            <td><a href="customer?action=delete&id=${cus.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
