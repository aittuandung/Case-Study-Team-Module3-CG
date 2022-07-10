<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/8/2022
  Time: 2:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>Tạo bài đăng bán bất động sản</h2>
    <p>Nhập thông tin chi tiết các trường</p>
<%--    <form action="/showapartment?action=createch&id=${user}" method="post">--%>
    <form action="/showapartment?action=create" method="post">
        <div class="form-group">
            <label>Mã Căn hộ:</label>
            <input type="text" name="idCH" class="form-control" placeholder="* Mã số ngẫu nhiên (5 số) *">
        </div>
        <div class="form-group">
            <label>Địa chỉ:</label>
            <input type="text" name="address" class="form-control" >
        </div>
        <div class="form-group">
            <label>Giá bán:</label>
            <input type="text" name="price" class="form-control" >
        </div>
        <div class="form-group">
            <label>Diện tích căn hộ</label>
            <input type="text" name="area" class="form-control">
        </div>
        <div class="form-group">
            <label>Ảnh căn hộ</label>
            <input type="text" name="picture" class="form-control">
        </div>
        <div class="form-group">
            <label>Trạng Thái</label>
            <input type="text" name="status" class="form-control">
        </div>
        <div class="form-group">
            <label>Hướng Nhà</label>
            <input type="text" name="description" class="form-control">
        </div>
        <div class="form-group">
            <label>Ngày hiển thị bài đăng</label>
            <input type="date" name="datePost" class="form-control">
        </div>
            <label>Kiểu loại căn hộ</label>

            <select name="classify" id="classify" class="form-group" style="
    width: 100%;

    height: 34px;
    margin-bottom: 15px;">
                <option value="chungcu">Chung Cư</option>
                <option value="bietthu">Biệt Thự</option>
                <option value="nhadat">Nhà Đất</option>
                <option value="khac">Các Loại Bất Động Sản Khác</option>
            </select>
<%--        <div class="form-group">--%>
<%--            <label>Tên chủ căn hộ</label>--%>
<%--            <select name="customer" id="customer">--%>
<%--            <c:forEach var="c" items="${customer}">--%>
<%--                <option value="${c.userName}">${c.userName}</option>    --%>
<%--            </c:forEach>--%>
<%--            </select>--%>
<%--        </div>--%>
        <div class="form-group">
            <label>Khu vực căn hộ</label>
            <select name="sector" id="sector">
                <c:forEach var="c" items="${sector}">
                    <option value="${c.idKV}">${c.province}</option>
                </c:forEach>
            </select>
        </div>

        <div style="display: flex ; justify-content: center "><input type="submit" value="create apartment" style="padding: 20px ; background: #0a53be ; border-radius: 4px ; border: none ; color: #dae0e5" >
            <a href="index.jsp">Tạo bài đăng</a></div>
    </form>
</div>
</body>
</html>

