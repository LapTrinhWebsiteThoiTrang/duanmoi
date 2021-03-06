package Controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import Library.Class_San_Pham;
import Model.San_pham;


@WebServlet("/Cart")
public class Control_Cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ArrayList<Class_San_Pham> Arr_class_san_pham=new ArrayList<Class_San_Pham>();
    public Control_Cart() {
    	
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		RequestDispatcher dispatcher =request.getRequestDispatcher("cart.jsp");
		if(request.getParameter("Maloai")!=null)
		{
			Class_San_Pham class_san_pham=new Class_San_Pham();
			class_san_pham.MaLoai=(String)request.getParameter("Maloai");
			class_san_pham.MaSanPham=(String)request.getParameter("MaSanPham");
			class_san_pham.TenSanPham=(String)request.getParameter("TenSanPham");
			class_san_pham.MoTaSanPham=(String)request.getParameter("MoTaSanPham");
			class_san_pham.DonGia=Integer.parseInt(request.getParameter("DonGia"));
			class_san_pham.Sale=Integer.parseInt(request.getParameter("Sale"));
			class_san_pham.Hinh=(String)request.getParameter("Hinh");

			Arr_class_san_pham.add(class_san_pham);
			HttpSession  session=request.getSession();
			session.setAttribute("Arr_class_san_pham", Arr_class_san_pham);
		}
		dispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
