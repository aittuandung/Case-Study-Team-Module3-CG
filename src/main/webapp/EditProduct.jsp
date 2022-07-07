
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Edit Product</h1>
<form action="/product?id=${product.id}&action=edit" method="post">
    <input placeholder="name" name="name">
    <input placeholder="price" name="price">
    <input placeholder="img" name="img">
    <button type="submit" class="btn btn-success">Edit</button>
</form>
</body>
</html>
