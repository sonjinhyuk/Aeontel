package com.Aeontel.classes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Aeontel.util.DBmanager;


public class ClassesDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private DBmanager dbMBmanager;
	public void insertClass(String classKind){
		dbMBmanager = new DBmanager();
		try {
			conn = dbMBmanager.getConn();
			StringBuffer sql = new StringBuffer();
			sql.append("INSERT INTO `class1` (`class1_cd`, `class1_name`) VALUES \n");
			sql.append("\t('A11', '물품기부 & 대여')");
			
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			try {
				dbMBmanager.allclose(conn, pstmt, rs);
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
}
