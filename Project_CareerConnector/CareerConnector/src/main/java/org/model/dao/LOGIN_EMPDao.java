package org.model.dao;
import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import org.mis.ConnectionProvider;
import org.model.bean.UserEmpBean;

public class LOGIN_EMPDao 
{
public boolean login(UserEmpBean bean) 
{
	String email = bean.getEmail();
	String pass = bean.getPass();
	Connection con;
	PreparedStatement pstm;
	ResultSet rs;
	boolean status = false;
	try 
	{
	con = ConnectionProvider.createC();
	pstm = con.prepareStatement("select * from employer where e_email = ? and cpass = ?");
	pstm.setString(1, email);
	pstm.setString(2, pass);
	rs = pstm.executeQuery();
	status = rs.next();
	}
	catch(Exception e) {}
	return status;
}
//public UserEmpBean getProfile(String email)
//{
//	Connection con;
//	UserEmpBean ueUserEmpBean = new UserEmpBean();
//	
//	Statement pstm;
//	ResultSet rs;
//	boolean status = false;
//	try 
//	{
//	con = ConnectionProvider.createC();
//	pstm = con.createStatement();
//	ResultSet executeQuery = pstm.executeQuery("select * from employer where e_email ="+email);
//	while(executeQuery.next()) {
//		ueUserEmpBean.setEname(executeQuery.getString("ename"));
//		ueUserEmpBean.setE_email(executeQuery.getString("e_email"));
//		ueUserEmpBean.setName(executeQuery.getString("cname"));
//		ueUserEmpBean.setType(executeQuery.getString("ctype"));
//		ueUserEmpBean.setLoc(executeQuery.getString("clocation"));
//		ueUserEmpBean.setEmail(executeQuery.getString("cemail"));
//		ueUserEmpBean.setCphn(executeQuery.getString("cphone"));
//		ueUserEmpBean.setClic(executeQuery.getString("clicense"));
//		ueUserEmpBean.setCans(executeQuery.getString("canswer"));
//		ueUserEmpBean.setPass(executeQuery.getString("cpass"));
//		ueUserEmpBean.setDesig(executeQuery.getString("desig"));
//		ueUserEmpBean.setComp_ln(executeQuery.getString("comp_ln"));
//		ueUserEmpBean.setLogo(executeQuery.getString("logo"));
//		ueUserEmpBean.setComp_web(executeQuery.getString("comp_web"));
//		ueUserEmpBean.setDomains(executeQuery.getString("domains"));
//		ueUserEmpBean.setComp_about(executeQuery.getString("comp_about"));	
//	}
//	}
//	catch(Exception e) {}
//	return ueUserEmpBean;
//}
}