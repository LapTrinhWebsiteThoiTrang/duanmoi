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
		String Sqlquerry="select * from SanPham";
		return this.data.executeQuerry(Sqlquerry);
	}	
}
