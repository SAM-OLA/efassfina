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
	String sno = request.getParameter("cnt");
	String corporateborrowerscode = request.getParameter("f1");
	String directorscode = request.getParameter("f2");
	String directorsname = request.getParameter("f3");
	String shortname = request.getParameter("f4");
	String idtype = request.getParameter("f5");
	String iddetails = request.getParameter("f6");
	String equityownership = request.getParameter("f7");
	String positionheld = request.getParameter("f8");
	String liability = request.getParameter("f9");
	String nationality = request.getParameter("f10");
	String residentialaddress = request.getParameter("af11");
	String permanenthomeaddress = request.getParameter("af12");
	String postaladdress = request.getParameter("af13");
	String dateofbirth = request.getParameter("af14");
	String stateoforigin = request.getParameter("af15");
	String localgovtarea = request.getParameter("af16");
	String telephonenumber = request.getParameter("af17");
	String emailaddress= request.getParameter("af18");
	String profession = request.getParameter("af19");
	
	

	PreparedStatement pst=cn.prepareStatement("Update crms201 set [CorporateBorrowersCode] =?, [DirectorsCode] =?, [20101DirectorsFullName] =?, [10002Short Name] = ?, [11111ID TYPE] = ?, [20113ID DETAILS] = ?,[20103Equity ownership] = ?, [20104Position held/status] = ?, [20105Liability as guarantor] = ?, [20106Nationality] = ?, [20107Residential address] = ?,[20108Permanent  home address] = ?, [20109Postal address] = ?, [20110Date of birth] = ?, [20111State of origin] = ?, [20112Local Govt Area] = ?, [20114Telephone number] = ?,[20115E-mail address] = ?, [20116Profession/Occupation] = ? where [S_NO] = ?");
	pst.setString(1, corporateborrowerscode);
	pst.setString(2, directorscode);
	pst.setString(3, directorsname);
	pst.setString(4, shortname);
	pst.setString(5, idtype);
	pst.setString(6, iddetails);
	pst.setString(7, equityownership);
	pst.setString(8, positionheld);
	pst.setString(9, liability);
	pst.setString(10, nationality);
	pst.setString(11, residentialaddress);
	pst.setString(12, permanenthomeaddress);
	pst.setString(13, postaladdress);
	pst.setString(14, dateofbirth);
	pst.setString(15, stateoforigin);
	pst.setString(16, localgovtarea);
	pst.setString(17, telephonenumber);
	pst.setString(18, emailaddress);
	pst.setString(19, profession);
	pst.setString(20, sno);
	int flag=pst.executeUpdate();
	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>
<SCRIPT Language = "JavaScript">
    alert("Update Successful");
    window.location = 'crms201View.jsp';
</SCRIPT>
