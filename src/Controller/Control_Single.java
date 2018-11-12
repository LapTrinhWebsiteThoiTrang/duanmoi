package Controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Model.San_pham;

@WebServlet("/Single")
public class Control_Single extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Control_Single() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		San_pham sp;
		String MaSanPham=request.getParameter("MaSanPham");
		RequestDispatcher dispatcher=request.getRequestDispatcher("single.jsp");
		try {
			
			sp = new San_pham();
			ResultSet rs= sp.getSan_pham_ma_san_pham(MaSanPham);
			
			request.setAttribute("SP", rs);
		} catch (ClassNotFoundException | SQLException e2) {
			e2.printStackTrace();
		}
	dispatcher.forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
