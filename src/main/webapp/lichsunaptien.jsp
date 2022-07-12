<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lịch sử nạp tiền</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>
<div class="container ">
    <table class="table table-bordered table-striped table-hover">
        <tr>
            <th>UserName</th>
            <th>Số tiền nạp </th>
        </tr>
        <c:forEach var="htr" items="${history}">
            <tr class="info">
            <td>${htr.userName}</td>
            <td>${htr.money}</td>
        </tr></c:forEach>


    </table>
</div><br /><br />
<br>
<br>
<a style="    display: flex;
    justify-content: center;" href="/admin">Về trang chủ</a>

</body>
</html>