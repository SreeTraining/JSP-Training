/**
 * 
 */
package com.sree;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * @author sreenivasrao.m
 *
 */
public class ConnectionProvider implements Provider{

	private static Connection con = null;  
		static{  
		try{  
			Class.forName(DRIVER);  
			con = DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);  
		} catch(Exception e){}  
	}  
	  
	public static Connection getCon(){  
	    return con;  
	}

}
