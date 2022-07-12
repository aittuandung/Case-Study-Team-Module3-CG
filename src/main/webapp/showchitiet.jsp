<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>EstateAgency Bootstrap Template - Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="/assets/img/favicon.png" rel="icon">
  <link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <!-- Template Main CSS File -->
  <link href="/assets/css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <!-- =======================================================
  * Template Name: EstateAgency - v4.7.0
  * Template URL: https://bootstrapmade.com/real-estate-agency-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

<!-- ======= Property Search Section ======= -->
<div class="click-closed"></div>
<!--/ Form Search Star /-->
<div class="box-collapse">
  <div class="title-box-d">
    <h3 class="title-d">Search Property</h3>
  </div>
  <span class="close-box-collapse right-boxed bi bi-x"></span>
  <div class="box-collapse-wrap form">
    <form class="form-a" action="/property" method="post">
      <div class="row">
        <div class="col-md-12 mb-2">
          <div class="form-group">
            <label class="pb-2" for="Type">Keyword</label>
            <input type="text" class="form-control form-control-lg form-control-a" placeholder="Keyword">
          </div>
        </div>
        <div class="col-md-6 mb-2">
          <div class="form-group mt-3">
            <label class="pb-2" for="Type">Khu Vực</label>
            <select class="form-control form-select form-control-a" id="Type">
              <option>Tất Cả</option>
              <option>Theo Quận</option>
              <option>Theo Huyện</option>
              <option>Theo Xã</option>
            </select>
          </div>
        </div>
        <div class="col-md-6 mb-2">
          <div class="form-group mt-3">
            <label class="pb-2" for="city">Giá</label>
            <select class="form-control form-select form-control-a" id="city">
              <option>All City</option>
              <option>Alabama</option>
              <option>Arizona</option>
              <option>California</option>
              <option>Colorado</option>
            </select>
          </div>
        </div>
        <%--          <div class="col-md-6 mb-2">--%>
        <%--            <div class="form-group mt-3">--%>
        <%--              <label class="pb-2" for="bedrooms">Bedrooms</label>--%>
        <%--              <select class="form-control form-select form-control-a" id="bedrooms">--%>
        <%--                <option>Any</option>--%>
        <%--                <option>01</option>--%>
        <%--                <option>02</option>--%>
        <%--                <option>03</option>--%>
        <%--              </select>--%>
        <%--            </div>--%>
        <%--          </div>--%>
        <%--          <div class="col-md-6 mb-2">--%>
        <%--            <div class="form-group mt-3">--%>
        <%--              <label class="pb-2" for="garages">Garages</label>--%>
        <%--              <select class="form-control form-select form-control-a" id="garages">--%>
        <%--                <option>Any</option>--%>
        <%--                <option>01</option>--%>
        <%--                <option>02</option>--%>
        <%--                <option>03</option>--%>
        <%--                <option>04</option>--%>
        <%--              </select>--%>
        <%--            </div>--%>
        <%--          </div>--%>
        <%--          <div class="col-md-6 mb-2">--%>
        <%--            <div class="form-group mt-3">--%>
        <%--              <label class="pb-2" for="bathrooms">Bathrooms</label>--%>
        <%--              <select class="form-control form-select form-control-a" id="bathrooms">--%>
        <%--                <option>Any</option>--%>
        <%--                <option>01</option>--%>
        <%--                <option>02</option>--%>
        <%--                <option>03</option>--%>
        <%--              </select>--%>
        <%--            </div>--%>
        <%--          </div>--%>
        <%--          <div class="col-md-6 mb-2">--%>
        <%--            <div class="form-group mt-3">--%>
        <%--              <label class="pb-2" for="price">Min Price</label>--%>
        <%--              <select class="form-control form-select form-control-a" id="price">--%>
        <%--                <option>Unlimite</option>--%>
        <%--                <option>$50,000</option>--%>
        <%--                <option>$100,000</option>--%>
        <%--                <option>$150,000</option>--%>
        <%--                <option>$200,000</option>--%>
        <%--              </select>--%>
        <%--            </div>--%>
        <%--          </div>--%>
        <div class="col-md-12">
          <button type="submit" class="btn btn-b" >Search Property</button>
        </div>
      </div>
    </form>
  </div>
</div><!-- End Property Search Section -->>

<!-- ======= Header/Navbar ======= -->
<nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
  <div class="container">
    <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarDefault" aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
      <span></span>
      <span></span>
      <span></span>
    </button>
    <a class="navbar-brand text-brand" href="index.jsp"><img src="https://staticfile.batdongsan.com.vn/images/logo/h-logo.svg" alt=""></a>

    <div class="navbar-collapse collapse justify-content-center" id="navbarDefault">
      <ul class="navbar-nav">

        <li class="nav-item">
          <a class="nav-link active" href="/login?id=${username}">Trang Chủ</a>
        </li>

        <li class="nav-item">
          <a class="nav-link " href="/login?action=nhadangban&id=${username}">Nhà Đăng Bán</a>
        </li>

<%--        <li class="nav-item">--%>
<%--          <a class="nav-link" >Xin Chào ${username}</a>--%>
<%--        </li>--%>
        <%--                <li class="nav-item">--%>
        <%--                    <a class="nav-link" href="#">--%>
        <%--                        Xin Chào ${username}--%>
        <%--                    </a>--%>
        <%--                </li>--%>
<%--        <li class="nav-item dropdown">--%>

<%--          <a href="/inputApartment.jsp" class="nav-link">Tạo bài đăng</a>--%>
<%--        </li>--%>

      </ul>
    </div>

    <button type="button" class="btn btn-b-n navbar-toggle-box navbar-toggle-box-collapse" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01">
      <i class="bi bi-search"></i>
    </button>

  </div>
</nav><!-- End Property Search Section -->>

<!-- ======= Header/Navbar ======= -->
<%--<nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">--%>
<%--  <div class="container">--%>
<%--    <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarDefault" aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">--%>
<%--      <span></span>--%>
<%--      <span></span>--%>
<%--      <span></span>--%>
<%--    </button>--%>
<%--    <a class="navbar-brand text-brand" href="index.jsp">Estate<span class="color-b">Agency</span></a>--%>

<%--    <div class="navbar-collapse collapse justify-content-center">--%>
<%--      <ul class="navbar-nav">--%>

<%--        <li class="nav-item">--%>
<%--          <a class="nav-link " href="index.jsp">Home</a>--%>
<%--        </li>--%>

<%--        <li class="nav-item">--%>
<%--          <a class="nav-link " href="about.jsp">About</a>--%>
<%--        </li>--%>

<%--        <li class="nav-item">--%>
<%--          <a class="nav-link " href="showapartment.jsp">Property</a>--%>
<%--        </li>--%>

<%--        <li class="nav-item">--%>
<%--          <a class="nav-link " href="blog-grid.jsp">Blog</a>--%>
<%--        </li>--%>

<%--        <li class="nav-item dropdown">--%>
<%--          <a class="nav-link dropdown-toggle" href="#"  role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Pages</a>--%>
<%--          <div class="dropdown-menu">--%>
<%--            <a class="dropdown-item active" href="showchitiet.jsp">Property Single</a>--%>
<%--            <a class="dropdown-item " href="blog-single.html">Blog Single</a>--%>
<%--            <a class="dropdown-item " href="agents-grid.html">Agents Grid</a>--%>
<%--            <a class="dropdown-item " href="showcustormmer.jsp">Agent Single</a>--%>
<%--          </div>--%>
<%--        </li>--%>
<%--        <li class="nav-item">--%>
<%--          <a class="nav-link " href="contact.html">Contact</a>--%>
<%--        </li>--%>
<%--      </ul>--%>
<%--    </div>--%>

<%--    <button type="button" class="btn btn-b-n navbar-toggle-box navbar-toggle-box-collapse" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01">--%>
<%--      <i class="bi bi-search"></i>--%>
<%--    </button>--%>

<%--  </div>--%>
<%--</nav><!-- End Header/Navbar -->--%>

<main id="main">

  <!-- ======= Intro Single ======= -->
  <section class="intro-single">
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-lg-8">
          <div class="title-single-box">
            <h1 class="title-single">${apartment.address}</h1>
            <span class="color-text-a">${apartment.sector.province},${apartment.sector.district}</span>
          </div>
        </div>
        <%--          <div class="col-md-12 col-lg-4">--%>
        <%--            <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">--%>
        <%--              <ol class="breadcrumb">--%>
        <%--                <li class="breadcrumb-item">--%>
        <%--                  <a href="index.jsp">Home</a>--%>
        <%--                </li>--%>
        <%--                <li class="breadcrumb-item">--%>
        <%--                  <a href="showapartment.jsp">Properties</a>--%>
        <%--                </li>--%>
        <%--                <li class="breadcrumb-item active" aria-current="page">--%>
        <%--                  304 Blaster Up--%>
        <%--                </li>--%>
        <%--              </ol>--%>
        <%--            </nav>--%>
        <%--          </div>--%>
      </div>
    </div>
  </section><!-- End Intro Single-->

  <!-- ======= Property Single ======= -->
  <section class="property-single nav-arrow-b">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-8">
          <div id="property-single-carousel" class="swiper">
            <div class="swiper-wrapper">
              <div class="carousel-item-b swiper-slide">
                <img src="${a.picture}" alt="">
              </div>
            </div>
          </div>
          <div class="property-single-carousel-pagination carousel-pagination"></div>
        </div>
      </div>

      <div class="row">
        <div class="col-sm-12">

          <div class="row justify-content-between">
            <div class="col-md-5 col-lg-4">
              <div class="property-price d-flex justify-content-center foo">
                <div class="card-header-c d-flex">
                  <div class="card-box-ico" style="width: 250px">
                    <span class="bi bi-cash"></span>
                  </div>
                  <div class="card-title-c align-self-center">
                    <h5 class="title-c" style="margin-left: -110px;">${a.price} tỷ</h5>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-6 section-md-t3">
              <div class="row">
                <div class="col-sm-12">
                  <div class="title-box-d">
                    <h3 class="title-d">Mô tả căn hộ</h3>
                  </div>
                </div>
              </div>
              <div class="property-description">
                <p class="description color-text-a">
                  ${a.description}
                </p>
                <%--                  <p class="description color-text-a no-margin">--%>
                <%--                    Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Donec rutrum congue leo eget--%>
                <%--                    malesuada. Quisque velit nisi,--%>
                <%--                    pretium ut lacinia in, elementum id enim. Donec sollicitudin molestie malesuada.--%>
                <%--                  </p>--%>
              </div>
              <%--                <div class="row section-t3">--%>
              <%--                  <div class="col-sm-12">--%>
              <%--                    <div class="title-box-d">--%>
              <%--                      <h3 class="title-d">Amenities</h3>--%>
              <%--                    </div>--%>
              <%--                  </div>--%>
              <%--                </div>--%>
              <%--                <div class="amenities-list color-text-a">--%>
              <%--                  <ul class="list-a no-margin">--%>
              <%--                    <li>Balcony</li>--%>
              <%--                    <li>Outdoor Kitchen</li>--%>
              <%--                    <li>Cable Tv</li>--%>
              <%--                    <li>Deck</li>--%>
              <%--                    <li>Tennis Courts</li>--%>
              <%--                    <li>Internet</li>--%>
              <%--                    <li>Parking</li>--%>
              <%--                    <li>Sun Room</li>--%>
              <%--                    <li>Concrete Flooring</li>--%>
              <%--                  </ul>--%>
              <%--                </div>--%>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-6 section-md-t3" style="margin-top: 30px">
          <div class="property-summary">
            <div class="row">
              <div class="col-sm-12">
                <div class="title-box-d ">
                  <h3 class="title-d">Thông Tin Chi Tiết</h3>
                </div>
              </div>
            </div>
            <div class="summary-list">
              <ul class="list">
                <li class="d-flex justify-content-between">
                  <strong>ID căn hộ</strong>
                  <span>${a.idCH}</span>
                </li>
                <li class="d-flex justify-content-between">
                  <strong>Địa chỉ:</strong>
                  <span>${a.address}</span>
                </li>
                <li class="d-flex justify-content-between">
                  <strong>Loại nhà:</strong>
                  <span>${a.classify}</span>
                </li>
                <li class="d-flex justify-content-between">
                  <strong>Trạng Thái:</strong>
                  <span>${a.status}</span>
                </li>
                <li class="d-flex justify-content-between">
                  <strong>Diện tích:</strong>
                  <span>${a.area}m
                            <sup>2</sup>
                          </span>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-6 section-md-t3"  style="margin-top: 30px">

            <div class="title-box-d" >
              <h3 class="title-d">Thông Tin Người Bán</h3>
            </div>
          <div class="property-agent">
            <h4 class="title-agent">${a.customer.fullName}</h4>
            <ul class="list-unstyled">
              <li class="d-flex justify-content-between">
                <strong>Điện Thoại Liên Hệ:</strong>
                <span class="color-text-a">${a.customer.phoneNumber}</span>
              </li>
              <li class="d-flex justify-content-between">
                <strong>Sinh Nhật:</strong>
                <span class="color-text-a">${a.customer.birthDay}</span>
              </li>
              <li class="d-flex justify-content-between">
                <strong>Email:</strong>
                <span class="color-text-a">${a.customer.email}</span>
              </li>
            </ul>
            <div class="socials-a">
              <ul class="list-inline">
                <li class="list-inline-item">
                  <a href="#">
                    <i class="bi bi-facebook" aria-hidden="true"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="bi bi-twitter" aria-hidden="true"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="bi bi-instagram" aria-hidden="true"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="bi bi-linkedin" aria-hidden="true"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>

        <%--          <div class="col-md-10 offset-md-1">--%>
        <%--            <ul class="nav nav-pills-a nav-pills mb-3 section-t3" id="pills-tab" role="tablist">--%>
        <%--              <li class="nav-item">--%>
        <%--                <a class="nav-link active" id="pills-video-tab" data-bs-toggle="pill" href="#pills-video" role="tab" aria-controls="pills-video" aria-selected="true">Video</a>--%>
        <%--              </li>--%>
        <%--              <li class="nav-item">--%>
        <%--                <a class="nav-link" id="pills-plans-tab" data-bs-toggle="pill" href="#pills-plans" role="tab" aria-controls="pills-plans" aria-selected="false">Floor Plans</a>--%>
        <%--              </li>--%>
        <%--              <li class="nav-item">--%>
        <%--                <a class="nav-link" id="pills-map-tab" data-bs-toggle="pill" href="#pills-map" role="tab" aria-controls="pills-map" aria-selected="false">Ubication</a>--%>
        <%--              </li>--%>
        <%--            </ul>--%>
        <%--            <div class="tab-content" id="pills-tabContent">--%>
        <%--              <div class="tab-pane fade show active" id="pills-video" role="tabpanel" aria-labelledby="pills-video-tab">--%>
        <%--                <iframe src="https://player.vimeo.com/video/73221098" width="100%" height="460" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>--%>
        <%--              </div>--%>
        <%--              <div class="tab-pane fade" id="pills-plans" role="tabpanel" aria-labelledby="pills-plans-tab">--%>
        <%--                <img src="assets/img/plan2.jpg" alt="" class="img-fluid">--%>
        <%--              </div>--%>
        <%--              <div class="tab-pane fade" id="pills-map" role="tabpanel" aria-labelledby="pills-map-tab">--%>
        <%--                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.1422937950147...29142834" width="100%" height="460" frameborder="0" style="border:0" allowfullscreen></iframe>--%>
        <%--              </div>--%>
        <%--            </div>--%>
        <%--          </div>--%>
        <div class="col-md-12">
          <div style="justify-content: center;display: flex">
            <div class="col-md-12 col-lg-4">
              <div class="property-contact">
                <form class="form-a">
                  <div class="row">
                    <div class="col-md-12 mb-1">
                      <div class="form-group">
                        <input type="text" class="form-control form-control-lg form-control-a" id="inputName" placeholder="Name *" required>
                      </div>
                    </div>
                    <div class="col-md-12 mb-1">
                      <div class="form-group">
                        <input type="email" class="form-control form-control-lg form-control-a" id="inputEmail1" placeholder="Email *" required>
                      </div>
                    </div>
                    <div class="col-md-12 mb-1">
                      <div class="form-group">
                        <textarea id="textMessage" class="form-control" placeholder="Comment *" name="message" cols="45" rows="8" required></textarea>
                      </div>
                    </div>
                    <div class="col-md-12 mt-3">
                      <button type="submit" class="btn btn-a">Send Message</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section><!-- End Property Single-->

</main><!-- End #main -->

<!-- ======= Footer ======= -->
<section class="section-footer">
  <div class="container">
    <div class="row">
      <div class="col-sm-12 col-md-4">
        <div class="widget-a">
          <div class="w-header-a">
            <h3 class="w-title-a text-brand">EstateAgency</h3>
          </div>
          <div class="w-body-a">
            <p class="w-text-a color-text-a">
              Enim minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip exea commodo consequat duis
              sed aute irure.
            </p>
          </div>
          <div class="w-footer-a">
            <ul class="list-unstyled">
              <li class="color-a">
                <span class="color-text-a">Phone .</span> contact@example.com
              </li>
              <li class="color-a">
                <span class="color-text-a">Email .</span> +54 356 945234
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="col-sm-12 col-md-4 section-md-t3">
        <div class="widget-a">
          <div class="w-header-a">
            <h3 class="w-title-a text-brand">The Company</h3>
          </div>
          <div class="w-body-a">
            <div class="w-body-a">
              <ul class="list-unstyled">
                <li class="item-list-a">
                  <i class="bi bi-chevron-right"></i> <a href="#">Site Map</a>
                </li>
                <li class="item-list-a">
                  <i class="bi bi-chevron-right"></i> <a href="#">Legal</a>
                </li>
                <li class="item-list-a">
                  <i class="bi bi-chevron-right"></i> <a href="#">Agent Admin</a>
                </li>
                <li class="item-list-a">
                  <i class="bi bi-chevron-right"></i> <a href="#">Careers</a>
                </li>
                <li class="item-list-a">
                  <i class="bi bi-chevron-right"></i> <a href="#">Affiliate</a>
                </li>
                <li class="item-list-a">
                  <i class="bi bi-chevron-right"></i> <a href="#">Privacy Policy</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="col-sm-12 col-md-4 section-md-t3">
        <div class="widget-a">
          <div class="w-header-a">
            <h3 class="w-title-a text-brand">International sites</h3>
          </div>
          <div class="w-body-a">
            <ul class="list-unstyled">
              <li class="item-list-a">
                <i class="bi bi-chevron-right"></i> <a href="#">Venezuela</a>
              </li>
              <li class="item-list-a">
                <i class="bi bi-chevron-right"></i> <a href="#">China</a>
              </li>
              <li class="item-list-a">
                <i class="bi bi-chevron-right"></i> <a href="#">Hong Kong</a>
              </li>
              <li class="item-list-a">
                <i class="bi bi-chevron-right"></i> <a href="#">Argentina</a>
              </li>
              <li class="item-list-a">
                <i class="bi bi-chevron-right"></i> <a href="#">Singapore</a>
              </li>
              <li class="item-list-a">
                <i class="bi bi-chevron-right"></i> <a href="#">Philippines</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<footer>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <nav class="nav-footer">
          <ul class="list-inline">
            <li class="list-inline-item">
              <a href="#">Home</a>
            </li>
            <li class="list-inline-item">
              <a href="#">About</a>
            </li>
            <li class="list-inline-item">
              <a href="#">Property</a>
            </li>
            <li class="list-inline-item">
              <a href="#">Blog</a>
            </li>
            <li class="list-inline-item">
              <a href="#">Contact</a>
            </li>
          </ul>
        </nav>
        <div class="socials-a">
          <ul class="list-inline">
            <li class="list-inline-item">
              <a href="#">
                <i class="bi bi-facebook" aria-hidden="true"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="bi bi-twitter" aria-hidden="true"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="bi bi-instagram" aria-hidden="true"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="bi bi-linkedin" aria-hidden="true"></i>
              </a>
            </li>
          </ul>
        </div>
        <div class="copyright-footer">
          <p class="copyright color-text-a">
            &copy; Copyright
            <span class="color-a">EstateAgency</span> All Rights Reserved.
          </p>
        </div>
        <div class="credits">
          <!--
          All the links in the footer should remain intact.
          You can delete the links only if you purchased the pro version.
          Licensing information: https://bootstrapmade.com/license/
          Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=EstateAgency
        -->
          Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
      </div>
    </div>
  </div>
</footer><!-- End  Footer -->

<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="assets/js/main.js"></script>

</body>

</html>