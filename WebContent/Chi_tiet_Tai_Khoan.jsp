<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Document</title>
        <link rel="stylesheet" href="public/css/bootstrap.css">
        <link rel="stylesheet" href="public/css/header.css">
        <link rel="stylesheet" href="public/css/QuanLiSPAdmin.css">
        <link rel="stylesheet" href="public/css/Chi_tiet_TK.css">
    </head>

    <body>
        <header>
            <div class="header">
                <p id="WebsiteName">WEBSITE</p>
                <div class="container-dx">
                    <p id="nameAdmin">VinhPham</p>
                    <p id="nameDX">Đăng xuất</p>
                </div>
            </div>
        </header>
        <div class="khungTong">
            <div class="khung">
                <div class="positionMenu" class="list-group">
                    <a href="Quan_li_san_pham.jsp" class="list-group-item list-group-item-action list-group-item-secondary">Quản lý Sản phẩm</a>
                    <a href="Quan_li_nguoi_dung.jsp" class="list-group-item list-group-item-action list-group-item-secondary">Quản lý Người dùng</a>
                    <a href="Thong_ke_hoa_don.jsp" class="list-group-item list-group-item-action list-group-item-secondary">Thống kê hóa đơn</a>
                </div>
            </div>
            <div class="khungHienThi">
                <div class="khungTenDanhMuc">
                    <p id="textTenDanhMuc"><b>Vinh1</b></p>
                    <div class="timkiemSP">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </div>
                </div>
                <div class="thongtinchung">
                    <div class="thongtin__infor">
                        <div class="thongtinchung__img">
                            <img src="image/Nón bé trai/nbt1.jpg" alt="">
                        </div>
                        <ul>
                            <li>Họ và Tên : Phạm Thái Vĩnh</li>
                            <li>Ngày sinh : 25-4-1998</li>
                            <li>Số Điện Thoại : 0167 555 3796</li>
                            <li>Địa chỉ : 64/2 Dân chủ Bình Thọ Thủ Đức</li>
                            <li>Email : phamthaivinh3796@gmail.com</li>
                        </ul>
                    </div>
                    <div class="button-group">
                        <button class="btn btn-primary">Sửa</button>
                        <button class="btn btn-danger">Xóa</button>
                    </div>
                </div>
                <div class="infor-lichsu">
                    <div class="infor-chonlua">
                        <ul class="nav nav-tabs">
                            <li class="nav-item">
                                <a class="nav-link active" href="#">Các SP đã mua</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Các SP đã xem</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Giỏ hàng</a>
                            </li>

                        </ul>
                    </div>
                    <div class="spdaxem">
                        <div class="spdaxem__item">
                            <div class="spdaxem__img">
                                <img src="image/Quần jean bé gái/qjbg10.jpg" alt="">
                            </div>
                            <div class="spdaxem__thongtin">
                                <h3>tenSP</h3>
                                <h3>Gia</h3>
                            </div>
                        </div>
                        <div class="spdaxem__item">
                            <div class="spdaxem__img">
                                <img src="image/Quần jean bé gái/qjbg10.jpg" alt="">
                            </div>
                            <div class="spdaxem__thongtin">
                                <h3>tenSP</h3>
                                <h3>Gia</h3>
                            </div>
                        </div>
                        <div class="spdaxem__item">
                            <div class="spdaxem__img">
                                <img src="image/Quần jean bé gái/qjbg10.jpg" alt="">
                            </div>
                            <div class="spdaxem__thongtin">
                                <h3>tenSP</h3>
                                <h3>Gia</h3>
                            </div>
                        </div>
                        <div class="spdaxem__item">
                            <div class="spdaxem__img">
                                <img src="image/Quần jean bé gái/qjbg10.jpg" alt="">
                            </div>
                            <div class="spdaxem__thongtin">
                                <h3>tenSP</h3>
                                <h3>Gia</h3>
                            </div>
                        </div>
                        <div class="spdaxem__item">
                            <div class="spdaxem__img">
                                <img src="image/Quần jean bé gái/qjbg10.jpg" alt="">
                            </div>
                            <div class="spdaxem__thongtin">
                                <h3>tenSP</h3>
                                <h3>Gia</h3>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>



        <script src="js/bootstrap.min.js"></script>
    </body>


    </html>