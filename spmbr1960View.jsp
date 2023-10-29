<%@ page import="java.sql.*,cbnbas.spmbr.connect"%>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from spmbr1960");
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
<title>Cube CBN EFASS System - SPMBR 1960</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!--mstheme--><link rel="stylesheet" href="poet1111.css">
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
    <td width="62">
    <b><font color="#336699" size="2">
    <a href="spmbrtocView.jsp">SPMBR TOC</a> </font></b> </td>
    <td width="1074">
<p align="center"><b><font color="#336699" size="2">SEMI-ANNUAL RETURN ON PAST BANK DIRECTORS/TOP MANAGEMENT/SENIOR STAFF - SPMBR 1960</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

    <table width=1000 border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
    <form action="spmbr1960$.jsp" method="post">
     <td width=250><b><font color="#336699" size="2">&nbsp;New_Entries</font></b></td>&nbsp; <td>
     <b><font color="#336699" size="2">
     <input type="text" name="count" value="0" size="20"> </font></b>
	 </td>
	 <td>
     <b><font color="#336699" size="2">
     <input name="submit" value= "    OK    " type="submit" disabled> </font></b> 
	</td>
	</form>
  </tr>

 	<tr>
 	<form action="spmbr1960customise.jsp" method="get">
 	<td width="250" align="center"><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">S_NO</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">LAST NAME</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">FIRST NAME</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">MIDDLE NAME</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">BIRTH DATE</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">NATIONALITY</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">HOME STATE</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">HOME ADDRESS</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">HOME CITY</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">OFFICE ADDRESS</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">CITY</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">STATE CODE</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">DATE APPOINTED</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">MODE OF APPOINTMENT</font></b>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">EXEC/ NON-EXECUTIVE</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">PROFESSION/<br>
    OCCUPATION</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">JOB TITLE</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">RELATED PARTIES(NAME OF ASSOC COMPANIES)</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">ADDRESS</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">MODE OF EXIT</font></b></td>	
	<td align="center" valign="bottom"><b><font color="#336699" size="2">DATE OF EXIT</font></b></td>	

	</tr>
    <%
    	try
		{
    	String f1="", f2="", f3="", f4="", f5="", f6="", f7="", f8="", f9="", f10="",f11="", f12="", f13="", f14="", f15="", f16="", f17="", f18="", f19="", f20="";
    	
    	int ccn=cn;
    	for(int i=1;i<=cn;i++) 
    	{
    			Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from spmbr1960 where S_NO='"+i+"'");
			Statement stspmbr1960EXEC_NONEXEC =cnn.createStatement();
			ResultSet rsspmbr1960EXEC_NONEXEC = stspmbr1960EXEC_NONEXEC.executeQuery("select * from spmbr1960EXEC_NONEXEC");
			Statement stspmbr1960HOME_STATE_CODE =cnn.createStatement();
			ResultSet rsspmbr1960HOME_STATE_CODE = stspmbr1960HOME_STATE_CODE.executeQuery("select * from spmbr1960HOME_STATE_CODE");
			Statement stspmbr1960MODE_OF_APPOINTMENT =cnn.createStatement();
			ResultSet rsspmbr1960MODE_OF_APPOINTMENT = stspmbr1960MODE_OF_APPOINTMENT.executeQuery("select * from spmbr1960MODE_OF_APPOINTMENT");
			Statement stspmbr1960STATE_CODE =cnn.createStatement();
			ResultSet rsspmbr1960STATE_CODE = stspmbr1960STATE_CODE.executeQuery("select * from spmbr1960STATE_CODE");
			

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
				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" readonly name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'} del()\"</td>");
				out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
	    			out.println("<td ><input type=\"text\" readonly name=\"f1" +i+ "\" value=\""+f1+"\"></td >");	
    				out.println("<td ><input type=\"text\" readonly name=\"f2" +i+ "\" value=\""+f2+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"f3" +i+ "\" value=\""+f3+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"f4" +i+ "\" value=\""+f4+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"f5" +i+ "\" value=\""+f5+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"f6" +i+ "\" value=\""+f6+"\"></td >");	
    				out.println("<td ><input type=\"text\" readonly name=\"f7" +i+ "\" value=\""+f7+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"f8" +i+ "\" value=\""+f8+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"f9" +i+ "\" value=\""+f9+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"f10" +i+ "\" value=\""+f10+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"f11" +i+ "\" value=\""+f11+"\"></td >");	
    				out.println("<td ><input type=\"text\" readonly name=\"f12" +i+ "\" value=\""+f12+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"f13" +i+ "\" value=\""+f13+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"f14" +i+ "\" value=\""+f14+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"f15" +i+ "\" value=\""+f15+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"f16" +i+ "\" value=\""+f16+"\"></td >");
	    			out.println("<td ><input type=\"text\" readonly name=\"f17" +i+ "\" value=\""+f17+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"f18" +i+ "\" value=\""+f18+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"f19" +i+ "\" value=\""+f19+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"f20" +i+ "\" value=\""+f20+"\"></td >");
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