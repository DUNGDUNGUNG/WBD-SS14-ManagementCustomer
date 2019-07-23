<%--
  Created by IntelliJ IDEA.
  User: cong
  Date: 22/07/2019
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new customer</title>
    <style>
        .message {
            color: green;
        }

        body {
            background-color: antiquewhite;
            width: 560px;
            height: auto;
            border: 1px solid #bbccca;
            margin: auto;
        }

        p a {
            color: cadetblue;
        }

    </style>
</head>
<body>
<h1>Create new customer</h1>
<p>
    <c:if test="${requestScope['message']!=null}">
        <span class="message">${requestScope['message']}</span>
    </c:if>
</p>
<p>
    <a href="customer">Back to customer list</a>
</p>
<form method="post">
    <fieldset>
        <legend><strong>Customer information</strong></legend>
        <table>
            <tr>
                <th>Name:</th>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <th>Email:</th>
                <td><input type="text" name="email"></td>
            </tr>
            <tr>
                <th>Address:</th>
                <td><input type="text" name="address"></td>
            </tr>
            <tr>
                <th></th>
                <td><input type="submit" name="Create customer"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
