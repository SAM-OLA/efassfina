<html>

<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>QPMBR Customise Form</title>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<meta name="Microsoft Theme" content="poetic 1111, default">
</head>

<center>
<jsp:include flush="true" page="header.jsp"/>
<body>
<bgsound src="" id="snd">
<%@ page import="java.sql.*, cbnbas.admin.connect"%>
<%
	String user=(String)session.getValue("userid");
	String pwd=(String)session.getValue("pwd");

	try
	{	
		connect c = new connect();
   		Connection cnn = c.connectMethod();
		PreparedStatement pst=cnn.prepareStatement("select qpmbr from loginTable where userid=? and pwd=?");
		pst.setString(1,user);
		pst.setString(2,pwd);
		ResultSet rs=pst.executeQuery();
		rs.next();
		if(rs.getString(1).equals("1"))
		{
%>
<p align="center"><u><b>QPMBR Customise Form - Table Of Content</b></u></p>
<center>
  <table style="BORDER-COLLAPSE: collapse" cellPadding="3" border="1" height="4" bgcolor="#FFFFCC">
  <tr style="height: 12.75pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="qpmbr1510.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">QPMBR 
    1510
    SCHEDULE OF NON PERFORMING OTHER ASSETS</font></b></td>
  </tr>
  <tr style="height: 12.75pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="qpmbr1520.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">QPMBR 
    1520
    SCHEDULE OF CREDIT TO DIRECTORS/EMPLOYEES/SIGNIFICANT SHAREHOLDERS/REL.INTEREST</font></b></td>
  </tr>
  <tr style="height: 12.75pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="qpmbr1530.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">QPMBR 
    1530
    SCHEDULE OF TOP USERS OF FUND</font></b></td>
  </tr>
  <tr style="height: 12.75pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="qpmbr1540.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">QPMBR 
    1540
    SCHEDULE OF NON-INTEREST INCOME</font></b></td>
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
%>
<br>
<br>
		<h1 align="center">Sorry, either your session has expired</h1>
		<h1 align="center">or You are not a valid user!</h1>
		<h4 align="center">Please go back and re-login using the link below<br>
<br>
<br>
<br>
<br>
<br>
      </h4>
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="200" height="30">
    <tr>
      <td width="896" valign="middle" align="center" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
		<a href="intro.htm">Back to Login Page</a>
      </td>
      </tr>
      </table>
<%
		System.out.println("Error: "+ex.toString());
	}
%></body></html>