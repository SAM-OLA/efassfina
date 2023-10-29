<html>

<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>QDFIR Customise Form</title>
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
		PreparedStatement pst=cnn.prepareStatement("select qdfir from loginTable where userid=? and pwd=?");
		pst.setString(1,user);
		pst.setString(2,pwd);
		ResultSet rs=pst.executeQuery();
		rs.next();
		if(rs.getString(1).equals("1"))
		{
%>
<p align="center"><u><b>QDFIR Customise Form - Table Of Content</b></u></p>
<center>
  <table style="BORDER-COLLAPSE: collapse" cellPadding="3" border="1" height="4" bgcolor="#FFFFCC">
  <tr height="18" style="height: 13.5pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="22">

    <a href="mtr202.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="767">
    <b><font face="Tahoma" size="2">MTR 202
    CAPTURE FOREIGN EXCHANGE FLOW STATEMENT&nbsp;</font></b></td>
  </tr>
  <tr height="18" style="height: 13.5pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="22">

    <a href="mtr204.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="767">
    <b><font face="Tahoma" size="2">MTR 204
    CAPTURE IMPORT REGISTRATION&nbsp;</font></b></td>
  </tr>
  <tr height="18" style="height: 13.5pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="22">

    <a href="mtr205.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="767">
    <b><font face="Tahoma" size="2">MTR 205
    CAPTURE IMPORT DUTY COLLECTED WITH FORM ‘M’</font></b></td>
  </tr>
  <tr height="18" style="height: 13.5pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="22">

    <a href="mtr206.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="767">
    <b><font face="Tahoma" size="2">MTR 206
    CAPTURE SOURCES OF FUNDS&nbsp;</font></b></td>
  </tr>
  <tr height="18" style="height: 13.5pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="22">

    <a href="mtr207.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="767">
    <b><font face="Tahoma" size="2">MTR 207 - CAPTURE UTILIZATION OF FORM M (L/C VALID) CBN FOREX SALES&nbsp;</font></b></td>
  </tr>
  <tr height="18" style="height: 13.5pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="22">

    <a href="mtr208.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="767">
    <b><font face="Tahoma" size="2">MTR 208 - CAPTURE UTILIZATION OF FORM M (BILLS FOR COLLECTION) CBN FOREX SALES</font></b></td>
  </tr>
  <tr height="18" style="height: 13.5pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="22">

    <a href="mtr209.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="767">
    <b><font face="Tahoma" size="2">MTR 209 - CAPTURE CONSOLIDATED FOREIGN EXCHANGE UTILIZATION</font></b></td>
  </tr>
  <tr height="18" style="height: 13.5pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="22">

    <a href="mtr210.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="767">
    <b><font face="Tahoma" size="2">MTR 210 - CAPTURE BREAKDOWN OF UTILIZATION (FORM ‘M’ OTHERS UNDER FINISHED GOODS)</font></b></td>
  </tr>
  <tr height="18" style="height: 13.5pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="22">

    <a href="mtr211.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="767">
    <b><font face="Tahoma" size="2">MTR 211 - CAPTURE BREAKDOWN OF UTILIZATION (FORM ‘M’ FOR FOODS UNDER FINISHED GOODS)&nbsp;</font></b></td>
  </tr>
  <tr height="18" style="height: 13.5pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="22">

    <a href="mtr212.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="767">
    <b><font face="Tahoma" size="2">MTR 212 - CAPTURE BREAKDOWN OF UTILIZATION (FORM ‘M’ FOR OTHERS UNDER INVISIBLE)</font></b></td>
  </tr>
  <tr height="18" style="height: 13.5pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="22">

    <a href="mtr213.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="767">
    <b><font face="Tahoma" size="2">MTR 213 - CAPTURE OPERATION OF DOMICILIARY AND EXTERNAL ACCOUNT</font></b></td>
  </tr>
  <tr height="18" style="height: 13.5pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="22">

    <a href="mtr214.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="767">
    <b><font face="Tahoma" size="2">MTR 214 - CAPTURE DETAIL OPERATION OF DOMICILIARY AND EXTERNAL ACCOUNT</font></b></td>
  </tr>
  <tr height="18" style="height: 13.5pt">
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="22">

    <a href="mtr215.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="767">
    <b><font face="Tahoma" size="2">MTR 215 - DETAILS FOR TRANSFER OF FORM</font></b></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="22">

    <a href="mtr216.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="767">
    <b><font face="Tahoma" size="2">MTR 216 - CAPTURE DETAIL OF CUSTOMERS WHO HAVE DEFAULTED IN THE SUBMISSION OF COMPLETE SHIPPING DOCUMENT</font></b></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="22">

    <a href="mtr301.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="767">
    <b><font face="Tahoma" size="2">MTR 301 EXPORT REGISTRATION</font></b></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="22">

    <a href="mtr302.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="767">
    <b><font face="Tahoma" size="2">MTR 302 - EXPORT PROCEEDS&nbsp;</font></b></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="22">

    <a href="mtr303.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="767">
    <b><font face="Tahoma" size="2">MTR 303 - MONTHLY RETURN OF CAPITAL IMPORTATION</font></b></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="22">

    <a href="mtr305.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="767">
    <b><font face="Tahoma" size="2">MTR 305 - DETAILS OF TOTAL FOREX SALES TO END-USERS</font></b></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="22">

    <a href="mtr306.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="767">
    <b><font face="Tahoma" size="2">MTR 306 - MONTHLY ANALYSIS OF PRIVATE SECTOR DEBT</font></b></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="22">

    <a href="mtr307.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="767">
    <b><font face="Tahoma" size="2">MTR 307 - MONTHLY ANALYSIS OF PRIVATE SECTOR EXTERNAL INVESTMENTS</font></b></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="22">

    <a href="mtr308.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="767">
    <b><font face="Tahoma" size="2">MTR 308 - MONTHLY RETURN ON TRANSFER OF - PROFIT, DIVIDEND AND CAPITAL</font></b></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="22">

    <a href="mtr316.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="767">
    <b><font face="Tahoma" size="2">MTR 316 - RETURN ON FOREIGN EXCHANGE PURCHASED BY BANKS FROM OIL AND OIL SERVICES</font></b></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="22">

	<a href="mtr319.jsp">
  <img border="0" src="images/globe.gif" width="21" height="20"></a></td>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="767">
    <b><font face="Tahoma" size="2">MTR 319 - ISSUANCE OF LETTERS OF CREDIT (TED/LC)</font></b></td>
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