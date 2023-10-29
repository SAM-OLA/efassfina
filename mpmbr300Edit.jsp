<!--
@author D & T Solutions
-->
<%@ page import="java.sql.*, cbnbas.mpmbr.connect"%>
<%!
	Connection cn=null;
	String code, source;

%>
<%
		connect c = new connect();
   		cn = c.connectMethod();
	String code =request.getParameter("target");
%>
<html>

<head>
<title>MPMBR 300</title>
<link href="../../../Program%20Files/Apache%20Software%20Foundation/Tomcat%205.0/webapps/cbnpmbifrs/styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<meta name="Microsoft Theme" content="poetic 1111, default">
</head>

<body>
<center>
<jsp:include flush="true" page="header.jsp"/>
<br>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="1154">
  <tr>
    <td width="64">
    <b><font color="#336699" size="2">
    <a href='mpmbrtoc.jsp'>MPMBR TOC</a> </font></b> </td>
    <td width="1072">
<p align="center"><b><font color="#336699" size="2">MONTHLY STATEMENT OF ASSETS AND LIABILITIES - MPMBR 300</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

<form method="POST" action="mpmbr300Update.jsp">
<table border="0" cellpadding="0" cellspacing="10" style="border-collapse: collapse" id="AutoNumber1">
<%
	PreparedStatement pst=cn.prepareStatement("select Code, Description, Source,Value from mpmbr300 where code = ?");
	pst.setString(1, code);
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
	%>
<tr>
<td><b><font color="#336699" size="2">Code</font></b></td>
		<%
		out.print("<td><input type=text name='CODE' size='35' value="+rs.getString(1)+"></td>");
		%>
<tr>
<td><b><font color="#336699" size="2">Description</font></b></td>
		<%
		out.print("<td><input type='text' name='DESCRIPTION' size='35' value='"+rs.getString(2)+"'></td>");
		%>
<tr>
<td><b><font color="#336699" size="2">Source</font></b></td>
		<%
		source=rs.getString(3);
		if(source.equals("1"))
		{
		%>
		      <td><select size="1" name="SOURCE"><option selected value="1">GL Code</option><option value="2">Compute</option><option value="3">Direct</option></select></td>
		<%
		}
		else if(source.equals("2"))
		{
		%>
      		<td><select size="1" name="SOURCE"><option value="1">GL Code</option><option selected value="2">Compute</option><option value="3">Direct</option></select></td>
		<%
		}
		else
		{
		%>
      		<td><select size="1" name="SOURCE"><option value="1">GL Code</option><option value="2">Compute</option><option selected value="3">Direct</option></select></td>
		<%
		}
		%>

<tr>
<td><b><font color="#336699" size="2">Value</font></b></td>
		<%
		out.print("<td><textarea cols='31' rows='3' name='VALUE'>"+rs.getString(4)+"</textarea></td>");
		%>
<%}%>
</table>
 <input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"> </p>
</form>

</body>

</html>