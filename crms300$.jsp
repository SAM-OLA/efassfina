<%@ page import="java.sql.*, cbnbas.crms.connect"%>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from crms300");
		while(rs.next())
		{
			cn++;
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>

<html>

<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Cube CBN EFASS System - CRMS 300</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--mstheme--><link rel="stylesheet" href="file:///C:/DOCUME~1/FAVOUR~1/LOCALS~1/Temp/FrontPageTempDir/mstheme/poetic/poet1111.css">

<meta name="Microsoft Theme" content="poetic 1111, default">
</head>
<SCRIPT language="JavaScript1.2">
  function doClickAll(form) {
	for (var i = 0; i < form.elements.length; i++) {
		if ( form.elements[i].type == "checkbox" ) {
			if ( ! form.elements[i].checked ) { form.elements[i].click();
			}
		}
    }
	return true;
  }

  function doUnClickAll(form) {
	for (var i = 0; i < form.elements.length; i++) {
		if ( form.elements[i].type == "checkbox" ) {
			if (  form.elements[i].checked ) { form.elements[i].checked = false;
			}
		}
	}
	return true;
  }
</SCRIPT>


<body>
<center>
<jsp:include flush="true" page="header.jsp"/>
<br>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="1154">
  <tr>
    <td width="73">
    <b><font color="#336699" size="2">
    <a href='crmstoc.jsp'>CRMS TOC</a> </font></b> </td>
    <td width="1063">
<p align="center"><b><font color="#336699" size="2">RETURN FOR CREDIT PROFILE -RETURN- CRMS 300</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

    <table width=1000 border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
    <form action="crms300$.jsp" method="post">
     <td width=250><b><font color="#336699" size="2">&nbsp;New_Entries</font></b></td>&nbsp; <td>
     <b><font color="#336699" size="2">
     <input type="text" name="count" value="0" size="20"> </font></b>
	 </td>
	 <td>
     <input name="submit" value= "    OK    " type="submit" > 
	</td>
	</form>
  </tr>

 	<tr>
 	<form action="crms300customise.jsp" method="post">
 	<td width="250" align="center"><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">S_NO</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">10001Borrowers Name (M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">10002Short Name (M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">10003CBN BORROWER CODE</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30001Credit type -((M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30002Credit purpose  (M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30003Credit limit  -(M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30004Outstanding Amount (M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30005Effective date (M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30006Expiry date (M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30007Repayment agreement / mode (M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30008Performance/repayment status (M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30009Interest rate (M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30010Financial Institution rating (M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30011Syndication type - yes/no (M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30012Syndication Status  - lead/member (O)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30014Security type  (from security codes) (M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30015Details of security (M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30016Owner of security (M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30017Borrower code of  security owner (system generated)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30018Security value   N000 (M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30019Valuer  (M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30020Valuation date (M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30021Expiry date (M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30022Charged Amount N000(M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30023Direct Liability-  Guarantors Name (M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30024Guarantors ID Details</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30025Guarantors code  (M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30026Amount guaranteed (M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30027Location of Guaranteed Amount (M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30028Type of Indirect Contingent Liability(M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30029Details of Contingent Liability(M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30030Value of Contingent Liability (M)</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">30031Expiry Date(M)</font></b></td>
	</tr>
    <%
    	try
		{
    	String count=request.getParameter("count");
    	int cnt=Integer.parseInt(count);
    	String f1="", f2="", f3="", f4="", f5="", f6="", f7="", f8="", f9="", f10="",f11="", f12="", f13="", f14="", f15="", f16="", f17="", f18="", f19="", f20="",f21="", f22="", f23="", f24="", f25="", f26="", f27="", f28="", f29="", f30="", f31="", f32="", f33="";
    	out.println("<form action=\"sbr1905_dircustomise.jsp\" method=\"post\">");
    	for(int i=1;i<=cn;i++) 
    	{
    			Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from crms300 where S_NO='"+i+"'");
			Statement stCreditType =cnn.createStatement();
			ResultSet rsCreditType = stCreditType.executeQuery("select * from CRMS300CreditType");
			Statement stCreditPurpose =cnn.createStatement();
			ResultSet rsCreditPurpose = stCreditPurpose.executeQuery("select * from CRMS300CreditPurpose");
			Statement stRepaymentStatus =cnn.createStatement();
			ResultSet rsRepaymentStatus = stRepaymentStatus.executeQuery("select * from CRMS300RepaymentStatus");
			Statement stContingentLiability =cnn.createStatement();
			ResultSet rsContingentLiability = stContingentLiability.executeQuery("select * from CRMS300ContingentLiability");
			Statement stFinInstRating =cnn.createStatement();
			ResultSet rsFinInstRating = stFinInstRating.executeQuery("select * from CRMS300FinInstRating");
			Statement stGuarantorsIDDetails =cnn.createStatement();
			ResultSet rsGuarantorsIDDetails = stGuarantorsIDDetails.executeQuery("select * from CRMS300GuarantorsIDDetails");
			Statement stSyndicationType =cnn.createStatement();
			ResultSet rsSyndicationType = stSyndicationType.executeQuery("select * from CRMS300SyndicationType");
			Statement stSyndicationType2 =cnn.createStatement();
			ResultSet rsSyndicationType2 = stSyndicationType2.executeQuery("select * from CRMS300SyndicationType2");
			Statement stSecurityType =cnn.createStatement();
			ResultSet rsSecurityType = stSecurityType.executeQuery("select * from CRMS300SecurityType");


			while(rs.next())
			{
				f1=rs.getString(2);
				f2=rs.getString(3);
				f3=rs.getString(4);
				f4=rs.getString(5);
				f5=rs.getString(6);
				f6=rs.getString(7);
				f7=rs.getString(8);
				f8=rs.getString(9);
				f9=rs.getString(10);
				f10=rs.getString(11);
				f11=rs.getString(12);
				f12=rs.getString(13);
				f13=rs.getString(14);
				f14=rs.getString(15);
				f15=rs.getString(16);
				f16=rs.getString(17);
				f17=rs.getString(18);
				f18=rs.getString(19);
				f19=rs.getString(20);
				f20=rs.getString(21);
				f21=rs.getString(22);
				f22=rs.getString(23);
				f23=rs.getString(24);
				f24=rs.getString(25);
				f25=rs.getString(26);
				f26=rs.getString(27);
				f27=rs.getString(28);
				f28=rs.getString(29);
				f29=rs.getString(30);
				f30=rs.getString(31);
				f31=rs.getString(32);
				f32=rs.getString(33);
				f33=rs.getString(34);
				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'}\"</td>");
	    			out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
    				out.println("<td ><input type=\"text\" name=\"f1" +i+ "\" value=\""+f1+"\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f2" +i+ "\" value=\""+f2+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f3" +i+ "\" value=\""+f3+"\"></td >");
				out.println("<td ><select name=\"f4" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsCreditType.next())
					{
						String str1 = rsCreditType.getString(1);
						String str2 = rsCreditType.getString(2);
        					if(f4.equals(str1))
        					{
							out.println("<option selected value="+str1+">"+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value="+str1+">"+str2+"</option>");
        					}
        						out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><select name=\"f5" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsCreditPurpose.next())
					{
						String str1 = rsCreditPurpose.getString(1);
						String str2 = rsCreditPurpose.getString(2);
        					if(f5.equals(str1))
        					{
							out.println("<option selected value="+str1+">"+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value="+str1+">"+str2+"</option>");
        					}
        						out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><input type=\"text\" name=\"f6" +i+ "\" value=\""+f6+"\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f7" +i+ "\" value=\""+f7+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f8" +i+ "\" value=\""+f8+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f9" +i+ "\" value=\""+f9+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f10" +i+ "\" value=\""+f10+"\"></td >");
				out.println("<td ><select name=\"af11" +i+ "\">");
				out.println("<option value=''>------------------Select------------------</option>");
				while(rsRepaymentStatus.next())
					{
						String str1 = rsRepaymentStatus.getString(1);
						String str2 = rsRepaymentStatus.getString(2);
        					if(f11.equals(str1))
        					{
							out.println("<option selected value="+str1+">"+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value="+str1+">"+str2+"</option>");
        					}
        						out.println("<br>");
					}
        			out.println("</select></td>");

    				out.println("<td ><input type=\"text\" name=\"af12" +i+ "\" value=\""+f12+"\"></td >");
				out.println("<td ><select name=\"af13" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsFinInstRating.next())
					{
						String str1 = rsFinInstRating.getString(1);
						String str2 = rsFinInstRating.getString(2);
        					if(f13.equals(str1))
        					{
							out.println("<option selected value=\""+str1+"\">"+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value=\""+str1+"\">"+str2+"</option>");
        					}
        						out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><select name=\"af14" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsSyndicationType2.next())
					{
						String str1 = rsSyndicationType2.getString(1);
						String str2 = rsSyndicationType2.getString(2);
        					if(f14.equals(str1))
        					{
							out.println("<option selected value="+str1+">"+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value="+str1+">"+str2+"</option>");
        					}
        						out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><select name=\"af15" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsSyndicationType.next())
					{
						String str1 = rsSyndicationType.getString(1);
						String str2 = rsSyndicationType.getString(2);
        					if(f15.equals(str1))
        					{
							out.println("<option selected value="+str1+">"+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value="+str1+">"+str2+"</option>");
        					}
        						out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><select name=\"af16" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsSecurityType.next())
					{
						String str1 = rsSecurityType.getString(1);
						String str2 = rsSecurityType.getString(2);
        					if(f16.equals(str1))
        					{
							out.println("<option selected value="+str1+">"+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value="+str1+">"+str2+"</option>");
        					}
        						out.println("<br>");
					}
        			out.println("</select></td>");
	
	    			out.println("<td ><input type=\"text\" name=\"af17" +i+ "\" value=\""+f17+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"af18" +i+ "\" value=\""+f18+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"af19" +i+ "\" value=\""+f19+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"af20" +i+ "\" value=\""+f20+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"bf21" +i+ "\" value=\""+f21+"\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"bf22" +i+ "\" value=\""+f22+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"bf23" +i+ "\" value=\""+f23+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"bf24" +i+ "\" value=\""+f24+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"bf25" +i+ "\" value=\""+f25+"\"></td >");
				out.println("<td ><select name=\"bf26" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsGuarantorsIDDetails.next())
					{
						String str1 = rsGuarantorsIDDetails.getString(1);
						String str2 = rsGuarantorsIDDetails.getString(2);
        					if(f26.equals(str1))
        					{
							out.println("<option selected value="+str1+">"+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value="+str1+">"+str2+"</option>");
        					}
        						out.println("<br>");
					}
        			out.println("</select></td>");
				out.println("<td ><input type=\"text\" name=\"bf27" +i+ "\" value=\""+f27+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"bf28" +i+ "\" value=\""+f28+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"bf29" +i+ "\" value=\""+f29+"\"></td >");
				out.println("<td ><select name=\"bf30" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsContingentLiability.next())
					{
						String str1 = rsContingentLiability.getString(1);
						String str2 = rsContingentLiability.getString(2);
        					if(f30.equals(str1))
        					{
							out.println("<option selected value="+str1+">"+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value="+str1+">"+str2+"</option>");
        					}
        						out.println("<br>");
					}
        			out.println("</select></td>");
				out.println("<td ><input type=\"text\" name=\"cf31" +i+ "\" value=\""+f31+"\"></td >");
    				out.println("<td ><input type=\"text\" name=\"cf32" +i+ "\" value=\""+f32+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"cf33" +i+ "\" value=\""+f33+"\"></td >");
				out.println("</tr> ");

			}
    		
    	}
    	int ccn=cnt+cn;
    	int ccn2=ccn;
    	int cv=cn+1;
    	int cv2=ccn+1;
    	if(cn==0)
    	{
    		cn=1;
    		ccn=ccn+1;
    		ccn2=ccn2;
    		cv=1;
    		cv2=ccn;
    	}
    	for(int i=cv;i<cv2;i++) 
    	{
				Statement stCreditType =cnn.createStatement();
				ResultSet rsCreditType = stCreditType.executeQuery("select * from CRMS300CreditType");
				Statement stCreditPurpose =cnn.createStatement();
				ResultSet rsCreditPurpose = stCreditPurpose.executeQuery("select * from CRMS300CreditPurpose");
				Statement stRepaymentStatus =cnn.createStatement();
				ResultSet rsRepaymentStatus = stRepaymentStatus.executeQuery("select * from CRMS300RepaymentStatus");
				Statement stContingentLiability =cnn.createStatement();
				ResultSet rsContingentLiability = stContingentLiability.executeQuery("select * from CRMS300ContingentLiability");
				Statement stFinInstRating =cnn.createStatement();
				ResultSet rsFinInstRating = stFinInstRating.executeQuery("select * from CRMS300FinInstRating");
				Statement stGuarantorsIDDetails =cnn.createStatement();
				ResultSet rsGuarantorsIDDetails = stGuarantorsIDDetails.executeQuery("select * from CRMS300GuarantorsIDDetails");
				Statement stSyndicationType =cnn.createStatement();
				ResultSet rsSyndicationType = stSyndicationType.executeQuery("select * from CRMS300SyndicationType");
				Statement stSyndicationType2 =cnn.createStatement();
				ResultSet rsSyndicationType2 = stSyndicationType2.executeQuery("select * from CRMS300SyndicationType2");
				Statement stSecurityType =cnn.createStatement();
				ResultSet rsSecurityType = stSecurityType.executeQuery("select * from CRMS300SecurityType");


				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'}\"</td>");
    				out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
    				out.println("<td ><input type=\"text\" name=\"f1" +i+ "\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f2" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f3" +i+ "\"></td >");
				out.println("<td ><select name=\"f4" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsCreditType.next())
					{
						String str1 = rsCreditType.getString(1);
						String str2 = rsCreditType.getString(2);
        					out.println("<option value="+str1+">"+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><select name=\"f5" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsCreditPurpose.next())
					{
						String str1 = rsCreditPurpose.getString(1);
						String str2 = rsCreditPurpose.getString(2);
        					out.println("<option value="+str1+">"+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><input type=\"text\" name=\"f6" +i+ "\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f7" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f8" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f9" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f10" +i+ "\"></td >");
				out.println("<td ><select name=\"af11" +i+ "\">");
				out.println("<option value=''>------------------Select------------------</option>");
				while(rsRepaymentStatus.next())
					{
						String str1 = rsRepaymentStatus.getString(1);
						String str2 = rsRepaymentStatus.getString(2);
        					out.println("<option value="+str1+">"+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

    				out.println("<td ><input type=\"text\" name=\"af12" +i+ "\"></td >");
				out.println("<td ><select name=\"af13" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsFinInstRating.next())
					{
						String str1 = rsFinInstRating.getString(1);
						String str2 = rsFinInstRating.getString(2);
        					out.println("<option value="+str1+">"+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><select name=\"af14" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsSyndicationType2.next())
					{
						String str1 = rsSyndicationType2.getString(1);
						String str2 = rsSyndicationType2.getString(2);
        					out.println("<option value="+str1+">"+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><select name=\"af15" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsSyndicationType.next())
					{
						String str1 = rsSyndicationType.getString(1);
						String str2 = rsSyndicationType.getString(2);
        					out.println("<option value="+str1+">"+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><select name=\"af16" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsSecurityType.next())
					{
						String str1 = rsSecurityType.getString(1);
						String str2 = rsSecurityType.getString(2);
        					out.println("<option value="+str1+">"+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

    				out.println("<td ><input type=\"text\" name=\"af17" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"af18" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"af19" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"af20" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"bf21" +i+ "\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"bf22" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"bf23" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"bf24" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"bf25" +i+ "\"></td >");
				out.println("<td ><select name=\"bf26" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsGuarantorsIDDetails.next())
					{
						String str1 = rsGuarantorsIDDetails.getString(1);
						String str2 = rsGuarantorsIDDetails.getString(2);
        					out.println("<option value="+str1+">"+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");
    				out.println("<td ><input type=\"text\" name=\"bf27" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"bf28" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"bf29" +i+ "\"></td >");
				out.println("<td ><select name=\"bf30" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsContingentLiability.next())
					{
						String str1 = rsContingentLiability.getString(1);
						String str2 = rsContingentLiability.getString(2);
        					out.println("<option value="+str1+">"+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><input type=\"text\" name=\"cf31" +i+ "\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"cf32" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"cf33" +i+ "\"></td >");
		 		out.println("</tr> ");
    	}
		out.println("</table>");
    	out.println("<input type=\"hidden\" name=\"cnt\" value="+ccn2+">");
    	out.println("<table><tr><td><input name=\"submit\" value= \"SUBMIT\" type=\"submit\"></td></tr></table>");
    	out.println("</p>");
		out.println("</form>");
		}
		catch(Exception e)
		{
			out.print(e.toString());
		}
    %>
     
	
	</td>
  </tr>
   
  
    
  </table>
  </center>
</div>

</div>

</div>

</body>

</html>