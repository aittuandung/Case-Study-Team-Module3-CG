<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/8/2022
  Time: 2:31 PM
  To change this template use File | Settings | File Templates.
--%>
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
    <form>
        <div class="form-group">
            <label>Thành Phố:</label>
            <input type="text" class="form-control" >
        </div>
        <div class="form-group">
            <label>Quận/Huyện:</label>
            <input type="text" class="form-control" >
        </div>
        <div class="form-group">
            <label>Phường/Xã</label>
            <input type="text" class="form-control">
        </div>
        <div class="form-group">
            <label>Địa chỉ</label>
            <input type="text" class="form-control">
        </div>
        <div class="form-group">
            <label>Ảnh</label>
            <input type="text" class="form-control">
        </div>
        <div class="form-group">
            <label>Mô tả căn hộ</label>
            <input type="text" class="form-control">
        </div>
        <div class="form-group">
            <label>Kiểu loại căn hộ</label>
            <input type="text" class="form-control">
        </div>
        <div style="display: flex ; justify-content: center "><button type="submit" style="padding: 20px ; background: #0a53be ; border-radius: 4px ; border: none ; color: #dae0e5" >Tạo bài đăng</button></div>
    </form>
</div>

</body>
</html>

