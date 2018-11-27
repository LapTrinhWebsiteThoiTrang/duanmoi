package Controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Usert_Khach_Hang;

@WebServlet("/DangNhap_DangKi")
public class DangNhap_DangKi extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DangNhap_DangKi() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fun=request.getParameter("fun");
		if(fun!=null && fun.equalsIgnoreCase("DangNhap"))
		{
			check_dang_nhap(request,response);
		}
		
		else if(fun!=null && fun.equalsIgnoreCase("DangKi"))
		{
			create_user(request,response);
		}
	}

	private void create_user(HttpServletRequest request, HttpServletResponse response) throws IOException {
		try {
			Usert_Khach_Hang user= new Usert_Khach_Hang();
			String tk=request.getParameter("Email");
			String mk=request.getParameter("Password");
			user.UserName=tk;
			user.PassWork=mk;
			ResultSet resultSet=(ResultSet)user.Check_User();
			while(resultSet.next())
			{
				int value=resultSet.getInt("value");
				if(value==0)
				{
					user.create_User();
					response.getWriter().write("true");
				}
					
				else
					response.getWriter().write("false");
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		
		
	}

	private void check_dang_nhap(HttpServletRequest request, HttpServletResponse response) throws IOException {
		try {
			Usert_Khach_Hang user= new Usert_Khach_Hang();
			String tk=(String)request.getParameter("UserName");
			String mk=(String)request.getParameter("Password");
			user.UserName=tk;
			user.PassWork=mk;
			ResultSet resultSet=user.Check_Login();
			while(resultSet.next())
			{
				int value=resultSet.getInt("value");
				if(value==1)
					response.getWriter().write("true");
				else
					response.getWriter().write("false");
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}

}
