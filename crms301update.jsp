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
	String borrowersname = request.getParameter("f3");
	String shortname = request.getParameter("f4");
	String credittype = request.getParameter("f5");
	String creditpurpose = request.getParameter("f6");
	String creditlimit = request.getParameter("f7");
	String outstandingamount1 = request.getParameter("f8");
	String effectivedate = request.getParameter("f9");
	String repaymentmode1 = request.getParameter("f10");
	String performancestatus1 = request.getParameter("af11");
	String interestrate1 = request.getParameter("af12");
	String finacialinstitutionrating = request.getParameter("af13");
	String securitytype = request.getParameter("af14");
	String detailsofsecurity = request.getParameter("af15");
	String ownerofsecurity = request.getParameter("af16");
	String borrowercodeofsecurityowner = request.getParameter("af17");
	String securityvalue = request.getParameter("af18");
	String valuer = request.getParameter("af19");
	String valuationdate = request.getParameter("af20");
	String expirydate1 = request.getParameter("bf21");
	String chargedamount = request.getParameter("bf22");
	String restructuredfacility = request.getParameter("bf23");
	String dateofrestructure = request.getParameter("bf24");
	String previouslimit = request.getParameter("bf25");
	String restructurelimit = request.getParameter("bf26");
	String outstandingamount2 = request.getParameter("bf27");
	String expirydate2 = request.getParameter("bf28");
	String repaymentmode2 = request.getParameter("bf29");
	String performancestatus2 = request.getParameter("bf30");
	String interestrate2 = request.getParameter("cf31");
	String reasonforrestructure = request.getParameter("cf32");
	

	PreparedStatement pst=cn.prepareStatement("Update crms301 set [30013Credit Loan ID] =?, [10003CBN BORROWER CODE] = ?, [10001Borrowers Name] = ?, [10002Short Name] = ?, [30001Credit type] = ?, [30002Credit purpose] = ?, [30003Credit limit] = ?,[30004Outstanding Amount] = ?, [30007Repayment agreement mode] = ?, [30008Performance repayment status] = ?, [30009Interest rate] = ?, [30010Financial Institution rating] = ?, [30014Security type] = ?, [30015Details of security] = ?,[30016Owner of security] = ?, [30017Borrower code of  security owner] = ?, [30018Security value] = ?, [30019Valuer] = ?, [30020Valuation date] = ?, [30021Expiry date] = ?, [30022Charged Amount] = ?, [30301Date of restructure] = ?, [30302Previous limit] = ?, [30303Restructured limit] = ?, [30304Outstanding Amount] = ?, [30305Expiry date] = ?, [30306Repayment agreement / mode] = ?, [30307Performance/repayment status] = ?, [30308Interest rate] = ?, [30309Reason(s) for restructuring] = ? where [S_NO] = ?");
	pst.setString(1, creditloanid);
	pst.setString(2, cbnborrowercode);
	pst.setString(3, borrowersname);
	pst.setString(4, shortname);
	pst.setString(5, credittype);
	pst.setString(6, creditpurpose);
	pst.setString(7, creditlimit);
	pst.setString(8, outstandingamount1);
	pst.setString(9, repaymentmode1);
	pst.setString(10, performancestatus1);
	pst.setString(11, interestrate1);
	pst.setString(12, finacialinstitutionrating);
	pst.setString(13, securitytype);
	pst.setString(14, detailsofsecurity);
	pst.setString(15, ownerofsecurity);
	pst.setString(16, borrowercodeofsecurityowner);
	pst.setString(17, securityvalue);
	pst.setString(18, valuer);
	pst.setString(19, valuationdate);
	pst.setString(20, expirydate1);
	pst.setString(21, chargedamount);
	pst.setString(22, dateofrestructure);
	pst.setString(23, previouslimit);
	pst.setString(24, restructurelimit);
	pst.setString(25, outstandingamount2);
	pst.setString(26, expirydate2);
	pst.setString(27, repaymentmode2);
	pst.setString(28, performancestatus2);
	pst.setString(29, interestrate2);
	pst.setString(30, reasonforrestructure);
	pst.setString(31, sno);
	
	int flag=pst.executeUpdate();
	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>
<SCRIPT Language = "JavaScript">
    alert("Update Successful");
    window.location = 'crms301View.jsp';
</SCRIPT>
