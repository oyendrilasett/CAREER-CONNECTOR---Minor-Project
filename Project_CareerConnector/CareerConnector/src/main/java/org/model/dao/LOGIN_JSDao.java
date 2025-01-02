package org.model.dao;
import java.sql.*;

import org.mis.ConnectionProvider;
import org.model.bean.UserBean;
import org.model.bean.UserEmpBean;

public class LOGIN_JSDao {
		public boolean login(UserBean bean)
		{
			String smail=bean.getEmail();
			String spass=bean.getPass();
			Connection con;
			PreparedStatement pstm;
			ResultSet rs;
			boolean status=false;
			try
			{
			con=ConnectionProvider.createC();
			pstm=con.prepareStatement("select *from jobseeker where email=? and pass=?");
			pstm.setString(1,smail);
			pstm.setString(2,spass);
			rs=pstm.executeQuery();
			status=rs.next();
			}
			catch(Exception e) {}
			return status;
}
//		public UserBean getProfile(String email)
//		{
//			Connection con;
//			UserBean ueUserBean = new UserBean();
//			Statement pstm;
//			ResultSet rs;
//			boolean status = false;
//			try 
//			{
//			con = ConnectionProvider.createC();
//			pstm = con.createStatement();
//			ResultSet executeQuery = pstm.executeQuery("select * from jobseeker where email ="+email);
//			while(executeQuery.next()) {
//				ueUserBean.setName(executeQuery.getString("name"));
//				ueUserBean.setPhno(executeQuery.getString("phno"));
//				ueUserBean.setEmail(executeQuery.getString("email"));
//				ueUserBean.setPass(executeQuery.getString("pass"));
//				ueUserBean.setAns(executeQuery.getString("answer"));
//				ueUserBean.setResume(executeQuery.getString("resume_name"));
//				ueUserBean.setProfile(executeQuery.getString("profile"));
//				ueUserBean.setWebsite(executeQuery.getString("website"));
//				ueUserBean.setLn_id(executeQuery.getString("ln_id"));
//				ueUserBean.setGithub(executeQuery.getString("github"));
//				ueUserBean.setAddress(executeQuery.getString("address"));
//				ueUserBean.setBio(executeQuery.getString("bio"));
//				ueUserBean.setQualification(executeQuery.getString("qualification"));
//				ueUserBean.setSkills(executeQuery.getString("skills"));
//				ueUserBean.setExp(executeQuery.getString("exp"));
//				ueUserBean.setProjects(executeQuery.getString("projects"));
//				ueUserBean.setAchieve(executeQuery.getString("achieve"));
//			}}
//			catch(Exception e) {}
//			return ueUserBean;
//		}
}