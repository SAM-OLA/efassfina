<html>

<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>SPMBR Customise Form</title>
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
		PreparedStatement pst=cnn.prepareStatement("select spmbr from loginTable where userid=? and pwd=?");
		pst.setString(1,user);
		pst.setString(2,pwd);
		ResultSet rs=pst.executeQuery();
		rs.next();
		if(rs.getString(1).equals("1"))
		{
%>
<p align="center"><u><b>SPMBR Customise Form - Table Of Content</b></u></p>
<center>
  <table style="BORDER-COLLAPSE: collapse" cellPadding="3" border="1" height="4" bgcolor="#FFFFCC">
  <tr style="height: 12.75pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="spmbr1910AView.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">SPMBR 1910 A SEMI-ANNUAL RETURN ON CORPORATE PROFILE (Head Office Details | Branches and Staff Details) - part 1</font></b></td>
  </tr>
  <tr style="height: 12.75pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="spmbr1910BView.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">SPMBR 1910 B SEMI-ANNUAL RETURN ON CORPORATE PROFILE (Foreign Subsidiary | Foreign Branches and Staff Summary) - part 2</font></b></td>
  </tr>
  <tr style="height: 12.75pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="spmbr1910CView.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">SPMBR 1910 C SEMI-ANNUAL RETURN ON CORPORATE PROFILE (ShareHolding Details) - part 3</font></b></td>
  </tr>
  <tr style="height: 12.75pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="spmbr1910DView.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">SPMBR 1910 D SEMI-ANNUAL RETURN ON CORPORATE PROFILE (Details of Auditors) - part 4</font></b></td>
  </tr>
  <tr style="height: 12.75pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="spmbr1910EView.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">SPMBR 1910 E SEMI-ANNUAL RETURN ON CORPORATE PROFILE (Details of Consultants / Service providers) - part 5</font></b></td>
  </tr>
  <tr style="height: 12.75pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="spmbr1920View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">SPMBR 1920 SEMI-ANNUAL RETURN ON BRANCH NETWORK </font></b></td>
  </tr>
  <tr style="height: 12.75pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="spmbr1930View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">SPMBR 1930 SEMI-ANNUAL RETURN ON BANK'S DIRECTORS </font></b></td>
  </tr>
  <tr style="height: 12.75pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="spmbr1940View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">SPMBR 1940 SEMI-ANNUAL RETURN ON BANK'S SIGNIFICANT SHAREHOLDERS </font></b></td>
  </tr>
  <tr style="height: 12.75pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="spmbr1950View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">SPMBR 1950 SEMI-ANNUAL RETURN ON MANAGEMENT AND TOP OFFICERS </font></b></td>
  </tr>
  <tr style="height: 12.75pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="spmbr1960View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">SPMBR 1960 SEMI-ANNUAL RETURN ON PAST DIRECTORS / TOP MANAGEMENT / SENIOR STAFF</font></b></td>
  </tr>
  <tr style="height: 12.75pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="spmbr1970View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">SPMBR 1970 SEMI-ANNUAL RETURN ON CLOSURE OF BRANCHES</font></b></td>
  </tr>
  <tr style="height: 12.75pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="spmbr1980View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">SPMBR 1980 SEMI-ANNUAL RETURN ON INVESTMENT IN SHARES</font></b></td>
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