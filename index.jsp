<%@ page import="java.sql.*"%>
<%
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cnn=DriverManager.getConnection("jdbc:odbc:qbrDB");
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from qbr1100");
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
<title>Cube CBN EFASS System - qbr 1100</title>
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
EN-US;mso-bidi-language:AR-SA'><font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SEMI-ANNUAL RETURN ON INVESTMENT IN SHARES- qbr 1100</font></span></td>
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

    <form action="qbr1100$.jsp" method="post">
     <td width=250>&nbsp;<font size="3">New_Entries</font></td>&nbsp; <td>
     <input type="text" name="count" value="0" size="20">
	 </td>
	 <td>
     <input name="submit" value= "    OK    " type="submit" > 
	</form>
	</td>
  </tr>

 	<tr>
 	<form action="qbr1100customise.jsp" method="get">
 	<td width="250"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON"><b><font size="2">Delete_All</font></b></td>
	<td >Code</td>
	<td > Analysis_of_Credit</td>
	<td>Term_Loan</td>
	<td>Overdraft</td>
	<td>Others</td>
	<td>Advances_Under_Lease</td>
	<td>Bankers_Acceptances</td>
	<td>Commercial_Pat7s</td>
	<td>Bills_Discounted</td>
	<td>memo</td>
	<td>Total</td>
	</tr>
    <%
    	try
		{
    	String t1="", t2="", t3="", t4="", t5="", t6="", t7="", t8="", t9="", t10="", t11="";
    	
    	int ccn=cn-1;
    	int i=1;
    	
    		Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from qbr1100");
			while(rs.next())
			{
				t1=rs.getString(1);
				t2=rs.getString(2);
				t3=rs.getString(3);
				t4=rs.getString(4);
				t5=rs.getString(5);
				t6=rs.getString(6);
				t7=rs.getString(7);
				t8=rs.getString(8);
				t9=rs.getString(9);
				t10=rs.getString(10);
				t11=rs.getString(11);
				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'} del()\"</td >");
    			out.println("<td ><input type=\"text\" readonly name=\"t1" +i+ "\" value=\""+t1+"\"></td >");	
    			out.println("<td ><input type=\"text\" name=\"t2" +i+ "\" value=\""+t2+"\"></td >");	
    			out.println("<td ><input type=\"text\" name=\"t3" +i+ "\" value=\""+t3+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"t4" +i+ "\" value=\""+t4+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"t5" +i+ "\" value=\""+t5+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"t6" +i+ "\" value=\""+t6+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"t7" +i+ "\" value=\""+t7+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"t8" +i+ "\" value=\""+t8+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"t9" +i+ "\" onBlur=\"return validate(this)\" value=\""+t9+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"t10" +i+ "\" onBlur=\"return validate(this)\" value=\""+t10+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"t11" +i+ "\" onBlur=\"return validate(this)\" value=\""+t11+"\"></td >");
    			out.println("</tr> ");
				i++;
			}
    		
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
  </center>
</div>

</div>

</div>

</body>

</html>