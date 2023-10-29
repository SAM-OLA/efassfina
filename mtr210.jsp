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
		ResultSet rs=st.executeQuery("select * from mtr210");
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
<title>Cube CBN EFASS System - MTR 210</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
</head>
<SCRIPT language="JavaScript1.2">
	num=0;
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
  function del() 
  {
	num++;
  }
  function dele()
  {
  	if(num!=0)
  	{
  		var name=confirm("Are you sure you want to delete these item(s)?");
		if (!name)
		{
			return false;
		}
  	}
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
<p align="center"><b><font color="#336699" size="2">MTR 210 - ANALYSIS OF FOREIGN EXCHANGE UTILISATION - CLASSIFICATION BREAKDOWN (FORM �M� OTHERS UNDER FINISHED GOODS)</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>
    
    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
        <form action="mtr210$.jsp" method="post" name="form210">
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
 	<form action="mtr210customise.jsp" method="post">
 	<td><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">S_NO</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">FORM 'M' NO</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">RC NUMBER</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">NAME OF APPLICANT (IMPORTER)</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">SOURCE OF FUND CODE</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">SOURCE OF FUND NAME</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">IMPORT ITEM DESCRIPTION PF GOODS</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">AMOUNT UTILISED (US$)</font></b></td>
	
	</tr>
    <%
    	try
		{
    	String f1="", f2="", f3="", f4="", f5="", f6="", f7="";
    	
    	int ccn=cn-1;
    	for(int i=1;i<cn;i++) 
    	{
    			Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from mtr210 where S_NO='"+i+"'");
			Statement stSourceOfFunds =cnn.createStatement();
			ResultSet rsSourceOfFunds = stSourceOfFunds.executeQuery("select * from SourceOfFunds");
			Statement stVisibleImportExportCode =cnn.createStatement();
			ResultSet rsVisibleImportExportCode = stVisibleImportExportCode.executeQuery("select * from VisibleImportExportCode");

			while(rs.next())
			{
				f1=rs.getString(2);
				f2=rs.getString(3);
				f3=rs.getString(4);
				f4=rs.getString(5);
				f5=rs.getString(6);
				f6=rs.getString(7);
				f7=rs.getString(8);
				
				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'} del()\"</td>");
				out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
    				out.println("<td ><input type=\"text\" name=\"f1" +i+ "\" value=\""+f1+"\"></td >");	
	    			out.println("<td ><input type=\"text\" name=\"f2" +i+ "\" value=\""+f2+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f3" +i+ "\" value=\""+f3+"\"></td >");
				out.println("<td ><select name=\"f4" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsSourceOfFunds.next())
					{
						String str1 = rsSourceOfFunds.getString(1);
						String str2 = rsSourceOfFunds.getString(2);
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

				out.println("<td ><input type=\"text\" name=\"f5" +i+ "\" value=\""+f5+"\"></td >");
				out.println("<td ><select name=\"f6" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsVisibleImportExportCode.next())
					{
						String str1 = rsVisibleImportExportCode.getString(1);
						String str2 = rsVisibleImportExportCode.getString(2);
        					if(f6.equals(str1))
        					{
							out.println("<option selected value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value=\""+str1+"\">"+str2+"</option>");
        					}
        						out.println("<br>");
					}
        			out.println("</select></td>");

    				out.println("<td ><input type=\"text\" name=\"f7" +i+ "\" value=\""+f7+"\"></td >");
				out.println("</tr> ");

				
			}
    		
    	}
    	String ss1="";
	String ss2="0";
    	Statement st2=cnn.createStatement();
		ResultSet rs=st2.executeQuery("select AMOUNTUTILISED_US$ from mtr210 where S_NO='T_99999'");
		while(rs.next())
		{
			ss1=String.valueOf(rs.getString(1));
		}
    	out.println("<tr >");	
    	out.println("<td align=\"right\"><input type=\"text\" readonly ></td >");
		out.println("<td ><input type=\"text\" readonly value=\"T_99999\" name=\"total1\"></td >");
		out.println("<td ><input type=\"text\" name=\"total2\" value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total3\" value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total4\" value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total5\" value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total6\" value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total7\" value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total8\" value="+ss1+"></td >");
		out.println("</tr>");
		out.println("</table>");
    	out.println("<input type=\"hidden\" name=\"cnt\" value="+ccn+">");
    	out.println("<table><tr><td><input name=\"submit\" value= \"    OK    \" type=\"submit\" onClick=\"return dele()\" ></td></tr></table>");
    	out.println("</p>");
		out.println("</form>");
		}
		catch(Exception e)
		{
			out.print(e.toString());
		}
		cnn.close();
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