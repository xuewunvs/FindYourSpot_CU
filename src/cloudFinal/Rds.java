package cloudFinal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


public class Rds {
	static String url = "";
	static String usrDB = "";
	static String password = "";
    public static Statement stmt = Rds.connectDB(url, usrDB, password); 
    
    public static Statement connectDB(String url,String usr,String password){
    	String driver = "com.mysql.jdbc.Driver";
    	Statement statement = null;
    	Connection conn = null;
    	try {
			Class.forName(driver);
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}        	
    	try {
			conn = DriverManager.getConnection(url, usr, password);
			statement = conn.createStatement();
			if(!conn.isClosed()){			
				System.out.println("Connected!");}
		} catch (SQLException e) {
			e.printStackTrace();
		} 
    	return statement;
    }

}
