package org.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.mis.ConnectionProvider;
import org.model.bean.SolveBean;


public class SolveDao {
	public int insert(SolveBean bean)
	{
		String solve=bean.getAns();
		String qno=bean.getQno();
		Connection con;
		PreparedStatement pstm;
		int i=0;
		try {
            con = ConnectionProvider.createC();
            System.out.println("Connection established"); // Add this line for debugging
            pstm = con.prepareStatement("update contact set isanswered=? where query_number=?");
            pstm.setString(1, solve); // set isanswered
            pstm.setString(2, qno);   // set qno

            i = pstm.executeUpdate();
            System.out.println("Update executed. Rows affected: " + i); // Add this line for debugging

        } catch (Exception e) {
            e.printStackTrace(); // Add this line for debugging
            // Handle exception appropriately (e.g., log it)
        }
		return i;
	}
}
