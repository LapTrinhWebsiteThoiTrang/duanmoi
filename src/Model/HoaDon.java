package Model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLException;
public class HoaDon {
	private ResultSet res;
	private Database data;
	String MaKhachHang;
	String MaHoaDon;
	String TongTien;
	public HoaDon() throws ClassNotFoundException, SQLException {
		 this.data=new Database();
	}
	public void ThemHoaDon(String MaKhachHang,int TongTien)
	{
		String sql="InsertHoaDon "+MaKhachHang+","+TongTien;
		this.data.executeQuerry(sql);
	}
	
	public String MaHoaDonKhiIsert()
	{
		String sqlquerry="select dbo.PhatSinhMaHoaDon()";
		String kq=null;
		ResultSet resultSet=this.data.executeQuerry(sqlquerry);
		try {
			while (resultSet.next())
			{
				kq= resultSet.getString(0);
				return  kq;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return kq;
	}

}
