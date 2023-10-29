<!--
@author D & T Solutions
-->
<%@ page import="java.sql.*, cbnbas.mpmbr.connect"%>
<%!
	Connection cn=null;
	int recCnt=0;
	int cnt=0;
	String source="";
%>
<%
		connect c = new connect();
   		cn = c.connectMethod();
%>
<html>
<head>
<link href="../../../Program%20Files/Apache%20Software%20Foundation/Tomcat%205.0/webapps/cbnpmbifrs/styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Language" content="en-gb">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>QDFIR - 1000 View</title>
<script>
</script>



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
    <a href='qdfirtoc.jsp'>QDFIR TOC</a> </font></b> </td>
    <td width="1072">
<p align="center"><b><font color="#336699" size="2">QUARTERLY STATEMENT OF PROFIT AND LOSS ACCOUNT - QDFIR - 1000</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

<form name"frm" method="POST" action="">
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="AutoNumber1">
      <th><b><font color="#336699" size="2">Code</font></b></th>
      <th><b><font color="#336699" size="2">Description</font></b></th>
      <th><b><font color="#336699" size="2">Notes</font></b></th>
      <th><b><font color="#336699" size="2">Value</font></b></th>
<%
	try
	{
		PreparedStatement pst=cn.prepareStatement("select * from qdfir1000Data");
		ResultSet rs=pst.executeQuery();

		while(rs.next())
		{
%>
			<tr>
				<td><input type="text" name="code<%=cnt%>" size="10" value="<%=rs.getString(1)%>"></td>
				<td><input type="text" name="desc<%=cnt%>" size="50" value="<%=rs.getString(2)%>"></td>
				<td><input type="text" name="value<%=cnt%>" size="20" value="<%=rs.getString(3)%>" readonly></td>
				<td><input type="text" name="value<%=cnt%>" size="20" value="<%=rs.getString(4)%>" readonly></td>
		</tr>
<%
		}
	}
	catch(Exception e)
	{
		out.println("Error: "+e.toString());
	}
		cn.close();
%>
  </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
</form>

</body>

</html>