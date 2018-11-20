package Model;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import java.sql.ResultSet;
import java.sql.SQLException;


    public class Hoa_Don {
    	private ResultSet res;
    	private Database data;
    	public Hoa_Don() throws ClassNotFoundException, SQLException {
    	 this.data=new Database();
    	}
    	public ResultSet layHoa_Don() {
    		String Sqlqueery = "exec LoadHoaDon" ;
    		return this.data.executeQuerry(Sqlqueery);
    	}
}
