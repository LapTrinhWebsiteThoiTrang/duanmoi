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
	
	public void ThemChiTietHoaDon(String MaSanPham,String MaHoaDon,String size,int SoLuong,int DonGia)
	{
		String sql="ThemChiTietHoaDon "+MaSanPham+","+MaHoaDon+","+size+","+SoLuong+","+DonGia;
		this.data.executeQuerry(sql);
		
	}
	
	
	

}
