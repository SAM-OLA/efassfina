<!--
@author D & T Solutions Coy
-->
<%@ page import="java.sql.*, cbnbas.mpmbr.connect"%>
<%!
	Connection cn=null;
	String param="";
	String source="";
%>
<%
		connect c = new connect();
   		cn = c.connectMethod();
%>
<html>

<head>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Language" content="en-gb">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>MPMBR 300 View</title>



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

<form method="POST" action="">
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="30%" id="AutoNumber1">
    <tr>
      <td width="79"><b><font color="#336699" size="2">Code</font></b></td>
      <td width="359"><b><font color="#336699" size="2">Description</font></b></td>
      <td width="290"><b><font color="#336699" size="2">Value</font></b></td>
    </tr>
<%
	PreparedStatement pst=cn.prepareStatement("select Code, Description, Value from qdfir300Data");
	ResultSet rs=pst.executeQuery();
	int cnt=0;
	String code="";

	while(rs.next())
	{
		code=rs.getString(1);

%>
    <tr>
      <td width="79"><input type="text" name="code<%=cnt%>" size="10" value="<%=code%>"></td>
      <td width="359"><input type="text" name="desc<%=cnt%>" size="50" value="<%=rs.getString(2)%>"></td>
      <td width="290"><input type="text" name="value<%=cnt%>" size="40" value="<%=rs.getString(3)%>" readonly tabindex="<%=cnt%>"></td>
<%
	}
%>
    </tr>
  </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"> </p>
</form>

</body>

</html>