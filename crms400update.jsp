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
	String creditloanid = request.getParameter("f1");
	String cbnborrowercode = request.getParameter("f2");
	String shortname = request.getParameter("f3");
	String outstandingamount = request.getParameter("f4");
	String performancestatus = request.getParameter("f5");
	String movementtype = request.getParameter("f6");
	

	PreparedStatement pst=cn.prepareStatement("Update crms400 set [30013Credit Loan ID] =?, [10003CBN BORROWER CODE] = ?, [10002Short Name] = ?, [30004Outstanding Amount] = ?, [30008Performance repayment status] = ?, [40001Movement Type] = ? where [S_NO] = ?");
	pst.setString(1, creditloanid);
	pst.setString(2, cbnborrowercode);
	pst.setString(3, shortname);
	pst.setString(4, outstandingamount);
	pst.setString(5, performancestatus);
	pst.setString(6, movementtype);
	pst.setString(7, sno);
	
	int flag=pst.executeUpdate();
	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>
<SCRIPT Language = "JavaScript">
    alert("Update Successful");
    window.location = 'crms400View.jsp';
</SCRIPT>
