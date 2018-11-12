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

@WebServlet("/Womens")
public class Control_Womens extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Control_Womens() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		San_pham sp;
		String MaLoai=request.getParameter("MaLoai");
		RequestDispatcher dispatcher= request.getRequestDispatcher("womans.jsp");
		try
		{
			sp=new San_pham();
			if(MaLoai == null || MaLoai.length() == 0)
			{
				MaLoai="somi_women";
			}
			ResultSet resultSet= sp.getSan_pham_ma_loai(MaLoai);
			request.setAttribute("DSSP", resultSet);
			
		} catch (ClassNotFoundException | SQLException e2) {
			e2.printStackTrace();
		}
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
