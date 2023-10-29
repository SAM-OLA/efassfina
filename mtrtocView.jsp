<html>

<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>MTR View Form</title>
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
		PreparedStatement pst=cnn.prepareStatement("select mtr from loginTable where userid=? and pwd=?");
		pst.setString(1,user);
		pst.setString(2,pwd);
		ResultSet rs=pst.executeQuery();
		rs.next();
		if(rs.getString(1).equals("1"))
		{
%>
<p align="center"><u><b>MTR View Form - Table Of Content</b></u></p>
<center>
  <table style="BORDER-COLLAPSE: collapse" cellPadding="3" border="1" height="4" bgcolor="#FFFFCC">
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="mtr202View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <font SIZE="2"><b><font face="Tahoma">MTR 202 - CAPTURE FOREIGN EXCHANGE FLOW STATEMENT</font></b> </font></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="mtr204View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <font SIZE="2"><b><font face="Tahoma">MTR 204 - CAPTURE IMPORT REGISTRATION</font></b> </font></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="mtr205View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <font SIZE="2"><b><font face="Tahoma">MTR 205 - CAPTURE IMPORT DUTY COLLECTED WITH FORM ‘M’</font></b> </font></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="mtr206View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <font SIZE="2"><b><font face="Tahoma">MTR 206 - CAPTURE SOURCES OF FUNDS</font></b> </font></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="mtr207View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <font SIZE="2"><b><font face="Tahoma">MTR 207 - CAPTURE UTILIZATION OF FORM M (L/C VALID) CBN FOREX SALES</font></b> </font></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="mtr208View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">

    <font SIZE="2"><b><font face="Tahoma">MTR 208 - CAPTURE UTILIZATION OF FORM M (BILLS FOR COLLECTION) CBN FOREX SALES</font></b> </font></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="mtr209View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">

    <font SIZE="2"><b><font face="Tahoma">MTR 209 - CAPTURE CONSOLIDATED FOREIGN EXCHANGE UTILIZATION</font></b> </font></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="mtr210View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">

    <font SIZE="2"><b><font face="Tahoma">MTR 210 - CAPTURE BREAKDOWN OF UTILIZATION (FORM ‘M’ OTHERS UNDER FINISHED GOODS)</font></b> </font></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="mtr211View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">

    <font SIZE="2"><b><font face="Tahoma">MTR 211 - CAPTURE BREAKDOWN OF UTILIZATION (FORM ‘M’ FOR FOODS UNDER FINISHED GOODS)</font></b> </font></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="mtr212View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <font SIZE="2"><b><font face="Tahoma">MTR 212 - CAPTURE BREAKDOWN OF UTILIZATION (FORM ‘M’ FOR OTHERS UNDER INVISIBLE)</font></b> </font></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="mtr213View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">

    <font SIZE="2"><b><font face="Tahoma">MTR 213 - CAPTURE OPERATION OF DOMICILIARY AND EXTERNAL ACCOUNT</font></b> </font></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="mtr214View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">

    <font SIZE="2"><b><font face="Tahoma">MTR 214 - CAPTURE DETAIL OPERATION OF DOMICILIARY AND EXTERNAL ACCOUNT</font></b> </font></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="mtr215View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">

    <font SIZE="2"><b><font face="Tahoma">MTR 215 - DETAILS FOR TRANSFER OF FORM</font></b> </font></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="mtr216View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">

    <font SIZE="2"><b><font face="Tahoma">MTR 216 - CAPTURE DETAIL OF CUSTOMERS WHO HAVE DEFAULTED IN THE SUBMISSION OF COMPLETE SHIPPING DOCUMENT</font></b> </font></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="mtr301View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">

    <font SIZE="2"><b><font face="Tahoma">MTR 301 - EXPORT REGISTRATION</font></b> </font></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="mtr302View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">

    <font SIZE="2"><b><font face="Tahoma">MTR 302 - EXPORT PROCEEDS</font></b> </font></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="mtr303View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">

    <font SIZE="2"><b><font face="Tahoma">MTR 303 - MONTHLY RETURN OF CAPITAL IMPORTATION</font></b> </font></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="mtr305View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">

    <font SIZE="2"><b><font face="Tahoma">MTR 305 - DETAILS OF TOTAL FOREX SALES TO END-USERS</font></b> </font></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="mtr306View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">

    <font SIZE="2"><b><font face="Tahoma">MTR 306 - MONTHLY ANALYSIS OF PRIVATE SECTOR DEBT</font></b> </font></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="mtr307View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">

    <font SIZE="2"><b><font face="Tahoma">MTR 307 - MONTHLY ANALYSIS OF PRIVATE SECTOR EXTERNAL INVESTMENTS</font></b> </font></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="mtr308View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">

    <font SIZE="2"><b><font face="Tahoma">MTR 308 - MONTHLY RETURN ON TRANSFER OF - PROFIT, DIVIDEND AND CAPITAL</font></b> </font></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="mtr316View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">

    <font SIZE="2"><b><font face="Tahoma">MTR 316 - RETURN ON FOREIGN EXCHANGE PURCHASED BY BANKS FROM OIL AND OIL SERVICES</font></b> </font></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <p class="MsoNormal"><font face="Tahoma">
    <a href="mtr319View.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></font></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">

    <font SIZE="2"><b><font face="Tahoma">MTR 319 - ISSUANCE OF LETTERS OF CREDIT (TED/LC)</font></b> </font></td>
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
