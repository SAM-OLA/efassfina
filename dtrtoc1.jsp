<html>

<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>MBR Customise Form</title>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<!--mstheme--><link rel="stylesheet" href="file:///C:/DOCUME~1/FAVOUR~1/LOCALS~1/Temp/FrontPageTempDir/mstheme/poetic/poet1111.css">
<meta name="Microsoft Theme" content="poetic 1111, default">
</head>

<center>
<jsp:include flush="true" page="header.jsp"/>
<body>
<bgsound src="" id="snd">
<%@ page import="java.sql.*"%>
<%
	String user=(String)session.getValue("userid");
	String pwd=(String)session.getValue("pwd");

	try
	{	
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection cnn=DriverManager.getConnection("jdbc:odbc:adminDB");
		PreparedStatement pst=cnn.prepareStatement("select DTR from loginTable where userid=? and pwd=?");
		pst.setString(1,user);
		pst.setString(2,pwd);
		ResultSet rs=pst.executeQuery();
		rs.next();
		if(rs.getString(1).equals("1"))
		{
%>
<p align="center"><b><font color="#336699" size="2">DTR Customise Form - Table Of Content</font></b></p>
<center>
  <table style="BORDER-COLLAPSE: collapse" cellPadding="3" width="585" border="1" height="4" bgcolor="#FFFFCC">
<tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="dtr203.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">DTR 203 - SUMMARY OF FOREIGN EXCHANGE POSITION REPORT </font></b></td>
  </tr>
<tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="dtr217.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">DTR 217 - CUSTOMER INFORMATION</font></b></td>
  </tr>
</table>
</center>
<%
		}
		else
		{
%>	
<br>
<br>
<br>
		<h1 align="center">Access Denied!</h1>
		<h4 align="center">You do not have enough access privilege to this call report</h4>
		<h4 align="center">Please see your administrator</h4>
<br>
<br>
<br>
<br>
<br>
<br>
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="400" height="30">
    <tr>
      <td width="896" valign="middle" align="center" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
		<a href="" onclick="history.back(); return false">Back home Page</a>
      </td>
      <td width="896" valign="middle" align="center" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
		<a href="intro.htm">Back to Login Page</a>
      </td>
      </tr>
      </table>
<%
		}
	}
	catch(Exception ex)
	{
		out.println("<h1>Sorry, Invalid user!</h1>");
		System.out.println("Error: "+ex.toString());
	}
%>
</body>

</html>