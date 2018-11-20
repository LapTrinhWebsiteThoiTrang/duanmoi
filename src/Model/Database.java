package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.microsoft.sqlserver.jdbc.SQLServerDriver;

public class Database {

	private String port="1433";
<<<<<<< HEAD
	private String hostname = "192.168.0.122";
=======
	private String hostname = "192.168.1.8";
>>>>>>> d8f453d8625b70c7b971e828e8e9fd52f2d90eaf
	private String database="websiteThoiTrang";
	private String userName="thanhweb";
	private String password="soncay";
	private Connection cont;
	private Statement st;
	private ResultSet rs;
	
	public Database() throws ClassNotFoundException, SQLException
	{
		String strConnt="jdbc:sqlserver://"+hostname+":"+port+";Instance=MSSQLSERVER;databaseName="+database;
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		this.cont = DriverManager.getConnection(strConnt,userName,password);
	}
	public void closeConnection()
	{
		try {
			if(cont.isClosed()==false)
			{
				cont.close();
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	public ResultSet executeQuerry(String sqlquerry)
	{
		try {
			st = (Statement) this.cont.createStatement();
			rs = st.executeQuery(sqlquerry);
			return rs;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

}
