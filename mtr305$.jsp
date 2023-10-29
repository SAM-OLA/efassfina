<%@ page import="java.sql.*, cbnbas.mtr.connect"%>
<%!
	Connection cnn=null;
%>
<%
	connect c = new connect();
   		cnn = c.connectMethod();
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from mtr305");
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
<title>CBN EFASS System - MTR 305</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
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
    <a href='mtrtoc.jsp'>MTR TOC</a> </font></b> </td>
    <td width="1063">
<p align="center"><b><font color="#336699" size="2">MTR 305 - DETAILS OF TOTAL FOREX SALES TO END - USERS</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>
    
    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
        <form action="mtr305$.jsp" method="post" name="form305">
     <td><b><font color="#336699" size="2">&nbsp;New_Entries</font></b></td>&nbsp; <td>
     <b><font color="#336699" size="2">
     <input type="text" name="count" value="0" size="20"> </font></b>
	 </td>
	 <td colspan=4>
     <b><font color="#336699" size="2">
     <input name="submit" value= "    OK    " type="submit">--------------------------CUSTOMER--------------------------</font></b> 
	</td>
	</form>
  </tr>

 	<tr>
 	<form action="mtr305customise.jsp" method="post">
 	<td valign="bottom"><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">S_NO</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">FORM NUMBER</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">RC / PASSPORT NUMBER</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">NAME</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">ADDRESS</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">AMOUNT</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">SOURCE OF FUND</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">PURPOSE</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">VISIBLE CODE</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">INVISIBLE CODE</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">VALID</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">TRANSACTION DATE</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">PAYMENT  MODE</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">COUNTRY OF PAYMENT</font></b></td>
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
			ResultSet rs=st2.executeQuery("select * from mtr305 where S_NO='"+i+"'");
			Statement stSourceOfFunds =cnn.createStatement();
			ResultSet rsSourceOfFunds = stSourceOfFunds.executeQuery("select * from SourceOfFunds");
			Statement stVisibleImportExportCode =cnn.createStatement();
			ResultSet rsVisibleImportExportCode = stVisibleImportExportCode.executeQuery("select * from VisibleImportExportCode");
			Statement stInVisibleImportExportCode =cnn.createStatement();
			ResultSet rsInVisibleImportExportCode = stInVisibleImportExportCode.executeQuery("select * from InVisibleImportExportCode");
			Statement stPaymentMode =cnn.createStatement();
			ResultSet rsPaymentMode = stPaymentMode.executeQuery("select * from PaymentMode");
			Statement stCountryOfPayment =cnn.createStatement();
			ResultSet rsCountryOfPayment = stCountryOfPayment.executeQuery("select * from CountryCodes");
			Statement stPurpose =cnn.createStatement();
			ResultSet rsPurpose = stPurpose.executeQuery("select * from mtr305Purpose");
			Statement stValid =cnn.createStatement();
			ResultSet rsValid = stValid.executeQuery("select * from mtr305Valid");


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
 	   			out.println("<td ><input type=\"text\" name=\"f1" +i+ "\" value=\""+f1+"\"></td >");	
     				out.println("<td ><input type=\"text\" name=\"f2" +i+ "\" value=\""+f2+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f3" +i+ "\" value=\""+f3+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f4" +i+ "\" value=\""+f4+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f5" +i+ "\" value=\""+f5+"\"></td >");
				out.println("<td ><select name=\"f6" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsSourceOfFunds.next())
					{
						String str1 = rsSourceOfFunds.getString(1);
						String str2 = rsSourceOfFunds.getString(2);
        					if(f6.equals(str1))
        					{
							out.println("<option selected value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					}
        						out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><select name=\"f7" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsPurpose.next())
					{
						String str1 = rsPurpose.getString(1);
						String str2 = rsPurpose.getString(2);
        					if(f7.equals(str1))
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

				out.println("<td ><select name=\"f8" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsVisibleImportExportCode.next())
					{
						String str1 = rsVisibleImportExportCode.getString(1);
						String str2 = rsVisibleImportExportCode.getString(2);
        					if(f8.equals(str1))
        					{
							out.println("<option selected value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					}
        						out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><select name=\"f9" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsInVisibleImportExportCode.next())
					{
						String str1 = rsInVisibleImportExportCode.getString(1);
						String str2 = rsInVisibleImportExportCode.getString(2);
        					if(f9.equals(str1))
        					{
							out.println("<option selected value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					}
        						out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><select name=\"f10" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsValid.next())
					{
						String str1 = rsValid.getString(1);
						String str2 = rsValid.getString(2);
        					if(f10.equals(str1))
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

				out.println("<td ><input type=\"text\" name=\"f11" +i+ "\" value=\""+f11+"\"></td >");

				out.println("<td ><select name=\"f12" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsPaymentMode.next())
					{
						String str1 = rsPaymentMode.getString(1);
						String str2 = rsPaymentMode.getString(2);
        					if(f12.equals(str1))
        					{
							out.println("<option selected value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					}
        						out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><select name=\"f13" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsCountryOfPayment.next())
					{
						String str1 = rsCountryOfPayment.getString(1);
						String str2 = rsCountryOfPayment.getString(2);
        					if(f13.equals(str1))
        					{
							out.println("<option selected value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					}
        						out.println("<br>");
					}
        			out.println("</select></td>");

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
				Statement stSourceOfFunds =cnn.createStatement();
				ResultSet rsSourceOfFunds = stSourceOfFunds.executeQuery("select * from SourceOfFunds");
				Statement stVisibleImportExportCode =cnn.createStatement();
				ResultSet rsVisibleImportExportCode = stVisibleImportExportCode.executeQuery("select * from VisibleImportExportCode");
				Statement stInVisibleImportExportCode =cnn.createStatement();
				ResultSet rsInVisibleImportExportCode = stInVisibleImportExportCode.executeQuery("select * from InVisibleImportExportCode");
				Statement stPaymentMode =cnn.createStatement();
				ResultSet rsPaymentMode = stPaymentMode.executeQuery("select * from PaymentMode");
				Statement stCountryOfPayment =cnn.createStatement();
				ResultSet rsCountryOfPayment = stCountryOfPayment.executeQuery("select * from CountryCodes");
				Statement stPurpose =cnn.createStatement();
				ResultSet rsPurpose = stPurpose.executeQuery("select * from mtr305Purpose");
				Statement stValid =cnn.createStatement();
				ResultSet rsValid = stValid.executeQuery("select * from mtr305Valid");


				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'}\"</td>");
		    		out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
		    		out.println("<td ><input type=\"text\" name=\"f1" +i+ "\" value=\"0\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f2" +i+ "\" value=\"0\"></td >");
				out.println("<td ><input type=\"text\" name=\"f3" +i+ "\" value=\"0\"></td >");
				out.println("<td ><input type=\"text\" name=\"f4" +i+ "\" value=\"0\"></td >");
				out.println("<td ><input type=\"text\" name=\"f5" +i+ "\" value=\"0.00\"></td >");
				out.println("<td ><select name=\"f6" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsSourceOfFunds.next())
					{
						String str1 = rsSourceOfFunds.getString(1);
						String str2 = rsSourceOfFunds.getString(2);
        					out.println("<option value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><select name=\"f7" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsPurpose.next())
					{
						String str1 = rsPurpose.getString(1);
						String str2 = rsPurpose.getString(2);
        					out.println("<option value=\""+str1+"\">"+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><select name=\"f8" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsVisibleImportExportCode.next())
					{
						String str1 = rsVisibleImportExportCode.getString(1);
						String str2 = rsVisibleImportExportCode.getString(2);
						out.println("<option value=\""+str1+"\">"+str1+" - "+str2+"</option>");
     						out.println("<br>");
					}
        			out.println("</select></td>");
				out.println("<td ><select name=\"f9" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsInVisibleImportExportCode.next())
					{
						String str1 = rsInVisibleImportExportCode.getString(1);
						String str2 = rsInVisibleImportExportCode.getString(2);
        					out.println("<option value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><select name=\"f10" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsValid.next())
					{
						String str1 = rsValid.getString(1);
						String str2 = rsValid.getString(2);
        					out.println("<option value=\""+str1+"\">"+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><input type=\"text\" name=\"f11" +i+ "\" value=\"0\"></td >");


				out.println("<td ><select name=\"f12" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsPaymentMode.next())
					{
						String str1 = rsPaymentMode.getString(1);
						String str2 = rsPaymentMode.getString(2);
        					out.println("<option value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");
				
				out.println("<td ><select name=\"f13" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsCountryOfPayment.next())
					{
						String str1 = rsCountryOfPayment.getString(1);
						String str2 = rsCountryOfPayment.getString(2);
        					out.println("<option value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");


				out.println("</tr> ");

    	}
    	String ss1="", ss2="";
	String ss4="01-01-1900";

    	Statement st2=cnn.createStatement();
		ResultSet rs=st2.executeQuery("select * from mtr305 where S_NO='T_99999'");
		while(rs.next())
		{
			ss1=String.valueOf(rs.getString(6));
		}
	    	out.println("<tr >");	
    		out.println("<td align=\"right\"><input type=\"text\" readonly ></td >");
		out.println("<td ><input type=\"text\" readonly value=\"T_99999\" name=\"total1\"></td >");
		out.println("<td ><input type=\"text\" name=\"total2\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total3\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total4\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total5\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total6\" value="+ss1+"></td >");
		out.println("<td ><input type=\"text\" name=\"total7\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total8\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total9\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total10\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total11\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total12\" value="+ss4+"></td >");
		out.println("<td ><input type=\"text\" name=\"total13\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total14\" value=\"0\"></td >");


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