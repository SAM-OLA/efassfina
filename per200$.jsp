<%@ page import="java.sql.*,cbnbas.per1.*" %>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from per200");
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
<title>CBN EFASS System - PER 200</title>
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
  <center>
<jsp:include flush="true" page="header.jsp"/>
<br>
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="1154">
        <tr>
          <td width="66"><a href="pertoc.jsp"><b><font size="2">PER TOC</font></b></a></td>
          <td width="1066">
          <p align="center"><b><font size="2">CAPTURE COMPREHENSIVE BANK STAFF LIST - PER 200</font></b></td>
          <td width="18">&nbsp;</td>
        </tr>
</table>
<br>
    
    <table width=1000 border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">
    <tr>
    <form action="per200$.jsp" method="post">
     <td width=250>&nbsp;<font size="3">New_Entries</font></td>&nbsp; <td>
     <input type="text" name="count" value="0" size="20">
	 </td>
	 <td>
     <input name="submit" value= "    OK    " type="submit" > 
	</form>
	</td>
  </tr>

 	<tr>
 	<form action="per200customise.jsp" method="post">
 	<td width="250"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON"><b><font size="2">Delete_All</font></b></td>
	<td>S_NO</td>
	<td>NAME</td>
	<td>ID CARD NUMBER</td>
	<td>DESIGNATION</td>
	<td>POSITION</td>
	<td>BRANCH NAME</td>
	<td>BRANCH CODE</td>
	<td>DEPT NAME</td>
	<td>DEPT CODE</td>
	<td>DATE OF BIRTH</td>
	<td>DATE JOINING</td>
	<td>QUALIFICATION</td>
	<td>COGNATE BANKING EXPERIENCE</td>
	<td>DISCIPLINE</td>
	<td>NO YEARS IN CURRENT DEPT</td>
	<td>ANNUAL SALARY</td>
	<td>ALLOWANCES</td>

	</tr>
    <%
    	try
		{
    	String count=request.getParameter("count");
    	int cnt=Integer.parseInt(count);
    	String f1="", f2="", f3="", f4="", f5="",f6="", f7="", f8="", f9="", f10="",f11="", f12="", f13="", f14="", f15="",f16="";
    	out.println("<form action=\"sbr1905_dircustomise.jsp\" method=\"post\">");
    	for(int i=1;i<cn;i++) 
    	{
    		Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from per200 where S_NO='"+i+"'");
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
				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'}\"</td>");
    			out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
    			out.println("<td ><input type=\"text\" name=\"f1" +i+ "\" value=\""+f1+"\"></td >");	
    			out.println("<td ><input type=\"text\" name=\"f2" +i+ "\" value=\""+f2+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f3" +i+ "\" onBlur=\"return validate(this)\" value=\""+f3+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f4" +i+ "\" onBlur=\"return validate(this)\" value=\""+f4+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f5" +i+ "\" value=\""+f5+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f6" +i+ "\" value=\""+f6+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f7" +i+ "\" value=\""+f7+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f8" +i+ "\" value=\""+f8+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f9" +i+ "\" value=\""+f9+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f10" +i+ "\" value=\""+f10+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f11" +i+ "\" value=\""+f11+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f12" +i+ "\" value=\""+f12+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f13" +i+ "\" value=\""+f13+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f14" +i+ "\" value=\""+f14+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f15" +i+ "\" value=\""+f15+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f16" +i+ "\" value=\""+f16+"\"></td >");

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
			out.println("<tr> ");
			out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'}\"</td>");
    		out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
    		out.println("<td ><input type=\"text\" name=\"f1" +i+ "\"></td >");	
    			out.println("<td ><input type=\"text\" name=\"f2" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f3" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f4" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f5" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f6" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f7" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f8" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f9" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f10" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f11" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f12" +i+ "\" value=\"0\"></td >");
				out.println("<td ><input type=\"text\" name=\"f13" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f14" +i+ "\" value=\"0\"></td >");
				out.println("<td ><input type=\"text\" name=\"f15" +i+ "\" value=\"0.00\"></td >");
				out.println("<td ><input type=\"text\" name=\"f16" +i+ "\" value=\"0.00\"></td >");

				out.println("</tr> ");
    	}
    	String ss1="", ss2="", ss3="";
    	Statement st2=cnn.createStatement();
		ResultSet rs=st2.executeQuery("select * from per200 where S_NO='T_99999'");
		while(rs.next())
		{
			ss1=String.valueOf(rs.getString(16));
			ss2=String.valueOf(rs.getString(17));
			//ss3=String.valueOf(rs.getString(3));
		}
    	out.println("<tr >");	
    	out.println("<td align=\"right\"><input type=\"text\" readonly ></td >");
		out.println("<td ><input type=\"text\" readonly value=\"T_99999\" name=\"total1\"></td >");
		out.println("<td ><input type=\"text\" name=\"total2\"></td >");
		out.println("<td ><input type=\"text\" name=\"total3\"></td >");
		out.println("<td ><input type=\"text\" name=\"total4\"></td >");
		out.println("<td ><input type=\"text\" name=\"total5\"></td >");
		out.println("<td ><input type=\"text\" name=\"total6\"></td >");
		out.println("<td ><input type=\"text\" name=\"total7\"></td >");
		out.println("<td ><input type=\"text\" name=\"total8\"></td >");
		out.println("<td ><input type=\"text\" name=\"total9\"></td >");
		out.println("<td ><input type=\"text\" name=\"total10\"></td >");
		out.println("<td ><input type=\"text\" name=\"total11\"></td >");
		out.println("<td ><input type=\"text\" name=\"total12\"></td >");
		out.println("<td ><input type=\"text\" name=\"total13\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total14\"></td >");
		out.println("<td ><input type=\"text\" name=\"total15\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total16\" value="+ss1+"></td >");
		out.println("<td ><input type=\"text\" name=\"total17\" value="+ss2+"></td >");
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