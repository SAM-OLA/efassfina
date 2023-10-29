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
		ResultSet rs=st.executeQuery("select * from qdfir900");
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
<title>Cube CBN EFASS System - QDFIR 900</title>
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
<form action="qdfir900UpdateParameters.jsp" method="get">
 <%
    	try
		{
		    	String param1="", param2="", param3="";
     			Statement stparam=cnn.createStatement();
			ResultSet rsparam=stparam.executeQuery("select * from qdfir900Parameters");
			while(rsparam.next())
			{
				param1=rsparam.getString(1);
				param2=rsparam.getString(2);
				param3=rsparam.getString(3);
			}
	
	

	out.println("<table border='0' cellpadding='0' cellspacing='0' style='border-collapse: collapse' width='1154'>");
      out.println("<tr>");
      out.println("<td width='60' rowspan='3'><b><font color='#336699' size='2'><a href='qdfirtoc.jsp'>QDFIR TOC</a> </font></b> </td>");
      out.println("<td rowspan='3'>");
	out.println("<p align='center'><b><font color='#336699' size='2'>QDFIR 900 - SCHEDULE OF LENDING ABOVE STATUTORY LIMIT</font></b></p>");     
    	out.println("</td>");
      out.println("<td>PAID - UP CAPITAL:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='text' name='PaidUpCapital' value="+param1+" size='20'></td>");
      out.println("<td rowspan='3'><input type='submit' value='Update'></td>");
  	out.println("</tr>");
  	out.println("<tr>");
	out.println("<td>RESERVES (net of accumulated losses):<input type='text' name='Reserves' value="+param2+" size='20'></td>");
  	out.println("</tr>");
  	out.println("<tr>");
	out.println("<td>LENDING LIMIT:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='text' name='LendingLimit' value="+param3+" size='20'></td>");
  	out.println("</tr>");
	out.println("</table>");
	}
	catch(Exception a)
	{
	}
%>
</form>
<br>
<pre>
<%
		Statement st3=cnn.createStatement();
		ResultSet rs3=st3.executeQuery("select value from qdfir300Data where code='20970'");
		rs3.next();

		Statement st4=cnn.createStatement();
		ResultSet rs4=st4.executeQuery("select value from qdfir101Data where code='10940'");
		rs4.next();

		Statement st5=cnn.createStatement();
		ResultSet rs5=st5.executeQuery("select value from qdfir300Data where code='20850'");
		rs5.next();
%>
Note: Expected value for Reserves: <%=rs3.getInt(1)-rs4.getInt(1)%> 
Note: Expected value for PAID - UP CAPITAL: <%=rs5.getString(1)%> 
</pre>    
    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
    <form action="qdfir900$.jsp" method="post">
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

	<form action="qdfir900Customise.jsp" method="post">
 	<tr>
 	<td><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">S NO</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">CUSTOMERS CODE</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">ACCOUNT NO</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">CUSTOMERS NAME</font></b></td>
	<td align="center"><b><font color="#336699" size="2">TYPE OF FACILITY</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">AMOUNT GRANTED</font></b></td>
	<td align="center" ><b><font color="#336699" size="2">DATE GRANTED</font></b></td>
	<td align="center"><b><font color="#336699" size="2">AMOUNT AUTHORISED</font></b></td>
	<td align="center"><b><font color="#336699" size="2">DATE AUTHORISED</font></b></td>
	<td align="center"><b><font color="#336699" size="2">EXPIRY DATE</font></b></td>
	<td align="center"><b><font color="#336699" size="2">UNUTILISED CREDIT</font></b></td>
	<td align="center"><b><font color="#336699" size="2">OUTSTANDING CREDIT</font></b></td>
	<td align="center"><b><font color="#336699" size="2">DEBT INSTRUMENTS</font></b></td>
	<td align="center"><b><font color="#336699" size="2">TOTAL</font></b></td>
	<td align="center"><b><font color="#336699" size="2">STATUS</font></b></td>
	<td align="center"><b><font color="#336699" size="2">DATE UTILISATION ON EXCEEDED LIMIT</font></b></td>
	<td align="center"><b><font color="#336699" size="2">CBN APPROVAL NO</font></b></td>
	<td align="center"><b><font color="#336699" size="2">REMARKS</font></b></td>

	</tr>
    <%
    	try
		{
    	String f1="", f2="", f3="", f4="", f5="", f6="", f7="", f8="", f9="", f10="", f11="", f12="", f13="", f14="", f15="", f16="", f17="";
    	
    	int ccn=cn-1;
    	for(int i=1;i<cn;i++) 
    	{
    			Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from qdfir900 where S_NO='"+i+"'");
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

				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'} del()\"</td >");
				out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
				out.println("<td ><input type=\"text\" name=\"f1" +i+ "\" value="+f1+"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f2" +i+ "\" value="+f2+"></td >");
				out.println("<td ><input type=\"text\" name=\"f3" +i+ "\" value="+f3+"></td >");
				out.println("<td ><input type=\"text\" name=\"f4" +i+ "\" value="+f4+"></td >");
				out.println("<td ><input type=\"text\" name=\"f5" +i+ "\" value="+f5+"></td >");
				out.println("<td ><input type=\"text\" name=\"f6" +i+ "\" value="+f6+"></td >");
				out.println("<td ><input type=\"text\" name=\"f7" +i+ "\" value="+f7+"></td >");
				out.println("<td ><input type=\"text\" name=\"f8" +i+ "\" value="+f8+"></td >");
				out.println("<td ><input type=\"text\" name=\"f9" +i+ "\" value="+f9+"></td >");
				out.println("<td ><input type=\"text\" name=\"f10" +i+ "\" value="+f10+"></td >");
				out.println("<td ><input type=\"text\" name=\"af11" +i+ "\" value="+f11+"></td >");
				out.println("<td ><input type=\"text\" name=\"af12" +i+ "\" value="+f12+"></td >");
				out.println("<td ><input type=\"text\" name=\"af13" +i+ "\" value="+f13+"></td >");
				out.println("<td ><input type=\"text\" name=\"af14" +i+ "\" value="+f14+"></td >");
				out.println("<td ><input type=\"text\" name=\"af15" +i+ "\" value="+f15+"></td >");
				out.println("<td ><input type=\"text\" name=\"af16" +i+ "\" value="+f16+"></td >");
				out.println("<td ><input type=\"text\" name=\"af17" +i+ "\" value="+f17+"></td >");

    				out.println("</tr> ");

				
			}
    		
    	}
    	String ss1="", ss2="", ss3="", ss4="", ss5="", ss6="";
    	Statement st2=cnn.createStatement();
		ResultSet rs=st2.executeQuery("select * from qdfir900 where S_NO='T_99999'");
		while(rs.next())
		{
			ss1=String.valueOf(rs.getString(6));
			ss2=String.valueOf(rs.getString(8));
			ss3=String.valueOf(rs.getString(11));
			ss4=String.valueOf(rs.getString(12));
			ss5=String.valueOf(rs.getString(13));
			ss6=String.valueOf(rs.getString(14));
		}
    		out.println("<tr >");	
	    	out.println("<td align=\"right\"><input type=\"text\" readonly value=\"\"></td >");
		out.println("<td ><input type=\"text\" readonly value=\"T_99999\" name=\"total1\"></td >");
		out.println("<td ><input type=\"text\" name=\"total2\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total3\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total4\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total5\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total6\" value="+ss1+"></td >");
		out.println("<td ><input type=\"text\" name=\"total7\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total8\" value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total9\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total10\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total11\" value="+ss3+"></td >");
		out.println("<td ><input type=\"text\" name=\"total12\" value="+ss4+"></td >");
		out.println("<td ><input type=\"text\" name=\"total13\" value="+ss5+"></td >");
		out.println("<td ><input type=\"text\" name=\"total14\" value="+ss6+"></td >");
		out.println("<td ><input type=\"text\" name=\"total15\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total16\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total17\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total18\" value=\"0\"></td >");
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