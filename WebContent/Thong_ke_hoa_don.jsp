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
                <!--<ul id="menu">
                            <li>Quản lý Sản phẩm</li>
                            <li>Quản lý Người dùng</li>
                            <li>Thống kê hóa đơn</li>
                        </ul>-->
                <div class="positionMenu" class="list-group">
                    <a href="Quan_li_san_pham.jsp" class="list-group-item list-group-item-action list-group-item-secondary">Quản lý Sản phẩm</a>
                    <a href="Quan_li_nguoi_dung.jsp" class="list-group-item list-group-item-action list-group-item-secondary">Quản lý Người dùng</a>
                    <a href="Thong_ke_hoa_don.jsp" class="list-group-item list-group-item-action list-group-item-secondary">Thống kê hóa đơn</a>
                </div>
            </div>
            <div class="khungHienThi">
                <div class="khungTenDanhMuc">
                    <p id="textTenDanhMuc"><b>HÓA ĐƠN</b></p>
                    <div class="timkiemSP">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </div>
                </div>
                <div class="khungchuaNoiDungQuanLi">
                    <div>
                        <nav class="nav nav-pills nav-justified">
                            <a class="nav-link active" href="#">Tất cả</a>
                            <a class="nav-link" href="#">Hoàn Thành</a>
                            <a class="nav-link" href="#">Đã Duyệt Nhưng Chưa Hoàn Thành</a>
                            <a class="nav-link" href="#">Chưa Duyệt</a>
                        </nav>
                    </div>

                    <div class="infor-hoadon">
                        <table id="table">
                            <tr>
                                <th>Mã đơn hàng</th>
                                <th>Mã khách hàng</th>
                                <th>Tên khách hàng</th>
                                <th>Ngày lập hóa đơn</th>
                                <th>Tổng tiền</th>
                                <th>Tình trạng</th>
                                <th>Lệnh</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>1</td>
                                <td>Phạm Thái Vĩnh</td>
                                <td>28-03-2018</td>
                                <td>240000</td>
                                <td>Hoàn Thành</td>
                                <td><a href="Chi_tiet_HD.jsp">Chi tiết</a></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>2</td>
                                <td>Võ Phước Sơn</td>
                                <td>28-03-2018</td>
                                <td>199000</td>
                                <td>Chưa Duyệt</td>
                                <td><a href="#">Duyệt</a></td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>3</td>
                                <td>Nguyễn Văn A</td>
                                <td>28-03-2018</td>
                                <td>5000000</td>
                                <td>Đã Duyệt</td>
                                <td>
                                    <a style="color: red" href="#">Hủy</a>
                                </td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>4</td>
                                <td>Phạm Văn B</td>
                                <td>28-03-2018</td>
                                <td>540000</td>
                                <td>Đã Duyệt<br> Nhưng Chưa Hoàn Thành </td>
                                <td><a href="Chi_tiet_HD.jsp">Hoàn Thành</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>

        </div>



        <script src="js/bootstrap.min.js"></script>
    </body>

    </html>