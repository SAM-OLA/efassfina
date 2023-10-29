<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>MBR Customise Form</title>
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
		PreparedStatement pst=cnn.prepareStatement("select CRMS from loginTable where userid=? and pwd=?");
		pst.setString(1,user);
		pst.setString(2,pwd);
		ResultSet rs=pst.executeQuery();
		rs.next();
		if(rs.getString(1).equals("1"))
		{
%>
<p align="center"><b><font color="#336699" size="2">CRMS Customise Form - Table Of Content</font></b></p>
<center>
  <table style="BORDER-COLLAPSE: collapse" cellPadding="3" width="668" border="1" height="142" bgcolor="#FFFFCC">
  <tr style="height: 12.75pt">
    <td nowrap style="height:25; padding-left:.85pt; padding-right:.85pt; padding-top:.85pt; padding-bottom:0cm" width="28" align="center" bgcolor="#FFFFE8">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="crms100View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td style="width:633;height:25; padding-left:.85pt; padding-right:.85pt; padding-top:.85pt; padding-bottom:0cm" align="left" bgcolor="#FFFFE8">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">CRMS100 RETURN 
    FOR INDIVIDUAL BORROWER CODE</font></b></td>
  </tr>
  <tr style="height: 12.75pt">
    <td nowrap style="height:25; padding-left:.85pt; padding-right:.85pt; padding-top:.85pt; padding-bottom:0cm" width="28" align="center" bgcolor="#FFFFE8">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="crms200View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td style="width:633;height:25; padding-left:.85pt; padding-right:.85pt; padding-top:.85pt; padding-bottom:0cm" align="left" bgcolor="#FFFFE8">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">CRMS200 RETURN 
    FOR CORPORATE BORROWER CODE-RETURN </font></b></td>
  </tr>
  <tr style="height: 12.75pt">
    <td nowrap style="height:25; padding-left:.85pt; padding-right:.85pt; padding-top:.85pt; padding-bottom:0cm" width="28" align="center" bgcolor="#FFFFE8">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="crms201View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td style="width:633;height:25; padding-left:.85pt; padding-right:.85pt; padding-top:.85pt; padding-bottom:0cm" align="left" bgcolor="#FFFFE8">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">CRMS201 RETURN 
    FOR DIRECTORS OF CORPORATE BORROWER-FORM </font></b></td>
  </tr>
  <tr style="height: 12.75pt">
    <td nowrap style="height:25; padding-left:.85pt; padding-right:.85pt; padding-top:.85pt; padding-bottom:0cm" width="28" align="center" bgcolor="#FFFFE8">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="crms300View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td style="width:633;height:25; padding-left:.85pt; padding-right:.85pt; padding-top:.85pt; padding-bottom:0cm" align="left" bgcolor="#FFFFE8">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">CRMS300 RETURN 
    FOR CREDIT PROFILE -RETURN </font></b></td>
  </tr>
  <tr style="height: 12.75pt">
    <td nowrap style="height:25; padding-left:.85pt; padding-right:.85pt; padding-top:.85pt; padding-bottom:0cm" width="28" align="center" bgcolor="#FFFFE8">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="crms301View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td style="width:633;height:25; padding-left:.85pt; padding-right:.85pt; padding-top:.85pt; padding-bottom:0cm" align="left" bgcolor="#FFFFE8">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">CRMS301 RETURN 
    ON RESTRUCTURED CREDIT PROFILE -RETURN </font></b></td>
  </tr>
  <tr style="height: 12.75pt">
    <td nowrap style="height:25; padding-left:.85pt; padding-right:.85pt; padding-top:.85pt; padding-bottom:0cm" width="28" align="center" bgcolor="#FFFFE8">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="crms400View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td style="width:633;height:25; padding-left:.85pt; padding-right:.85pt; padding-top:.85pt; padding-bottom:0cm" align="left" bgcolor="#FFFFE8">
    <p class="MsoNormal"><b><font face="Tahoma" size="2">CRMS400 RETURN 
    ON MONTHLY CREDIT UPDATE -RETURN </font></b></td>
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
%>
</body>

</html>