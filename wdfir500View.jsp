<%@ page import="java.sql.*, cbnbas.wdfir.connect" session="true"%>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from wdfir500");
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
<title>Cube CBN EFASS System - WDFIR 500</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!--mstheme--><link rel="stylesheet" href="file:///C:/DOCUME~1/FAVOUR~1/LOCALS~1/Temp/FrontPageTempDir/mstheme/poetic/poet1111.css">
<meta name="Microsoft Theme" content="poetic 1111, default">
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
          <td width="66"><a href="wdfirtoc.jsp"><b><font size="2">WDFIR TOC</font></b></a></td>
          <td width="1066">
          <p align="center"><b><font size="2">RETURN OF FOREIGN EXCHANGE ROUTINE- WDFIR 500</font></b></td>
          <td width="18">&nbsp;</td>
        </tr>
</table>
<br>
    
    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
    <form action="wdfir500$.jsp" method="post">
     <td><b><font size="2">&nbsp;New_Entries</font></b></td>&nbsp; <td>
     <b><font size="2">
     <input type="text" name="count" value="0" size="20"> </font></b>
	 </td>
	 <td>
     <b><font size="2">
     <input name="submit" value= "    OK    " type="submit" disabled> </font></b> 
	</td>
	</form>
  </tr>

 	<tr>
 	<form action="wdfir500customise.jsp" method="post">
 	<td><b><font size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All</font></b></td>
	<td align="center" valign="bottom" ><b><font size="2">S_NO</font></b></td>
	<td align="center" valign="bottom" ><b><font size="2">Branch /Cash Office</font></b></td>
	<td align="center" valign="bottom" ><b><font size="2">Name of Customer</font></b></td>
	<td align="center" valign="bottom" ><b><font size="2">Nationality</font></b></td>
	<td align="center" valign="bottom" ><b><font size="2">Customerís Address (Not P O Box)</font></b></td>
	<td align="center" valign="bottom" ><b><font size="2">Passport No</font></b></td>
	<td align="center" valign="bottom" ><b><font size="2">Date of Birth</font></b></td>
	<td align="center" valign="bottom" ><b><font size="2">Date of Incorporation</font></b></td>
	<td align="center" valign="bottom" ><b><font size="2">Occupation/ Employer</font></b></td>
	<td align="center" valign="bottom" ><b><font size="2">Registration No</font></b></td>
	<td align="center" valign="bottom" ><b><font size="2">Amount involved</font></b></td>
	<td align="center" valign="bottom" ><b><font size="2">Name of Sender (Not P O Box)</font></b></td>
	<td align="center" valign="bottom" ><b><font size="2">No of Beneficiaries (If different from Customer)</font></b></td>
	<td align="center" ><b><font size="2">Address of Beneficiary (If different from Customer)</font></b></td>
	</tr>
    <%
    	try
		{
    	String f1="", f2="", f3="", f4="", f5="", f6="", f7="", f8="", f9="", f10="",f11="", f12="", f13="";
    	
    	int ccn=cn;
    	for(int i=1;i<=cn;i++) 
    	{
    		Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from wdfir500 where S_NO='"+i+"'");
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
				out.println("<td ><input type=\"checkbox\" readonly name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'} del()\"</td>");
				out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
    				out.println("<td ><input type=\"text\" name=\"f1" +i+ "\" value=\""+f1+"\"></td >");	
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
		out.println("</table>");
    	out.println("<input type=\"hidden\" name=\"cnt\" value="+ccn+">");
    	out.println("<table><tr><td><input name=\"submit\" value= \"    OK    \" type=\"submit\" onClick=\"return dele()\" disabled></td></tr></table>");
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