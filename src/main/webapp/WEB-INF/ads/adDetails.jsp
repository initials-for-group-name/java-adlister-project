<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ad Details</title>
</head>
<body>
<div class="container">
        <h1>Welcome, this ad is posted by ${user.username}</h1>
</div>
<h2>Ad information</h2>
<div>

    <div class="col-md-6">
      <h2>Ad title: ${ad.title}</h2>
      <h2>Tesla model: ${ad.model}</h2>
      <h2>Tesla year: ${ad.year}</h2>
      <h2>Tesla mileage: ${ad.mileage}</h2>
      <h2>Tesla color: ${ad.color}</h2>
      <h2>Tesla condition: ${ad.carCondition}</h2>
      <h2>Date posted: ${ad.date}</h2>
      <h2>Description: ${ad.description}</h2>
      <h2>Contact email: ${user.email}</h2>
      <img src="${ad.picture}" alt="Tesla"/>
    </div>

</div>
</body>
</html>
