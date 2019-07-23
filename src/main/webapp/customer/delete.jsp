<%--
  Created by IntelliJ IDEA.
  User: cong
  Date: 23/07/2019
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleting customer</title>
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
<h1>Delete customer</h1>
<p>
    <a href="customer">Back to customer list</a>
</p>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend><strong>Customer information</strong></legend>
        <table>
            <tr>
                <th>Name:</th>
                <td>${requestScope["customers"].getName()}</td>
            </tr>
            <tr>
                <th>Email:</th>
                <td>${requestScope["customers"].getEmail()}</td>
            </tr>
            <tr>
                <th>Address:</th>
                <td>${requestScope["customers"].getAddress()}</td>
            </tr>
            <tr>
                <th></th>
                <td><input type="submit" value="Delete customer"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
