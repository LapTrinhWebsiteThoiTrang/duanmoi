package Model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class San_pham {
	private ResultSet res;
	private Database data;
	public San_pham() throws ClassNotFoundException, SQLException {
	 this.data=new Database();
	}
	public ResultSet getSan_pham() {
		String Sqlquerry="exec Lay_san_pham_theo_ma_loai 'aothun_woman'";
		return this.data.executeQuerry(Sqlquerry);
	}	
	public ResultSet getSan_pham_ma_loai(String Maloai) {
		String Sqlquerry="select * from LaySanPhamTheoMa('" + Maloai+"')";
		return this.data.executeQuerry(Sqlquerry);
	}
	public ResultSet getSan_pham_ma_san_pham(String MaSanPham) {
		String Sqlquerry="select * from LaySanPhamTheoMaSanPham('" +MaSanPham+"')";
		return this.data.executeQuerry(Sqlquerry);
	}
	
}
