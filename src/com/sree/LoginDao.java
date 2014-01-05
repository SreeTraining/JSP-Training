/**
 * 
 */
package com.sree;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * @author sreenivasrao.m
 *
 */
public class LoginDao {

	public static boolean validate(UserLoginBean bean){  
		boolean status = false;  
		try{  
			Connection con = ConnectionProvider.getCon();
			PreparedStatement ps = con.prepareStatement("select * from user432 where Email=? and Password=?");
			ps.setString(1,bean.getEmail());
			ps.setString(2, bean.getPass());
			ResultSet rs = ps.executeQuery();  
			status = rs.next();  
			              
		}catch(Exception e){}
			return status;
		}
}
