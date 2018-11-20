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
import Model.Hoa_Don;
/**
 * Servlet implementation class Control_Load_HoaDon
 */
@WebServlet("/Control_Load_HoaDon")
public class Control_Load_HoaDon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Control_Load_HoaDon() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Hoa_Don hd;
		RequestDispatcher dispatcher =request.getRequestDispatcher("Thong_ke_hoa_don.jsp");
		try {
			hd= new Hoa_Don();
			ResultSet rs1= hd.layHoa_Don();
			request.setAttribute("LoadHoaDon", rs1);
			dispatcher.forward(request, response);
		}
		catch (ClassNotFoundException | SQLException e2) {
			e2.printStackTrace();
			
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
