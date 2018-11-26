package Model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ChiTietHoaDon {
	private ResultSet res;
	private Database data;
	public String MaSanPham;
	public String MaHoaDon;
	public String Size ="M";
	public int SoLuong=1;
	public int DonGia;
	
	
	public ChiTietHoaDon() throws ClassNotFoundException, SQLException {
		 this.data=new Database();
		}
	
	public void ThemChiTietHoaDon(String MaHoaDon,String MaSanPham,String size,int SoLuong,int DonGia)
	{
		String sql="ThemChiTietHoaDon "+MaHoaDon+","+MaSanPham+","+size+","+SoLuong+","+DonGia;
		this.data.executeQuerryNoResultSet(sql);
		
	}
	
	
	

}
