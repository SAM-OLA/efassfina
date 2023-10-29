<!--
@author D & T Solutions
-->
<%@ page import="java.sql.*, cbnbas.qdfir.connect"%>
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
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Language" content="en-gb">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>QDFIR - 250</title>
<script>
</script>



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
    <a href='qdfirtoc.jsp'>QDFIR TOC</a> </font></b> </td>
    <td width="1072">
<p align="center"><b><font color="#336699" size="2">SCHEDULE OF OTHER LIABILITIES - QDFIR - 250</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

<form name"frm" method="POST" action="">
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="AutoNumber1">
      <th><b><font color="#336699" size="2">Code</font></b></th>
      <th><b><font color="#336699" size="2">Item</font></b></th>
      <th><b><font color="#336699" size="2">Amount</font></b></th>
<%
	try
	{
		PreparedStatement pst=cn.prepareStatement("select * from qdfir250Data");
		ResultSet rs=pst.executeQuery();

		while(rs.next())
		{
%>
			<tr>
				<td><input type="text" name="code<%=cnt%>" size="10" value="<%=rs.getString(1)%>"></td>
				<td><input type="text" name="desc<%=cnt%>" size="30" value="<%=rs.getString(2)%>"></td>
				<td><input type="text" name="value<%=cnt%>" size="20" value="<%=rs.getString(3)%>" readonly></td>
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