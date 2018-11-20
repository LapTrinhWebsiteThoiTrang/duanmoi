package Model;
import java.sql.ResultSet;
import java.sql.SQLException;


public class KhachHang {

	private ResultSet res;
	private Database data;
	public String MaKhachHang;
	public String TenKhachHang;
	public String SDT;
	public String Email;
	public String GiChu;
	public String DiaChi;
	public KhachHang() throws ClassNotFoundException, SQLException {
		this.data=new Database();
	}
	public void ThemKhachHang()
	{
		this.data.executeQuerry("ThemKhachHang("+TenKhachHang+","+Email+","+SDT+","+DiaChi+")");
	}
	public String MaKhachHangKhiIsert()
	{
		String sqlquerry="select dbo.PhatSinhMaKhachHang()";
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
