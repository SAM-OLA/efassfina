<!--
@author D & T Solutions
-->
<%@ page import="java.sql.*, cbnbas.crms.connect"%>
<%!
	Connection cn=null;
	String code;

%>
<%
	try
	{
	connect c = new connect();
	cn = c.connectMethod();
	String sno =request.getParameter("cnt");
	String fullname =request.getParameter("f1");
	String shortname =request.getParameter("f2");
	String nationality =request.getParameter("f3");
	String idtype =request.getParameter("f4");
	String iddetails =request.getParameter("f5");
	String residentaddress =request.getParameter("f6");
	String permhomeaddress =request.getParameter("f7");
	String postaladdress =request.getParameter("f8");
	String dateofbirth =request.getParameter("f9");
	String stateoforigin =request.getParameter("f10");
	String localgovtarea =request.getParameter("af11");
	String telephonenumber =request.getParameter("af12");
	String emailaddress =request.getParameter("af13");
	String profession =request.getParameter("af14");
	String qualification =request.getParameter("af15");
	String banker =request.getParameter("af16");
	String referees =request.getParameter("af17");


	PreparedStatement pst=cn.prepareStatement("Update crms100 set [10001Borrowers Full Name] =?, [10002Short Name] = ?, [10004Nationality] = ?, [11111ID Type] = ?, [10011ID Details] = ?, [10005Residential address] = ?, [10006Permanent home address] = ?, [10007Postal address] = ?, [10008Date of birth] = ?,[10009State of origin] = ?, [10010Local Govt Area] = ?, [10012Telephone number] = ?, [10013e-mail address] = ?, [10014Profession/Occupation] = ?, [10015Qualification] = ?,[10016Banker] = ?, [10017Referee] = ? where [S_NO] = ?");
	pst.setString(1, fullname);
	pst.setString(2, shortname);
	pst.setString(3, nationality);
	pst.setString(4, idtype);
	pst.setString(5, iddetails);
	pst.setString(6, residentaddress);
	pst.setString(7, permhomeaddress);
	pst.setString(8, postaladdress);
	pst.setString(9, dateofbirth);
	pst.setString(10, stateoforigin);
	pst.setString(11, localgovtarea);
	pst.setString(12, telephonenumber);
	pst.setString(13, emailaddress);
	pst.setString(14, profession);
	pst.setString(15, qualification);
	pst.setString(16, banker);
	pst.setString(17, referees);
	pst.setString(18, sno);

	int flag=pst.executeUpdate();
	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>
<SCRIPT Language = "JavaScript">
    alert("Update Successful");
    window.location = 'crms100View.jsp';
</SCRIPT>