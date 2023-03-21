<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2><a href="/ad-details?id=${ad.id}&userId=${ad.userId}" >${ad.title}</a></h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>

</div>

<div class="container">
    <form action="/results" method="post">
        <label for="model">Model:</label>
        <select id="model" name="model">
            <option value="">--Select Model--</option>
            <c:forEach var="ad" items="${ads}">
                <option value="${ad.model}">${ad.model}</option>
            </c:forEach>
        </select>

        <label for="year">Year:</label>
        <select id="year" name="year">
            <option value="">--Select Year--</option>
            <c:forEach var="ad" items="${ads}">
                <option value="${ad.year}">${ad.year}</option>
            </c:forEach>
        </select>

        <label for="mileage">Mileage:</label>
        <select id="mileage" name="mileage">
            <option value="">--Select Mileage--</option>
            <c:forEach var="ad" items="${ads}">
                <option value="${ad.mileage}">${ad.mileage}</option>
            </c:forEach>
        </select>

        <label for="condition">Condition:</label>
        <select id="condition" name="condition">
            <option value="">--Select Condition--</option>
            <c:forEach var="ad" items="${ads}">
                <option value="${ad.carCondition}">${ad.carCondition}</option>
            </c:forEach>
        </select>

        <label for="color">Color:</label>
        <select id="color" name="color">
            <option value="">--Select Color--</option>
            <c:forEach var="ad" items="${ads}">
                <option value="${ad.color}">${ad.color}</option>
            </c:forEach>
        </select>

        <button type="submit">Search</button>
    </form>

</div>












</body>
</html>
