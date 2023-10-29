<html>

<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>WDFIR Customise Form</title>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<!--mstheme--><link rel="stylesheet" href="poet1111.css">
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
		PreparedStatement pst=cnn.prepareStatement("select wdfir from loginTable where userid=? and pwd=?");
		pst.setString(1,user);
		pst.setString(2,pwd);
		ResultSet rs=pst.executeQuery();
		rs.next();
		if(rs.getString(1).equals("1"))
		{
%>
<p align="center"><u><b>WDFIR Customise Form - Table Of Content</b></u></p>
<center>
  <table style="BORDER-COLLAPSE: collapse" cellPadding="3" border="1" height="4" bgcolor="#FFFFCC">
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="wdfir100.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">WDFIR 100 </font></b>
    <font SIZE="2"><b><font face="Tahoma">SCHEDULE OF INTEREST EARNED AND DISTRIBUTED ON ALL L And S (DRAWN and UNDRAWN) FOR THE QUARTER ENDED</font></b> </font></td>
  </tr>
  <tr style="height: 15.75pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="wdfir200.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">WDFIR 200 RETURN ON MONEY LAUNDERING</font></b></td>
  </tr>
  <tr style="height: 15.75pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="wdfir300.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">WDFIR 300 RETURN OF LODGEMENT ON TRANSFER OF FUNDS</font></b></td>
  </tr>
  <tr style="height: 15.75pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="wdfir400.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">WDFIR 400 RETURN ON SUSPICIOUS TRANSACTIONS
    </font></b> </td>
  </tr>
  <tr style="height: 15.75pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="wdfir500.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">WDFIR 500 RETURN OF FOREIGN EXCHANGE ROUTINE</font></b> </td>
  </tr>
  <tr style="height: 15.75pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="wdfir600.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">WDFIR 600 RETURN ON LODGEMENT ON TRANSFER OF FUNDS  IN EXCESS</font></b> </td>
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