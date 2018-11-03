package Controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import Model.San_pham;

/**
 * Servlet implementation class C_san_pham
 */
@WebServlet("/C_san_pham")
public class C_san_pham extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public C_san_pham() {
        super();
		System.out.print("Insert your age: ");

        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Insert your age: ");
		San_pham sp;
		try {
			sp = new San_pham();
			ResultSet rs= sp.getSan_pham();
			while(rs.next()) {
				System.out.println(rs.getString("MaSanPham") + ";" + rs.getString("TenSanPham"));
			} 
		} catch (ClassNotFoundException | SQLException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		San_pham sp;
		try {
			sp = new San_pham();
			ResultSet rs= sp.getSan_pham();
			try {
				System.out.println(rs.getString(0));
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (ClassNotFoundException | SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

}
