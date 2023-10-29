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
	String cbnborrowercode = request.getParameter("f1");
	String borrowersname = request.getParameter("f2");
	String shortname = request.getParameter("f3");
	String credittype = request.getParameter("f4");
	String creditpurpose = request.getParameter("f5");
	String creditlimit = request.getParameter("f6");
	String outstandingamount = request.getParameter("f7");
	String effectivedate = request.getParameter("f8");
	String expirydate1 = request.getParameter("f9");
	String repaymentmode = request.getParameter("f10");
	String performancestatus = request.getParameter("af11");
	String interestrate = request.getParameter("af12");
	String finacialinstitutionrating = request.getParameter("af13");
	String syndicationtype = request.getParameter("af14");
	String syndicationstatus = request.getParameter("af15");
	String securitytype = request.getParameter("af16");
	String detailsofsecurity = request.getParameter("af17");
	String ownerofsecurity = request.getParameter("af18");
	String borrowercodeofsecurityowner = request.getParameter("af19");
	String securityvalue = request.getParameter("af20");
	String valuer = request.getParameter("bf21");
	String valuationdate = request.getParameter("bf22");
	String expirydate2 = request.getParameter("bf23");
	String chargedamount = request.getParameter("bf24");
	String directliability = request.getParameter("bf25");
	String guarantoriddetails = request.getParameter("bf26");
	String guarantorcode = request.getParameter("bf27");
	String amountguaranteed = request.getParameter("bf28");
	String locationofguaranteedamount = request.getParameter("bf29");
	String typeofindirectcontingent = request.getParameter("bf30");
	String detailsofindirectcontingent = request.getParameter("cf31");
	String valueofindirectcontingent = request.getParameter("cf32");
	String expirydate3 = request.getParameter("cf33");
	

	PreparedStatement pst=cn.prepareStatement("Update crms300 set [10003CBN BORROWER CODE] =?, [10001Borrowers Name] = ?, [10002Short Name] = ?, [30001Credit type] = ?, [30002Credit purpose] = ?, [30003Credit limit] = ?, [30004Outstanding Amount] = ?,[30005Effective date] = ?, [30006Expiry date] = ?, [30007Repayment agreement / mode] = ?, [30008Performance/repayment status] = ?, [30009Interest rate] = ?, [30010Financial Institution rating] = ?, [30011Syndication type] = ?, [30012Syndication Status] = ?,[30014Security type] = ?, [30015Details of security] = ?, [30016Owner of security] = ?, [30017Borrower code of  security owner] = ?, [30018Security value] = ?, [30019Valuer] = ?, [30020Valuation date] = ?, [30021Expiry date] = ?, [30022Charged Amount] = ?, [30023Direct Liability-  Guarantors Name] = ?, [30024Guarantors ID Details] = ?, [30025Guarantors code] = ?, [30026Amount guaranteed] = ?, [30027Location of Guaranteed Amount] = ?, [30028Type of Indirect Contingent Liability] = ?, [30029Details of Contingent Liability] = ?, [30030Value of Contingent Liability] = ?, [30031Expiry Date] = ? where [S_NO] = ?");
	pst.setString(1, cbnborrowercode);
	pst.setString(2, borrowersname);
	pst.setString(3, shortname);
	pst.setString(4, credittype);
	pst.setString(5, creditpurpose);
	pst.setString(6, creditlimit);
	pst.setString(7, outstandingamount);
	pst.setString(8, effectivedate);
	pst.setString(9, expirydate1);
	pst.setString(10, repaymentmode);
	pst.setString(11, performancestatus);
	pst.setString(12, interestrate);
	pst.setString(13, finacialinstitutionrating);
	pst.setString(14, syndicationtype);
	pst.setString(15, syndicationstatus);
	pst.setString(16, securitytype);
	pst.setString(17, detailsofsecurity);
	pst.setString(18, ownerofsecurity);
	pst.setString(19, borrowercodeofsecurityowner);
	pst.setString(20, securityvalue);
	pst.setString(21, valuer);
	pst.setString(22, valuationdate);
	pst.setString(23, expirydate2);
	pst.setString(24, chargedamount);
	pst.setString(25, directliability);
	pst.setString(26, guarantoriddetails);
	pst.setString(27, guarantorcode);
	pst.setString(28, amountguaranteed);
	pst.setString(29, locationofguaranteedamount);
	pst.setString(30, typeofindirectcontingent);
	pst.setString(31, detailsofindirectcontingent);
	pst.setString(32, valueofindirectcontingent);
	pst.setString(33, expirydate3);
	pst.setString(34, sno);



	int flag=pst.executeUpdate();
	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>
<SCRIPT Language = "JavaScript">
    alert("Update Successful");
    window.location = 'crms300View.jsp';
</SCRIPT>
