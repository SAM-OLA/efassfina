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
		ResultSet rs=st.executeQuery("select * from mtr204");
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
<title>Cube CBN EFASS System - MTR 204</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
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
<p align="center"><b><font color="#336699" size="2">MTR 204 - CAPTURE IMPORT REGISTRATION</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>
    
    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
        <form action="mtr204$.jsp" method="post" name="form204">
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
 	<form action="mtr204customise.jsp" method="post">
 	<td width="250"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON"><b><font size="2">Delete_All</font></b></td>
	<td>S_NO</td>
	<td>FORM �M� NO</td>
	<td>AGENT NO</td>
	<td>BENEFICIARY</td>
	<td>COUNTRY OF SUPPLY CODE</td>
	<td>Country NAME</td>
	<td>CLIENT ID</td>
	<td>DATE REGISTERED</td>
	<td>TFI CODE</td>
	<td>TFI NO</td>
	<td>TENOR</td>
	<td>TFI DATE</td>
	<td>PORT OF DISCHARGE</td>
	<td>COST  OF ITEM</td>
	<td>FREIGHT</td>
	<td>SECTOR CODE</td>
	</tr>
    <%
    	try
		{
    	String count=request.getParameter("count");
    	int cnt=Integer.parseInt(count);
    	String f1="", f2="", f3="", f4="", f5="", f6="", f7="", f8="", f9="", f10="",f11="", f12="", f13="", f14="", f15="";
    	out.println("<form action=\"sbr1905_dircustomise.jsp\" method=\"post\">");
    	for(int i=1;i<=cn;i++) 
    	{
	    		Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from mtr204 where S_NO='"+i+"'");
			Statement stTFICodes =cnn.createStatement();
			ResultSet rsTFICodes = stTFICodes.executeQuery("select * from TradeFinanceInstrumentCodes order by Names");
			Statement stCountryCodes =cnn.createStatement();
			ResultSet rsCountryCodes = stCountryCodes.executeQuery("select * from CountryCodes order by Description");
			Statement stPortsCodes =cnn.createStatement();
			ResultSet rsPortsCodes = stPortsCodes.executeQuery("select * from PortsCodes order by Name");
			Statement stSectorCodes =cnn.createStatement();
			ResultSet rsSectorCodes = stSectorCodes.executeQuery("select * from HSCodes order by Description");



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
				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'}\"</td>");
	    			out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
    				out.println("<td ><input type=\"text\" name=\"f1" +i+ "\" value=\""+f1+"\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f2" +i+ "\" value=\""+f2+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f3" +i+ "\" value=\""+f3+"\"></td >");
				out.println("<td ><select name=\"f4" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsCountryCodes.next())
					{
						String str1 = rsCountryCodes.getString(1);
						String str2 = rsCountryCodes.getString(2);
        					if(f4.equals(str1))
        					{
							out.println("<option selected value="+str1+">"+str1+" - "+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value="+str1+">"+str1+" - "+str2+"</option>");
        					}
        						out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><input type=\"text\" name=\"f5" +i+ "\" value=\""+f5+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f6" +i+ "\" value=\""+f6+"\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f7" +i+ "\" value=\""+f7+"\"></td >");
				out.println("<td ><select name=\"f8" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsTFICodes.next())
					{
						String str1 = rsTFICodes.getString(1);
						String str2 = rsTFICodes.getString(2);
        					if(f8.equals(str1))
        					{
							out.println("<option selected value="+str1+">"+str1+" - "+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value="+str1+">"+str1+" - "+str2+"</option>");
        					}
        						out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><input type=\"text\" name=\"f9" +i+ "\" value=\""+f9+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f10" +i+ "\" value=\""+f10+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f11" +i+ "\" value=\""+f11+"\"></td >");	
    				out.println("<td ><select name=\"f12" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsPortsCodes.next())
					{
						String str1 = rsPortsCodes.getString(1);
						String str2 = rsPortsCodes.getString(2);
        					if(f12.equals(str1))
        					{
							out.println("<option selected value="+str1+">"+str1+" - "+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value="+str1+">"+str1+" - "+str2+"</option>");
        					}
        						out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><input type=\"text\" name=\"f13" +i+ "\" value=\""+f13+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f14" +i+ "\" value=\""+f14+"\"></td >");
				out.println("<td ><select name=\"f15" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsSectorCodes.next())
					{
						String str1 = rsSectorCodes.getString(1);
						String str2 = rsSectorCodes.getString(2);
        					if(f15.equals(str1))
        					{
							out.println("<option selected value="+str1+">"+str1+" - "+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value="+str1+">"+str1+" - "+str2+"</option>");
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
			Statement stTFICodes =cnn.createStatement();
			ResultSet rsTFICodes = stTFICodes.executeQuery("select * from TradeFinanceInstrumentCodes order by Names");
			Statement stCountryCodes =cnn.createStatement();
			ResultSet rsCountryCodes = stCountryCodes.executeQuery("select * from CountryCodes order by Description");
			Statement stPortsCodes =cnn.createStatement();
			ResultSet rsPortsCodes = stPortsCodes.executeQuery("select * from PortsCodes order by Name");
			Statement stSectorCodes =cnn.createStatement();
			ResultSet rsSectorCodes = stSectorCodes.executeQuery("select * from HSCodes order by Description");


				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'}\"</td>");
		    		out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
    				out.println("<td ><input type=\"text\" name=\"f1" +i+ "\"></td >");	
	    			out.println("<td ><input type=\"text\" name=\"f2" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f3" +i+ "\"></td >");
				out.println("<td ><select name=\"f4" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsCountryCodes.next())
					{
						String str1 = rsCountryCodes.getString(1);
						String str2 = rsCountryCodes.getString(2);
        					out.println("<option value="+str1+">"+str1+" - "+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><input type=\"text\" name=\"f5" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f6" +i+ "\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f7" +i+ "\"></td >");
				out.println("<td ><select name=\"f8" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsTFICodes.next())
					{
						String str1 = rsTFICodes.getString(1);
						String str2 = rsTFICodes.getString(2);
        					out.println("<option value="+str1+">"+str1+" - "+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><input type=\"text\" name=\"f9" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f10" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f11" +i+ "\"></td >");	
    				out.println("<td ><select name=\"f12" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsPortsCodes.next())
					{
						String str1 = rsPortsCodes.getString(1);
						String str2 = rsPortsCodes.getString(2);
        					out.println("<option value="+str1+">"+str1+" - "+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><input type=\"text\" name=\"f13" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f14" +i+ "\"></td >");
				out.println("<td ><select name=\"f15" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsSectorCodes.next())
					{
						String str1 = rsSectorCodes.getString(1);
						String str2 = rsSectorCodes.getString(2);
        					out.println("<option value="+str1+">"+str1+" - "+str2+"</option>");
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