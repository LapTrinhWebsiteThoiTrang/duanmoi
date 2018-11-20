package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.SessionCookieConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Library.Class_San_Pham;
import Model.ChiTietHoaDon;
import Model.HoaDon;
import Model.KhachHang;

@WebServlet("/Oder")
public class Control_Oder extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ArrayList<Class_San_Pham> listsp=new ArrayList<Class_San_Pham>();
    public Control_Oder() {
    	
        super();
        
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	private void DatHang(HttpServletRequest request, HttpServletResponse response) throws IOException {
			/*HttpSession  session=request.getSession();
			listsp=( ArrayList<Class_San_Pham>)session.getAttribute("Arr_class_san_pham");
			
			ThemChiTietHoaDon(request,response);
			ThemHoaDon(request,response);
			ThemKhachHang(request,response);
			XoaGioHang(request,response);
			*/	
			response.getWriter().write("true");
			
		
	}

	private void XoaGioHang(HttpServletRequest request, HttpServletResponse response) {
		for(int i=0;i<listsp.size();++i)
		{
			listsp.remove(i);
		}
		HttpSession  session=request.getSession();
		session.setAttribute("Arr_class_san_pham", listsp);
		
	}

	private void ThemChiTietHoaDon(HttpServletRequest request, HttpServletResponse response) {
		KhachHang kh;
		HoaDon hd;
		ChiTietHoaDon chitiethd;
		try {
			kh = new KhachHang();
			hd=new HoaDon();
			chitiethd = new ChiTietHoaDon();
			String mahd=hd.MaHoaDonKhiIsert();
			String makh=kh.MaKhachHangKhiIsert();
			for(int i = 0; i< listsp.size(); i++) {
				Class_San_Pham c = listsp.get(i);
				chitiethd.ThemChiTietHoaDon(listsp.get(i).MaSanPham, mahd, "M",  listsp.get(i).SoLuong, listsp.get(i).DonGia);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}

	private void ThemHoaDon(HttpServletRequest request, HttpServletResponse response) {
		try {
			KhachHang kh=new KhachHang();
			HoaDon hd=new HoaDon();
			String makh=kh.MaKhachHangKhiIsert();
			int tongtien=0;
			for(int i = 0; i< listsp.size(); i++) {
				Class_San_Pham c = listsp.get(i);
				tongtien+=c.DonGia*c.SoLuong;
			}
			hd.ThemHoaDon(makh, tongtien);
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	private void ThemKhachHang(HttpServletRequest request, HttpServletResponse response) {
			try {
				KhachHang khachhang=new KhachHang();
				khachhang.TenKhachHang=(String)request.getParameter("hovaten");
				khachhang.Email=(String)request.getParameter("email_order");
				khachhang.SDT=(String)request.getParameter("tel_order");
				String diachi= (String)request.getParameter("diachi")+", "+ (String)request.getParameter("phuongxa")+", "+(String)request.getParameter("quanhuyen")+", "+(String)request.getParameter("tinhthanh");
				khachhang.DiaChi=diachi;
				khachhang.ThemKhachHang();	
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fun= request.getParameter("Dathang");
		if(fun!=null && fun.equalsIgnoreCase("Dathang")&&request.getAttribute("Arr_class_san_pham")!=null)
		{
			DatHang(request,response);
		}
		response.getWriter().write("true");

	}
	

}
