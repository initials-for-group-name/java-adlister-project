<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>
    <h3>Here are your registered ads</h3>
    <div>
        <c:forEach var="ad" items="${ads}">
            <div class="col-md-6">
                <h2><a href="/ad-edit?id=${ad.id}">${ad.title}</a></h2>
                <form action="/profile" method="POST">
                    <button name="ad.id" value="${ad.id}">Delete</button>
                </form>

            </div>
        </c:forEach>
    </div>
</body>
</html>
