package Model;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Usert_Khach_Hang {

		public String UserName;
		public String PassWork;

	
		private ResultSet res;
		private Database data;
		public Usert_Khach_Hang() throws ClassNotFoundException, SQLException {
		 this.data=new Database();
		}
		public ResultSet Check_Login()
		{
			String sqlquerry="select dbo.Check_Login("+UserName+","+PassWork+") as value";
			return data.executeQuerry(sqlquerry);
		}
		public ResultSet Check_User()
		{
			String sqlquerry="select dbo.Check_User("+UserName+") as value";
			return data.executeQuerry(sqlquerry);
		}
		public void create_User()
		{
			String sqlquerry="execute Isert_User  "+UserName+", "+PassWork;
			data.executeQuerryNoResultSet(sqlquerry);
		}
}
