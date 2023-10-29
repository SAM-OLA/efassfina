<%@ page import="java.sql.*,cbnbas.per1.*" %>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from per300ass");
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
<title>CBN EFASS System - PER 300 (ASSETS)</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
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
  function validate(obj)
{
x=document.myForm
at=obj.value.indexOf(".")
if (at != -1)
	{
	alert("this field can't contain a decimal number")
	obj.select()
	obj.focus()
	return false
	}

}

</SCRIPT>


<body>

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" width=style="border-collapse: collapse" bordercolor="#000000" id="AutoNumber1">
    <tr>
    <td width="400">&nbsp;&nbsp;&nbsp;&nbsp;</td>
       <td width="1500" valign="top">&nbsp;&nbsp;&nbsp;
<jsp:include flush="true" page="header.jsp"/>
      </td>
    </tr>
    <tr>
    <td width="400">&nbsp;&nbsp;&nbsp;&nbsp;</td>
      <td valign="top">
      <p align="left">&nbsp;</p>
      <p align="left">
      <span style='font-family:Arial;
mso-fareast-font-family:"Times New Roman";mso-ansi-language:EN-US;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA'><font size="4">CAPTURE BRANCH - BY - BRANCH TRIAL BALANCE (ASSETS) - PER 300</font></span></td>
    </tr>
    </table>
<table width=1000 border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" class="atoll" style="border-collapse: collapse">
 <tr>
    <td align="center">
    </td> 
    </tr>
    </table>
    
    
    <table width=1000 border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">
    <tr>
    <p align="left">&nbsp;</p>

    <form action="per300ass$.jsp" method="post">
     <td width=250>&nbsp;<font size="3">New_Entries</font></td>&nbsp; <td>
     <input type="text" name="count" value="0" size="20">
	 </td>
	 <td>
     <input name="submit" value= "    OK    " type="submit" > 
	</form>
	</td>
  </tr>

 	<tr>
 	<form action="per300asscustomise.jsp" method="post">
 	<td width="250"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON"><b><font size="2">Delete_All</font></b></td>
	<td>S_NO</td>
	<td>ITEM CODE</td>
	<td>ITEM NAME</td>
	<td>DESCRIPTION</td>
	<td>BRANCH CODE</td>
	<td>BRANCH NAME</td>
	<td>AMOUNT</td>
	<td>BANKS CATEGORY</td>
	<td>TOTAL</td>

	</tr>
    <%
    	try
		{
    	String f1="", f2="", f3="", f4="", f5="", f6="", f7="", f8="", f9="";
    	
    	int ccn=cn-1;
    	for(int i=1;i<cn;i++) 
    	{
    		Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from per300ass where S_NO='"+i+"'");
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

				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'} del()\"</td>");
				out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
	    			out.println("<td ><input type=\"text\" name=\"f1" +i+ "\" value=\""+f1+"\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f2" +i+ "\" value=\""+f2+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f3" +i+ "\" value=\""+f3+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f4" +i+ "\" value=\""+f4+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f5" +i+ "\" value=\""+f5+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f6" +i+ "\" value=\""+f6+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f7" +i+ "\" value=\""+f7+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f8" +i+ "\" value=\""+f8+"\"></td >");

				out.println("</tr> ");

				
			}
    		
    	}
    	String ss1="", ss2="", ss3="";
    	Statement st2=cnn.createStatement();
		ResultSet rs=st2.executeQuery("select * from per300ass where S_NO='T_99999'");
		while(rs.next())
		{
			ss1=String.valueOf(rs.getString(1));
			ss2=String.valueOf(rs.getString(2));
			ss3=String.valueOf(rs.getString(3));
		}
    	out.println("<tr >");	
    	out.println("<td align=\"right\"><input type=\"text\" readonly ></td >");
		out.println("<td ><input type=\"text\" readonly value=\"T_99999\" name=\"total1\"></td >");
		out.println("<td ><input type=\"text\" name=\"total2\"></td >");
		out.println("<td ><input type=\"text\" name=\"total3\"></td >");
		out.println("<td ><input type=\"text\" name=\"total4\" value="+ss1+"></td >");
		out.println("<td ><input type=\"text\" name=\"total5\" value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total6\" value="+ss3+"></td >");
		out.println("<td ><input type=\"text\" name=\"total7\" value="+ss3+"></td >");
		out.println("<td ><input type=\"text\" name=\"total8\" value="+ss3+"></td >");
		out.println("<td ><input type=\"text\" name=\"total9\" value="+ss3+"></td >");

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

</html>s