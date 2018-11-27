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
		String sql="InsertKhachHang N'"+ TenKhachHang +  "', '"+Email+"','"+SDT+"',N'"+DiaChi+"'";
		this.data.executeQuerryNoResultSet(sql);
	}
	public String MaKhachHangKhiIsert()
	{
		String sqlquerry="select dbo.PhatSinhMaKhachHang() as MKH";
		String kq=null;
		ResultSet resultSet=this.data.executeQuerry(sqlquerry);
			try {
				
				while (resultSet.next() && resultSet.getRow() > 0)
				{
					kq= resultSet.getString("MKH");
					return  kq;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		return kq;
	}


}
