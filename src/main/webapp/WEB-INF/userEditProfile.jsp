<%--
  Created by IntelliJ IDEA.
  User: hungho
  Date: 3/22/23
  Time: 9:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>User Profile</title>
</head>
<body>
    <h1>Username: ${sessionScope.user.username}</h1>
    <h3>First Name: ${sessionScope.user.firstname}</h3>
    <h3>Last Name: ${sessionScope.user.lastname}</h3>
    <h3>Phone Number: ${sessionScope.user.phoneNumber}</h3>
    <h3>Email: ${sessionScope.user.email}</h3>
    <form method="POST">
        <button name="user.id" value="${sessionScope.user.id}">Delete</button>
    </form>
    <hr>
    <form method="POST">
        <input name="id" id="id" value="${sessionScope.user.id}" type="hidden"/>
        <input name="password" id="password" value="${sessionScope.user.password}" type="hidden"/>
        <div class="form-group">
            <label for="username">Username</label>
            <input name="username" id="username" value="${sessionScope.user.username}" type="text"/>
        </div>
        <div class="form-group">
            <label for="firstname">First Name</label>
            <input name="firstname" id="firstname" type="text"/>
        </div>
        <div class="form-group">
            <label for="lastname">Last Name</label>
            <input name="lastname" id="lastname" type="text"/>
        </div>
        <div class="form-group">
            <label for="phone.number">Phone Number</label>
            <input name="phone.number" id="phone.number" placeholder="123-456-1234" type="text"/>
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input name="email" id="email" value="${sessionScope.user.email}" placeholder="abc@gmail" type="text"/>
        </div>
        <button name="submit">Submit</button>
    </form>

</body>
</html>
