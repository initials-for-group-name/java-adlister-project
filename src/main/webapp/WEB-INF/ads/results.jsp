<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Search Results" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Search Results:</h1>

    <c:if test="${empty ads}">
        <p>No ads match your search criteria.</p>
    </c:if>

    <c:forEach var="ad" items="${ads}">
        <c:if test="${empty param.model || fn:containsIgnoreCase(ad.model, param.model)}">
            <c:if test="${empty param.year || ad.year == param.year}">
                <c:if test="${empty param.mileage || ad.mileage <= param.mileage}">
                    <c:if test="${empty param.condition || fn:containsIgnoreCase(ad.condition, param.condition)}">
                        <c:if test="${empty param.color || fn:containsIgnoreCase(ad.color, param.color)}">
                            <div class="col-md-6">
                                <h2><a href="/ad-details?id=${ad.id}&userId=${ad.userId}" >${ad.title}</a></h2>
                                <p>${ad.description}</p>
                                <p>Model: ${ad.model}</p>
                                <p>Year: ${ad.year}</p>
                                <p>Mileage: ${ad.mileage}</p>
                                <p>Condition: ${ad.carCondition}</p>
                                <p>Color: ${ad.color}</p>
                            </div>
                        </c:if>
                    </c:if>
                </c:if>
            </c:if>
        </c:if>
    </c:forEach>

</div>

</body>
</html>


