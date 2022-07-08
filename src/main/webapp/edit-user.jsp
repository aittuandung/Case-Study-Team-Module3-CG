<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title>Login 10</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">

    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<style>body {
    background: #3dd5f3;
}

.form-control:focus {
    box-shadow: none;
    border-color: #BA68C8
}

.profile-button {
    background: #3dd5f3;
    box-shadow: none;
    border: none
}

.profile-button:hover {
    background: #0dcaf0;
}

.profile-button:focus {
    background: #3dd5f3;
    box-shadow: none
}

.profile-button:active {
    background: #007aff;
    box-shadow: none
}

.back:hover {
    color: #3dd5f3;
    cursor: pointer
}

.labels {
    font-size: 11px
}

.add-experience:hover {
    background: #BA68C8;
    color: #fff;
    cursor: pointer;
    border: solid 1px #BA68C8
}
</style>
</head>
<body>
<div class="container rounded bg-white mt-5 mb-5">
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold">CUSTOMER</span><span> </span></div>
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Sửa thông tin</h4>
                </div>
                <div class="row mt-2">
                    <div class="col-md-6"><label class="labels">Tên đăng nhập</label><input type="text" class="form-control" value=""></div>
                    <div class="col-md-6"><label class="labels">Mật khẩu</label><input type="password" class="form-control" value="" ></div>
                    <div class="col-md-6"><label class="labels">Họ Và Tên</label><input  type="text" disabled class="form-control" value="" ></div>
                    <div class="col-md-12"><label class="labels">Ngày sinh</label><input type="text" class="form-control"  value=""></div>
                    <div class="col-md-12"><label class="labels">Tên ID</label><input type="text" class="form-control"  value=""></div>
                    <div class="col-md-12"><label class="labels">Quê quán</label><input type="text" class="form-control"  value=""></div>
                    <div class="col-md-12"><label class="labels">Số điện thoại</label><input type="text" class="form-control"  value=""></div>
                    <div class="col-md-12"><label class="labels">Email</label><input type="text" class="form-control"  value=""></div>
                    <div class="col-md-12"><label class="labels">Ví</label><input type="text" disabled class="form-control"  value=""></div>
                </div>
                <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="button">EDIT</button></div>
            </div>
        </div>

    </div>
</div>
</div>
</div>
</body>
</html>