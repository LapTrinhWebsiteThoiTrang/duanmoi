<%@page import="java.util.Vector"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">

	<% 
		ResultSet LoadHoaDon = (ResultSet)request.getAttribute("LoadHoaDon");
	%>
	
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
                    <a href="LoadSP" class="list-group-item list-group-item-action list-group-item-secondary">Quản lý Sản phẩm</a>
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
                        </nav>
                    </div>

                    <div class="infor-hoadon">
                        <table id="table">
                            <tr>
                                <th>Mã đơn hàng</th>
                                <th>Mã khách hàng</th>
                                <th>Ngày lập hóa đơn</th>
                                <th>Tổng tiền</th>

                            </tr>
                            <%
                            	while(LoadHoaDon.next()){
                            %>
                            <tr>
                                <td><%= LoadHoaDon.getString("MaHoaDon") %></td>
                                <td><%= LoadHoaDon.getString("MaKhachHang") %></td>
                                <td><%= LoadHoaDon.getString("NgayLapHoaDon") %></td>
                                <td><%= LoadHoaDon.getInt("TongTien") %></td>
                            </tr>
                          <% } %>
                        </table>
                    </div>
                </div>
            </div>

        </div>



        <script src="js/bootstrap.min.js"></script>
    </body>

    </html>