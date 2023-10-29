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
	String businessname = request.getParameter("f1");
	String shortname = request.getParameter("f2");
	String businessstatus = request.getParameter("f3");
	String occupationtype = request.getParameter("f4");
	String idtype = request.getParameter("f5");
	String iddetails = request.getParameter("f6");
	String dateofregistration = request.getParameter("f7");
	String registeredbusinessaddress = request.getParameter("f8");
	String currentbusinessaddress = request.getParameter("f9");
	String postaladdress = request.getParameter("f10");
	String telephonenumber = request.getParameter("af11");
	String emailaddress = request.getParameter("af12");
	String banker = request.getParameter("af13");
	String referees = request.getParameter("af14");
	String financialyearend = request.getParameter("af15");
	String Lastauditeddate = request.getParameter("af16");
	String AuthorizedCapital = request.getParameter("af17");
	String PaidupCapital = request.getParameter("af18");
	String Reserves =  request.getParameter("af19");
	String Unappropriatedprofit = request.getParameter("af20");

	PreparedStatement pst=cn.prepareStatement("Update crms200 set [20001Borrowers Business Name] =?, [10002Short Name] = ?, [20004Business Status] = ?, [20005Business Occupation type] = ?, [11111ID Type] = ?, [20006ID Details] = ?, [20007Date of Registration] = ?,[20008Registered business address] = ?, [20009Current business address] = ?, [20010Postal address] = ?, [20011Telephone number] = ?, [20012E-mail address] = ?, [20013Bankers] = ?, [20014Referees] = ?, [20015Financial Year End] = ?,[20016Last audited unaudited account date] = ?, [20017Authorized Capital] = ?, [20018Paid-up Capital] = ?, [20019Reserves] = ?, [20020Unappropriated profit accumulated loss] = ? where [S_NO] = ?");
	pst.setString(1, businessname);
	pst.setString(2, shortname);
	pst.setString(3, businessstatus);
	pst.setString(4, occupationtype);
	pst.setString(5, idtype);
	pst.setString(6, iddetails);
	pst.setString(7, dateofregistration);
	pst.setString(8, registeredbusinessaddress);
	pst.setString(9, currentbusinessaddress);
	pst.setString(10, postaladdress);
	pst.setString(11, telephonenumber);
	pst.setString(12, emailaddress);
	pst.setString(13, banker);
	pst.setString(14, referees);
	pst.setString(15, financialyearend);
	pst.setString(16, Lastauditeddate);
	pst.setString(17, AuthorizedCapital);
	pst.setString(18, PaidupCapital);
	pst.setString(19, Reserves);
	pst.setString(20, Unappropriatedprofit);
	pst.setString(21, sno);

	int flag=pst.executeUpdate();
	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>
<SCRIPT Language = "JavaScript">
    alert("Update Successful");
    window.location = 'crms200View.jsp';
</SCRIPT>
