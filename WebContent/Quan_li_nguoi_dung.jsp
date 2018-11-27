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
                    <a href="Control_Load_SP" class="list-group-item list-group-item-action list-group-item-secondary">Quản lý Sản phẩm</a>
                    <a href="Quan_li_nguoi_dung.jsp" class="list-group-item list-group-item-action list-group-item-secondary">Quản lý Người dùng</a>
                    <a href="Control_Load_HoaDon" class="list-group-item list-group-item-action list-group-item-secondary">Thống kê hóa đơn</a>
                </div>
            </div>
            <div class="khungHienThi">
                <div class="khungTenDanhMuc">
                    <p id="textTenDanhMuc"><b>Danh Sách Tài Khoản</b></p>
                    <div class="timkiemSP">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </div>
                    <button type="button" class="btn btn-success">Thêm Người Dùng</button>
                </div>
                <div class="khungchuaNoiDungQuanLi">
                    <table id="table">
                        <tr>
                            <th>Tài Khoản</th>
                            <th>Mật khẩu</th>
                            <th>Thời gian đăng ký</th>
                            <th>Lần cuối đăng nhập</th>
                            <th>Tổng tiền đã chi</th>
                            <th>Chi tiết</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Vinh1</td>
                            <td>5ab5c5</td>
                            <td>4:32:03 5/6/2018</td>
                            <td>4:52:03 30/6/2018</td>
                            <td>2500000</td>
                            <td><a href="Chi_tiet_Tai_Khoan.jsp">Chi tiết</a></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Vinh2</td>
                            <td>5ab5c5</td>
                            <td>4:32:03 5/6/2018</td>
                            <td>4:52:03 30/6/2018</td>
                            <td>2500000</td>
                            <td><a href="Chi_tiet_Tai_Khoan.jsp">Chi tiết</a></td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Vinh3</td>
                            <td>5ab5c5</td>
                            <td>4:32:03 5/6/2018</td>
                            <td>4:52:03 30/6/2018</td>
                            <td>2500000</td>
                            <td><a href="Chi_tiet_Tai_Khoan.jsp">Chi tiết</a></td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Vinh4</td>
                            <td>5ab5c5</td>
                            <td>4:32:03 5/6/2018</td>
                            <td>4:52:03 30/6/2018</td>
                            <td>2500000</td>
                            <td><a href="Chi_tiet_Tai_Khoan.jsp">Chi tiết</a></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        </div>



        <script src="js/bootstrap.min.js"></script>
    </body>

    </html>