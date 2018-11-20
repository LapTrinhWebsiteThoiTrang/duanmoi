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

/**
 * Servlet implementation class Control_Load_SP
 */
@WebServlet("/LoadSP")
public class Control_Load_SP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Control_Load_SP() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		San_pham sp;
		String MaLoai= request.getParameter("MaLoai");
		RequestDispatcher dispatcher =request.getRequestDispatcher("Quan_li_san_pham.jsp");
		try {
				//	"children_aothun_boy";
			sp = new San_pham();						
			ResultSet rs2= sp.TraLoaiSP();
			request.setAttribute("LSP", rs2);
			if(MaLoai!=null)
			{
				ResultSet rs1= sp.laySanPhamTheoLoai(MaLoai);	
				request.setAttribute("DSSP", rs1);
				LayTenLoai(request, response, "MaLoai");
			}		
		} catch (ClassNotFoundException | SQLException e2) {
			e2.printStackTrace();
		}
		
		String MaSanPhamCanXoa=request.getParameter("MaSanPhamCanXoa");
		if(MaSanPhamCanXoa!=null)
		{
			XoaSP(request,response,MaSanPhamCanXoa);
		}
		
		dispatcher.forward(request, response);
	}
	@SuppressWarnings("null")
	private void XoaSP(HttpServletRequest request, HttpServletResponse response, String MaSanPhamCanXoa) throws ServletException, IOException{
		San_pham sp = null;
		String MaSP=MaSanPhamCanXoa;
		try {
			sp=new San_pham();
			ResultSet rs1= sp.XoaSanPhamKhiBietMa(MaSP);
			request.setAttribute("XoaSP", rs1);
		}
		catch (ClassNotFoundException | SQLException e2) {
			e2.printStackTrace();
		} 
	}
	private void LayTenLoai(HttpServletRequest request, HttpServletResponse response, String MaLoai) throws ClassNotFoundException, SQLException {
		San_pham sp;
		sp=new San_pham();
		if(MaLoai==null)
		{
			MaLoai="children_aokhoac_boy";
		}
		ResultSet rs3= (ResultSet)sp.LayTenLoai(MaLoai);
		request.setAttribute("LTL", rs3);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
