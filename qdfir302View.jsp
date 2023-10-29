<!--
@author Abu Taoheed
-->
<%@ page import="java.sql.*, cbnbas.qdfir.connect"%>
<%!
	Connection cn=null;
	ResultSet rs=null;
	PreparedStatement pst=null;
%>
<%
		connect c = new connect();
   		cn = c.connectMethod();
%>
<html>

<head>
<title>QDFIR 302</title>



<!--mstheme--><link rel="stylesheet" href="file:///C:/DOCUME~1/FAVOUR~1/LOCALS~1/Temp/FrontPageTempDir/mstheme/poetic/poet1111.css">



<meta name="Microsoft Theme" content="poetic 1111, default">
</head>

<body>
<center>
<jsp:include flush="true" page="header.jsp"/>
<br>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="1154">
  <tr>
    <td width="73">
    <b><font color="#336699" size="2">
    <a href='qdfirtocView.jsp'>qdfir TOC</a> </font></b> </td>
    <td width="1063">
<p align="center"><b><font color="#336699" size="2">BREAKDOWN OF OTHER ASSETS ITEMS - QDFIR 302</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

<form method="POST" action="">
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="677" id="AutoNumber1" height="34">
      <th height="17"><b><font color="#336699" size="2">Srno.</font></b></th>
      <th height="17"><b><font color="#336699" size="2">Item</font></b></th>
      <th height="17"><b><font color="#336699" size="2">Amount</font></b></th>
      <th height="17"><b><font color="#336699" size="2">Item Code</font></b></th>

<%
try
{
	pst=cn.prepareStatement("select * from qdfir302Data");
	rs=pst.executeQuery();
	while(rs.next())
	{
%>
    <tr>
      <td width="162" height="16" bgcolor="#FFC0C0"><input type="text" name="srno" size="10" value="<%=rs.getString(1)%>" readonly></td>
      <td width="235" height="16" bgcolor="#FFC0C0"><input type="text" name="desc" size="50" value="<%=rs.getString(2)%>" readonly></td>
      <td width="276" height="16" bgcolor="#FFC0C0"><input type="text" name="amt" size="20" value="<%=rs.getString(3)%>" readonly></td>
      <td width="276" height="16" bgcolor="#FFC0C0"><input type="text" name="code" size="20" value="<%=rs.getString(4)%>" readonly></td>
    </tr>
<%
	}
}
catch(Exception e)
{
	out.println("Error getting qdfir302 view data: "+e.toString());
}
%>
  </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
</form>

</body>

</html>