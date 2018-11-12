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
import javax.swing.JOptionPane;

import Model.San_pham;


@WebServlet("/index")
public class Control_index extends HttpServlet {
	private static final long serialVersionUID = 1L;


    public Control_index() {
        super();
		

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		San_pham sp;
		RequestDispatcher dispatcher =request.getRequestDispatcher("index.jsp");
		try {
			sp = new San_pham();
			ResultSet rs= sp.getSan_pham_ma_loai("aothun_woman");
			request.setAttribute("DSSP", rs);
		} catch (ClassNotFoundException | SQLException e2) {
			e2.printStackTrace();
		}
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		San_pham sp;
		try {
			sp = new San_pham();
			
			ResultSet rs= sp.getSan_pham();
			try {
				System.out.println(rs.getString(0));
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (ClassNotFoundException | SQLException e1) {
			e1.printStackTrace();
		}
	}

}
