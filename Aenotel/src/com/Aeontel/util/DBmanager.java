package com.Aeontel.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBmanager {
	private Connection conn;

	public DBmanager() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
//			conn = DriverManager.getConnection("jdbc:mysql://168.188.127.81:3306/Aeontel", "Aeontel", "Aeontel");
			conn = DriverManager.getConnection("jdbc:mysql://168.188.127.89:3306/Aeontel", "Aeontel", "Aeontel");
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	
	public Connection getConn(){
		return conn;
	}
	public void closeConn( Connection conn){
		try {
			if( conn != null ) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void closePstmt( PreparedStatement pstmt ) {
		try {
			if( pstmt != null ) pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public void closeRs( ResultSet rs ) {
		try {
			if( rs != null ) rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void allclose( Connection conn, PreparedStatement pstmt, ResultSet rs ){
		try {
			closeRs(rs);
			closePstmt(pstmt);
			closeConn(conn);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
