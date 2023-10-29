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
		ResultSet rs=st.executeQuery("select * from mtr214");
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
<title>Cube CBN EFASS System - MTR 214</title>
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
<p align="center"><b><font color="#336699" size="2">MTR 214 - OPERATION OF DOMICILIARY AND EXTERNAL ACCOUNT</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>
    
    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
        <form action="mtr214$.jsp" method="post" name="form214">
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
 	<form action="mtr214customise.jsp" method="post">
 	<td width="250"><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All</font></b></td>
	<td valign="bottom" align="center" ><b><font color="#336699" size="2">S_NO</font></b></td>
	<td valign="bottom" align="center" ><b><font color="#336699" size="2">RC NUMBER</font></b></td>
	<td valign="bottom" align="center" ><b><font color="#336699" size="2">CUSTOMER</font></b></td>
	<td valign="bottom" align="center" ><b><font color="#336699" size="2">OPENING BALANCE</font></b></td>
	<td valign="bottom" align="center" ><b><font color="#336699" size="2">ACCOUNT TYPE</font></b></td>
	<td valign="bottom" align="center" ><b><font color="#336699" size="2">CURRENCY CODE</font></b></td>
	<td valign="bottom" align="center" ><b><font color="#336699" size="2">CLIENT TYPES</font></b></td>
	<td valign="bottom" align="center" ><b><font color="#336699" size="2">ACCOUNT CLASS</font></b></td>
	<td valign="bottom" align="center" ><b><font color="#336699" size="2">LODGEMENT</font></b></td>
	<td valign="bottom" align="center" ><b><font color="#336699" size="2">WITHDRAWAL</font></b></td>
	<td valign="bottom" align="center" ><b><font color="#336699" size="2">CLOSING BALANCE</font></b></td>
	<td valign="bottom" align="center" ><b><font color="#336699" size="2">CREDIT TYPE</font></b></td>
	<td valign="bottom" align="center" ><b><font color="#336699" size="2">DEBIT TYPE</font></b></td>
	</tr>
    <%
    	try
		{
    	String count=request.getParameter("count");
    	int cnt=Integer.parseInt(count);
    	String f1="", f2="", f3="", f4="", f5="", f6="", f7="", f8="", f9="", f10="", f11="", f12="";
    	out.println("<form action=\"sbr1905_dircustomise.jsp\" method=\"post\">");
    	for(int i=1;i<=cn;i++) 
    	{
    			Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from mtr214 where S_NO='"+i+"'");
			Statement stAccountTypeCodes =cnn.createStatement();
			ResultSet rsAccountTypeCodes = stAccountTypeCodes.executeQuery("select * from AccountTypeCodes");
			Statement stCurrencyCodes =cnn.createStatement();
			ResultSet rsCurrencyCodes = stCurrencyCodes.executeQuery("SELECT CurrencyCodes.Code, CurrencyCodes.Description FROM CurrencyCodes ORDER BY CurrencyCodes.Description");
			Statement stClientTypes =cnn.createStatement();
			ResultSet rsClientTypes = stClientTypes.executeQuery("select * from ClientTypes");
			Statement stAccountClassCodes =cnn.createStatement();
			ResultSet rsAccountClassCodes = stAccountClassCodes.executeQuery("select * from AccountClassCodes");
			Statement stCreditTypeCodes =cnn.createStatement();
			ResultSet rsCreditTypeCodes = stCreditTypeCodes.executeQuery("select * from CreditTypeCode");
			Statement stDebitTypeCodes =cnn.createStatement();
			ResultSet rsDebitTypeCodes = stDebitTypeCodes.executeQuery("select * from DebitTypeCode");

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
				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'}\"</td>");
    				out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
	    			out.println("<td ><input type=\"text\" name=\"f1" +i+ "\" value=\""+f1+"\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f2" +i+ "\" value=\""+f2+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f3" +i+ "\" value=\""+f3+"\"></td >");
				out.println("<td ><select name=\"f4" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsAccountTypeCodes.next())
					{
						String str1 = rsAccountTypeCodes.getString(1);
						String str2 = rsAccountTypeCodes.getString(2);
        					if(f4.equals(str1))
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

				out.println("<td ><select name=\"f5" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsCurrencyCodes.next())
					{
						String str1 = rsCurrencyCodes.getString(1);
						String str2 = rsCurrencyCodes.getString(2);
        					if(f5.equals(str1))
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

				out.println("<td ><select name=\"f6" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsClientTypes.next())
					{
						String str1 = rsClientTypes.getString(1);
						String str2 = rsClientTypes.getString(2);
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
				while(rsAccountClassCodes.next())
					{
						String str1 = rsAccountClassCodes.getString(1);
						String str2 = rsAccountClassCodes.getString(2);
        					if(f7.equals(str1))
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

				out.println("<td ><input type=\"text\" name=\"f8" +i+ "\" value=\""+f8+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f9" +i+ "\" value=\""+f9+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f10" +i+ "\" value=\""+f10+"\"></td >");
				out.println("<td ><select name=\"f11" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsCreditTypeCodes.next())
					{
						String str1 = rsCreditTypeCodes.getString(1);
						String str2 = rsCreditTypeCodes.getString(2);
        					if(f11.equals(str1))
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
				out.println("<td ><select name=\"f12" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsDebitTypeCodes.next())
					{
						String str1 = rsDebitTypeCodes.getString(1);
						String str2 = rsDebitTypeCodes.getString(2);
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
				String ss2="0";
				Statement stAccountTypeCodes =cnn.createStatement();
				ResultSet rsAccountTypeCodes = stAccountTypeCodes.executeQuery("select * from AccountTypeCodes");
				Statement stCurrencyCodes =cnn.createStatement();
				ResultSet rsCurrencyCodes = stCurrencyCodes.executeQuery("SELECT CurrencyCodes.Code, CurrencyCodes.Description FROM CurrencyCodes ORDER BY CurrencyCodes.Description");
				Statement stClientTypes =cnn.createStatement();
				ResultSet rsClientTypes = stClientTypes.executeQuery("select * from ClientTypes");
				Statement stAccountClassCodes =cnn.createStatement();
				ResultSet rsAccountClassCodes = stAccountClassCodes.executeQuery("select * from AccountClassCodes");
				Statement stCreditTypeCodes =cnn.createStatement();
				ResultSet rsCreditTypeCodes = stCreditTypeCodes.executeQuery("select * from CreditTypeCode");
				Statement stDebitTypeCodes =cnn.createStatement();
				ResultSet rsDebitTypeCodes = stDebitTypeCodes.executeQuery("select * from DebitTypeCode");

				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'}\"</td>");
    				out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
		    		out.println("<td ><input type=\"text\" name=\"f1" +i+ "\" value="+ss2+"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f2" +i+ "\" value="+ss2+"></td >");
				out.println("<td ><input type=\"text\" name=\"f3" +i+ "\" value="+ss2+"></td >");
				out.println("<td ><select name=\"f4" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsAccountTypeCodes.next())
					{
						String str1 = rsAccountTypeCodes.getString(1);
						String str2 = rsAccountTypeCodes.getString(2);
        					out.println("<option value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><select name=\"f5" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsCurrencyCodes.next())
					{
						String str1 = rsCurrencyCodes.getString(1);
						String str2 = rsCurrencyCodes.getString(2);
        					out.println("<option value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><select name=\"f6" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsClientTypes.next())
					{
						String str1 = rsClientTypes.getString(1);
						String str2 = rsClientTypes.getString(2);
        					out.println("<option value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><select name=\"f7" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsAccountClassCodes.next())
					{
						String str1 = rsAccountClassCodes.getString(1);
						String str2 = rsAccountClassCodes.getString(2);
        					out.println("<option value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><input type=\"text\" name=\"f8" +i+ "\" value="+ss2+"></td >");
				out.println("<td ><input type=\"text\" name=\"f9" +i+ "\" value="+ss2+"></td >");
				out.println("<td ><input type=\"text\" name=\"f10" +i+ "\" value="+ss2+"></td >");
				out.println("<td ><select name=\"f11" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsCreditTypeCodes.next())
					{
						String str1 = rsCreditTypeCodes.getString(1);
						String str2 = rsCreditTypeCodes.getString(2);
        					out.println("<option value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");
				out.println("<td ><select name=\"f12" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsDebitTypeCodes.next())
					{
						String str1 = rsDebitTypeCodes.getString(1);
						String str2 = rsDebitTypeCodes.getString(2);
        					out.println("<option value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

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