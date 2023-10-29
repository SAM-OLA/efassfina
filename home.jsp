<%@ page import="java.sql.*"%>
<html>

<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Cube CBN FINA System - Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">


<meta name="Microsoft Theme" content="poetic 1111, default">
<script>
function openAboutUs()
{
	window.open("aboutUs.htm",null, "height=300,width=320,status=no,toolbar=no,menubar=no,location=no,resizable=yes,scrollbars=yes");
	return false;
}
function showAdminConsole()
{
	window.open("adminConsole.jsp",null, "height=250,width=700,status=no,toolbar=no,menubar=no,location=no,resizable=yes,scrollbars=yes");
	return false;
}
</script>
</head>


<body>
<bgsound src="" id="snd">
<%
	String user=(String)session.getValue("userid");
	String pwd=(String)session.getValue("pwd");
	session.setMaxInactiveInterval(3600);
%>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="AutoNumber1" width="941">
    <tr>
      <td width="941" valign="top">
<jsp:include flush="true" page="header.jsp"/>
      </td>
    </tr>
    </table>
  </center>
</div>
<br>
<div align="center">
  <center>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" height="351" width="809">
  <tr>
    <td height="25" width="103">
    <p align="center"><font size="2"><b>Set up</b></font></td>
    <td height="25" width="270">
    &nbsp;</td>
    <td height="25" width="286">
    &nbsp;</td>
    <td height="25" width="22">
    &nbsp;</td>
    <td height="25" width="22">
    &nbsp;</td>
    <td height="25" width="106">
    <p align="center">
    <font size="2"><b>About Cube <font face="Verdana">®</font></b></font></td>
  </tr>
  <tr>
    <td height="25" width="103">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="103">
 <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="25" >
    <a href="adminConsole.jsp" onclick="return showAdminConsole()">Users</a></td>
  </tr>
</table>
</td>
    <td height="25" width="270">
          <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="178">
 <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="135" align="center" >
    <a href="ConfigurationForms.jsp">Configuration Forms</a></td>
  </tr>
</table>
</td>
    <td height="25" colspan="2" width="308">
</td>
    <td height="25" width="50">
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="103">
 <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="60" >
    <a href="signOut.jsp">Sign out</a></td>
  </tr>
</table>
    </td>
    <td height="25" width="106">
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="103">
 <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="25" >
    </td>
  </tr>
</table>
</td>
  </tr>
  <tr>
    <td height="12" width="103">
      </td>
    <td height="12" width="270">
    </td>
    <td height="12" width="286">
    </td>
    <td height="12" width="22">
    </td>
    <td height="12" width="22">
    </td>
    <td height="12" width="106">
    </td>
  </tr>
  <tr>
    <td height="25" width="103">
    <p align="center"><b><font size="2" title="Allows you specify the corresponding values for each CBN item per report">Mapping</font></b></td>
    <td height="25" colspan="4" width="600">
    <p align="center"><b><font size="2" title="Allows you generate XML files per report category">Generate XML</font></b></td>
    <td height="25" width="106">
    <p align="center"><b><font size="2" title="Allows you see final values per report category as represented in a generated XML file">View Data</font></b></td>
  </tr>
  <tr>
    <td height="350" width="103">      
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="103">
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="25">
    <a href="mpmbrtoc.jsp"><font face="Verdana" size="2">MPMBR</font></a></td>
  </tr>
   <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="25" >
    <a href="wdfirtoc.jsp"><font face="Verdana" size="2">WPMBR</font></a></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="25" >
    <a href="qpmbrtoc.jsp"><font face="Verdana" size="2">QPMBR</font></a></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="25" >
    <a href="spmbrtoc.jsp"><font face="Verdana" size="2">SPMBR</font></a></td>
  </tr>
  
   <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="25" >
    <a href="crmstoc.jsp"><font face="Verdana" size="2">CRMS</font></a></td>
  </tr>
  

</table>
</td>
    <td height="350" colspan="4" width="600">      <table width="411" border="0" cellpadding="0" cellspacing="0" class="atoll" style="border-collapse: collapse">
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
    <a href="mpmbr_select.jsp"><font face="Verdana" size="2">Offsite Surveillance Other Financial Institution Returns Quarterly (MPMBRXXX) </font></a></td>
  </tr>
   <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" >
    <a href="wdfir_select.jsp"><font face="Verdana" size="2">Offsite Surveillance Other Financial Institution Returns Weekly (WPMBR XXX)</font></a></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" >
    <a href="qpmbr_select.jsp"><font face="Verdana" size="2">Offsite Surveillance Other Financial Institution Returns Quarterly (QPMBR XXX)</font></a></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" >
    <a href="spmbr_select.jsp"><font face="Verdana" size="2">Offsite Surveillance Other Financial Institution Returns SemiAnnual(SPMBRXXX)</font></a></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" >
    <a href="crms_select.jsp"><font face="Verdana" size="2">Offsite Surveillance Credit Risk Management AsAndWhen (CRMSXXX)</font></a></td>
  </tr>

</table>
</td>
    <td height="350" width="106">      
    <table width="106" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="86">
    <a href="mpmbrtocView.jsp"><font face="Verdana" size="2">MPMBR</font></a></td>
  </tr>
   <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="86" >
    <font face="Verdana" size="2"><a href="wdfirtocView.jsp">WPMBR </a> </font></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="86" >
    <font face="Verdana" size="2"><a href="qpmbrtocView.jsp">QPMBR </a> </font></td>
  </tr>
  <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="86" >
    <font face="Verdana" size="2"><a href="spmbrtocView.jsp">SPMBR </a> </font></td>
  </tr>
   <tr>
    <td height="25" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );" width="86" >
    <a href="crmstocView.jsp"><font face="Verdana" size="2">CRMS</font></a></td>
  </tr>
   

</table>
</td>
  </tr>
  </table>
<br>
<jsp:include flush="true" page="footer.jsp"/>
  </center>
</div>
</body>

</html>