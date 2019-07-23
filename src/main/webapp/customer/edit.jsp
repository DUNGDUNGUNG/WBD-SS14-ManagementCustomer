<%--
  Created by IntelliJ IDEA.
  User: cong
  Date: 23/07/2019
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit customer</title>
    <style>
        .message {
            color: blue;
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
<h1>Edit customer</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
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
                <td><input type="text" name="name" id="name" value="${requestScope["customers"].getName()}"></td>
            </tr>
            <tr>
                <th>Email:</th>
                <td><input type="text" name="email" id="email" value="${requestScope["customers"].getEmail()}"></td>
            </tr>
            <tr>
                <th>Address:</th>
                <td><input type="text" name="address" id="address" value="${requestScope["customers"].getAddress()}">
                </td>
            </tr>
            <tr>
                <th></th>
                <td><input type="submit" value="Update customer"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
