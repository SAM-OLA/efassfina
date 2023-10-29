<!--
@author D & T Solutions
-->
<%@ page import="java.sql.*, cbnbas.dtr.connect"%>
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
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Cube CBN EFASS System - DTR 203</title>







<!--mstheme--><link rel="stylesheet" href="file:///C:/DOCUME~1/FAVOUR~1/LOCALS~1/Temp/FrontPageTempDir/mstheme/poetic/poet1111.css">







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
    <a href='dtrtoc.jsp'>DTR TOC</a> </font></b> </td>
    <td width="1072">
<p align="center"><b><font color="#336699" size="2">DTR 203 - SUMMARY OF FOREIGN EXCHANGE POSITION REPORT</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

<form method="POST" action="dtr203customise.jsp">
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="AutoNumber1">
    <tr>
      <td><b><font color="#336699" size="2">Code</font></b></td>
      <td><b><font color="#336699" size="2">Description</font></b></td>
      <td><b><font color="#336699" size="2">Source?</font></b></td>
      <td><b><font color="#336699" size="2">Value</font></b></td>
    </tr>
<%
	PreparedStatement pst=cn.prepareStatement("select * from dtr203");
	ResultSet rs=pst.executeQuery();
	int cnt=0;
	String code="";

	while(rs.next())
	{
		code=rs.getString(1);

		if(code.equals("10117") || code.equals("10130") || code.equals("10150") || code.equals("10170") || code.equals("10190") || code.equals("10200") ||code.equals("10210") || code.equals("10230"))
		{
%>
    <tr bgcolor="blue">
      <td><input type="text" name="code<%=cnt%>" size="10" value="<%=code%>"></td>
      <td><input type="text" name="desc<%=cnt%>" size="60" value="<%=rs.getString(2)%>"></td>
      <td><select size="1" name="source<%=cnt%>" disabled><option value="1">GL Code</option><option selected value="2">Compute</option><option value="3">Direct</option></select></td>
      <td><textarea cols="20" rows="1" name="value<%=cnt%>" readonly tabindex="<%=cnt%>"><%=rs.getString(4)%></textarea></td>


<%
		}
		else
		{
%>

    <tr>
      <td><input type="text" name="code<%=cnt%>" size="10" value="<%=code%>"></td>
      <td><input type="text" name="desc<%=cnt%>" size="60" value="<%=rs.getString(2)%>"></td>
<%
		source=rs.getString(3);
		if(source.equals("1"))
		{
%>
      <td><select size="1" name="source<%=cnt%>"><option selected value="1">GL Code</option><option value="2">Compute</option><option value="3">Direct</option></select></td>
<%
		}
		else if(source.equals("2"))
		{
%>
      <td><select size="1" name="source<%=cnt%>"><option value="1">GL Code</option><option selected value="2">Compute</option><option value="3">Direct</option></select></td>
<%
		}
		else
		{
%>
      <td><select size="1" name="source<%=cnt%>"><option selected value="1">GL Code</option><option value="2">Compute</option><option selected value="3">Direct</option></select></td>
<%
		}
%>

      <td><textarea cols="20" rows="1" name="value<%=cnt%>"><%=rs.getString(4)%></textarea></td>
<%

		}
		cnt++;
	}
%>
    </tr>
  </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
<input name="rowcount" value="<%=cnt%>" size="20">
</form>

</body>

</html>