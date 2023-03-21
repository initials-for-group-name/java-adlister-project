<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="model">Model</label>
                <select name="model" id="model">
                    <option value="model-s" name="model">Model S</option>
                    <option value="model-3" name="model">Model 3</option>
                    <option value="model-x" name="model">Model X</option>
                    <option value="model-y" name="model">Model Y</option>
                </select>
            </div>
            <div class="form-group">
                <label for="year">Year</label>
                <select name="year" id="year">
                    <option value="2008" name="year">2008</option>
                    <option value="2009" name="year">2009</option>
                    <option value="2010" name="year">2010</option>
                    <option value="2011" name="year">2011</option>
                    <option value="2012" name="year">2012</option>
                    <option value="2013" name="year">2013</option>
                    <option value="2014" name="year">2014</option>
                    <option value="2015" name="year">2015</option>
                    <option value="2016" name="year">2016</option>
                    <option value="2017" name="year">2017</option>
                    <option value="2018" name="year">2018</option>
                    <option value="2019" name="year">2019</option>
                    <option value="2020" name="year">2020</option>
                    <option value="2021" name="year">2021</option>
                    <option value="2022" name="year">2022</option>
                    <option value="2023" name="year">2023</option>
                    <option value="2024" name="year">2024</option>
                </select>
            </div>
            <div class="form-group">
                <label for="mileage">Mileage</label>
                <input name="mileage" id="mileage" type="number"/>
            </div>
            <div class="form-group">
                <label for="color">Color</label>
                <select name="color" id="color">
                    <option value="blue-metallic" name="color">Blue Metallic</option>
                    <option value="brown-metallic" name="color">Brown Metallic</option>
                    <option value="gray-metallic" name="color">Gray Metallic</option>
                    <option value="green-metallic" name="color">Green Metallic</option>
                    <option value="sliver-metallic" name="color">Sliver Metallic</option>
                    <option value="pearl-white-multi-coat" name="color">Pearl White Multi-Coat</option>
                    <option value="red-multi-coat" name="color">Red Multi-Coat</option>
                    <option value="solid-black" name="color">Solid Black</option>
                    <option value="solid-white" name="color">Solid White</option>
                </select>
            </div>
            <div class="form-group">
                <label for="condition">Car Condition</label>
                <select name="condition" id="condition">
                    <option value="poor" name="condition">Poor</option>
                    <option value="fair" name="condition">Fair</option>
                    <option value="good" name="condition">Good</option>
                    <option value="excellent" name="condition">Excellent</option>
                </select>
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <div class="form-group">
                <label for="picture">Image</label>
                <input name="picture" id="picture" type="text"/>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>
