<!--
@author D & T Solutions
-->
<%@ page import="java.sql.*, cbnbas.qdfir.connect"%>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from qdfir541");
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
<title>Cube CBN EFASS System - QDFIR 541</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!--mstheme--><link rel="stylesheet" href="poet1111.css">
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
    <a href='qdfirtoc.jsp'>QDFIR TOC</a> </font></b> </td>
    <td width="1063">
<p align="center"><b><font color="#336699" size="2">QDFIR 541 - SCHEDULE OF OTHER SHORT TERM INVESTMENTS</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>
    
    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
        <form action="qdfir541$.jsp" method="post" name="form541">
     <td><b><font color="#336699" size="2">&nbsp;New_Entries</font></b></td>&nbsp; <td>
     <b><font color="#336699" size="2">
     <input type="text" name="count" value="0" size="20"> </font></b>
	 </td>
	 <td>
     <b><font color="#336699" size="2">
     <input name="submit" value= "    OK    " type="submit" > </font></b> 
	</td>
	</form>
  </tr>

 	<tr>
 	<form action="qdfir541Customise.jsp" method="post">
 	<td><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All</font></b></td>
	<td align="center"><b><font color="#336699" size="2">S_NO</font></b></td>
	<td align="center"><b><font color="#336699" size="2">CUSTOMER</font></b></td>
	<td align="center"><b><font color="#336699" size="2">AMOUNT INVESTED</font></b></td>
	<td align="center"><b><font color="#336699" size="2">INV. CERT NO</font></b></td>
	<td align="center"><b><font color="#336699" size="2">TENOR</font></b></td>
	<td align="center"><b><font color="#336699" size="2">EFFECTIVE DATE</font></b></td>
	<td align="center"><b><font color="#336699" size="2">MATURITY DATE</font></b></td>
	<td align="center"><b><font color="#336699" size="2">INTEREST RATE</font></b></td>
	<td align="center"><b><font color="#336699" size="2">UPFRONT INTEREST PAID</font></b></td>
	<td align="center"><b><font color="#336699" size="2">ACCRUED INT. PAYABLE</font></b></td>
	<td align="center"><b><font color="#336699" size="2">TIMES ROLLED OVER</font></b></td>
	<td align="center"><b><font color="#336699" size="2">PRINCIPAL PAYABLE</font></b></td>
	<td align="center"><b><font color="#336699" size="2">TOTAL ACCRUED PRINCIPAL/INTEREST</font></b></td>
	<td align="center"><b><font color="#336699" size="2">REMARKS</font></b></td>


	
	
	
	</tr>
    <%
    	try
		{
    	String count=request.getParameter("count");
    	int cnt=Integer.parseInt(count);
    	String f1="", f2="", f3="", f4="", f5="", f6="", f7="", f8="", f9="", f10="", f11="", f12="", f13="";    	
    	out.println("<form action=\"sbr1905_dircustomise.jsp\" method=\"post\">");
    	for(int i=1;i<cn;i++) 
    	{
    			Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("SELECT * FROM QDFIR541 where S_NO='"+i+"'");
			//ResultSet rs=st2.executeQuery("SELECT QDFIR541.S_NO, QDFIR541.Customer, QDFIR541.AmountInvested, QDFIR541.InvCertNo, QDFIR541.Tenor, QDFIR541.EffectiveDate, QDFIR541.MATURITYDATE, QDFIR541.INTERESTRATE, QDFIR541.UpfrontInterestPaid, QDFIR541.AccruedInterestPayable, QDFIR541.TIMESROLLEDOVER, QDFIR541.PrincipalPayable, QDFIR541.TotalAccruedInterest, QDFIR541.REMARKS FROM QDFIR541 where S_NO='"+i+"'");
			Statement stBanks =cnn.createStatement();
			ResultSet rsBanks = stBanks.executeQuery("select * from BANKS");


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
				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'} del()\"</td>");
				out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
				out.println("<td ><input type=\"text\" name=\"f1" +i+ "\" size=\"62\" value=\""+f1+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f2" +i+ "\" value=\""+f2+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f3" +i+ "\" value=\""+f3+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f4" +i+ "\" value=\""+f4+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f5" +i+ "\" value=\""+f5+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f6" +i+ "\" value=\""+f6+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f7" +i+ "\" value=\""+f7+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f8" +i+ "\" value=\""+f8+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f9" +i+ "\" value=\""+f9+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f10" +i+ "\" value=\""+f10+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"af11" +i+ "\" value=\""+f11+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"af12" +i+ "\" value=\""+f12+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"af13" +i+ "\" value=\""+f13+"\"></td >");	
				out.println("</tr> ");

				
			}

    		
    	}
    	int ccn=cnt+cn;
    	int ccn2=ccn-1;
    	if(cn==0)
    	{
    		cn=1;
    		ccn=ccn+1;
    		ccn2=ccn2+1;
    	}
    	for(int i=cn;i<ccn;i++) 
    	{
				Statement stBanks =cnn.createStatement();
				ResultSet rsBanks = stBanks.executeQuery("select * from BANKS");
				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'} del()\"</td>");
				out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
				out.println("<td ><input type=\"text\" name=\"f1" +i+ "\" size=\"62\"  value=\"0\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f2" +i+ "\"  value=\"0\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f3" +i+ "\"  value=\"0\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f4" +i+ "\"  value=\"0\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f5" +i+ "\"  value=\"0\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f6" +i+ "\"  value=\"0\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f7" +i+ "\"  value=\"0\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f8" +i+ "\"  value=\"0\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f9" +i+ "\"  value=\"0\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f10" +i+ "\"  value=\"0\"></td >");	
				out.println("<td ><input type=\"text\" name=\"af11" +i+ "\"  value=\"0\"></td >");	
				out.println("<td ><input type=\"text\" name=\"af12" +i+ "\"  value=\"0\"></td >");	
				out.println("<td ><input type=\"text\" name=\"af13" +i+ "\"  value=\"0\"></td >");	

				out.println("</tr> ");

    	}
	    	String ss1="";
    		Statement st2=cnn.createStatement();
		ResultSet rs=st2.executeQuery("select * from qdfir541 where S_NO='T_99999'");
		while(rs.next())
		{
			ss1=String.valueOf(rs.getString(3));
		}
	    	out.println("<tr >");	
	    	out.println("<td align=\"left\"><input type=\"text\" readonly ></td >");
		out.println("<td><input type=\"text\" readonly value=\"T_99999\" name=\"total1\"></td >");
		out.println("<td><input type=\"text\" name=\"total2\" size=\"62\" value=\"0\"></td >");
		out.println("<td><input type=\"text\" name=\"total3\" value="+ss1+"></td >");
		out.println("<td><input type=\"text\" name=\"total4\" value=\"0\"></td >");
		out.println("<td><input type=\"text\" name=\"total5\" value=\"0\"></td >");
		out.println("<td><input type=\"text\" name=\"total6\" value=\"0\"></td >");
		out.println("<td><input type=\"text\" name=\"total7\" value=\"0\"></td >");
		out.println("<td><input type=\"text\" name=\"total8\" value=\"0\"></td >");
		out.println("<td><input type=\"text\" name=\"total9\" value=\"0\"></td >");
		out.println("<td><input type=\"text\" name=\"total10\" value=\"0\"></td >");
		out.println("<td><input type=\"text\" name=\"total11\" value=\"0\"></td >");
		out.println("<td><input type=\"text\" name=\"total12\" value=\"0\"></td >");
		out.println("<td><input type=\"text\" name=\"total13\" value=\"0\"></td >");
		out.println("<td><input type=\"text\" name=\"total14\" value=\"0\"></td >");

		out.println("</tr>");
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