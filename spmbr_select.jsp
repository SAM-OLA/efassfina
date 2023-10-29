<html>
<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Semi-Annual - Offsite Surveillance Other FinancialInstitution Returns - Select Report(s) to generate</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="Microsoft Theme" content="poetic 1111, default">
</head>
<SCRIPT language="JavaScript1.2">
  function doClickAll(form) {
	for (var i = 0; i < form.elements.length; i++) {
		if ( form.elements[i].type == "checkbox" ) {
			if ( ! form.elements[i].checked ) { form.elements[i].click();
			}
		}
    }
	return true;
  }

  function doUnClickAll(form) {
	for (var i = 0; i < form.elements.length; i++) {
		if ( form.elements[i].type == "checkbox" ) {
			if (  form.elements[i].checked ) { form.elements[i].checked = false;
			}
		}
	}
	return true;
  }
</SCRIPT>
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
		PreparedStatement pst=cnn.prepareStatement("select SPMBR from loginTable where userid=? and pwd=?");
		pst.setString(1,user);
		pst.setString(2,pwd);
		ResultSet rs=pst.executeQuery();
		rs.next();
		if(rs.getString(1).equals("1"))
		{
%>
<BR>
        <table border="1" cellpadding="3" style="border-collapse: collapse" width="820" >
<form method="POST" action="generate_spmbr.jsp">
<input type="hidden" name="sb1900" value="0">
<input type="hidden" name="sb1905" value="0">
<input type="hidden" name="sb1910" value="0">
<input type="hidden" name="sb1910A" value="0">
<input type="hidden" name="sb1910B" value="0">
<input type="hidden" name="sb1910C" value="0">
<input type="hidden" name="sb1910D" value="0">
<input type="hidden" name="sb1910E" value="0">
<input type="hidden" name="sb1920" value="0">
<input type="hidden" name="sb1930" value="0">
<input type="hidden" name="sb1940" value="0">
<input type="hidden" name="sb1950" value="0">
<input type="hidden" name="sb1960" value="0">
<input type="hidden" name="sb1970" value="0">
<input type="hidden" name="sb1980" value="0">
    <tr>
        <td valign="top" width="5%" align="center" bgcolor="#F5F5F5">
        <font face="Tahoma"><input type="checkbox" name="CheckAll" value="ON" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}"></font></td>
        <td valign="top" bgcolor="#F5F5F5"><font face="Tahoma" size="2">Select All</font></td>
      </tr>
<!--
      <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="s1910A" value="ON" onClick="if (this.checked) {this.form.sb1910A.value='1'} else {this.form.sb1910A.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">SPMBR 1910A - SEMI-ANNUAL RETURN ON CORPORATE PROFILE (Head Office Details | Branches and Staff Details) - part 1</font></td>
      </tr>
      <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="s1910B" value="ON" onClick="if (this.checked) {this.form.sb1910B.value='1'} else {this.form.sb1910B.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">SPMBR 1910B - SEMI-ANNUAL RETURN ON CORPORATE PROFILE (Foreign Subsidiary | Foreign Branches and Staff Summary) - part 2</font></td>
      </tr>
      <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="s1910C" value="ON" onClick="if (this.checked) {this.form.sb1910C.value='1'} else {this.form.sb1910C.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">SPMBR 1910C - SEMI-ANNUAL RETURN ON CORPORATE PROFILE (ShareHolding Details) - part 3</font></td>
      </tr>
      <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="s1910D" value="ON" onClick="if (this.checked) {this.form.sb1910D.value='1'} else {this.form.sb1910D.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">SPMBR 1910D - SEMI-ANNUAL RETURN ON CORPORATE PROFILE (Details of Auditors) - part 4</font></td>
      </tr>
      <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="s1910E" value="ON" onClick="if (this.checked) {this.form.sb1910E.value='1'} else {this.form.sb1910E.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">SPMBR 1910E - SEMI-ANNUAL RETURN ON CORPORATE PROFILE (Details of Consultants / Service providers) - part 5</font></td>
      </tr>
-->
      <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="s1910" value="ON" onClick="if (this.checked) {this.form.sb1910.value='1'} else {this.form.sb1910.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">SPMBR 1910 - SEMI-ANNUAL RETURN ON CORPORATE PROFILE</font></td>
      </tr>
      <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="s1920" value="ON" onClick="if (this.checked) {this.form.sb1920.value='1'} else {this.form.sb1920.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">SPMBR 1920 - SEMI-ANNUAL RETURN ON BRANCH NETWORK</font></td>
      </tr>
      <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="s1930" value="ON" onClick="if (this.checked) {this.form.sb1930.value='1'} else {this.form.sb1930.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">SPMBR 1930 - SEMI-ANNUAL RETURN ON BANK'S DIRECTORS</font></td>
      </tr>
      <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="s1940" value="ON" onClick="if (this.checked) {this.form.sb1940.value='1'} else {this.form.sb1940.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">SPMBR 1940 - SEMI-ANNUAL RETURN ON BANK'S SIGNIFICANT SHAREHOLDERS</font></td>
      </tr>
      <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="s1950" value="ON" onClick="if (this.checked) {this.form.sb1950.value='1'} else {this.form.sb1950.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">SPMBR 1950 - SEMI-ANNUAL RETURN ON MANAGEMENT AND TOP OFFICERS</font></td>
      </tr>
      <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="s1960" value="ON" onClick="if (this.checked) {this.form.sb1960.value='1'} else {this.form.sb1960.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">SPMBR 1960 - SEMI-ANNUAL RETURN ON PAST DIRECTORS / TOP MANAGEMENT / SENIOR STAFF</font></td>
      </tr>
	  <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="s1970" value="ON" onClick="if (this.checked) {this.form.sb1970.value='1'} else {this.form.sb1970.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">SPMBR 1970 - SEMI-ANNUAL RETURN ON CLOSURE OF BRANCHES</font></td>
      </tr>
	  <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="s1980" value="ON" onClick="if (this.checked) {this.form.sb1980.value='1'} else {this.form.sb1980.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">SPMBR 1980 - SEMI-ANNUAL RETURN ON INVESTMENT IN SHARES</font></td>
      </tr>

        <tr>
        <td align="center" bgcolor="#F5F5F5" colspan="2">&nbsp;
        <font face="Tahoma">
        <input type="submit" value="Generate" name="B1" style="font-family: Tahoma; font-size: 12px"></font>&nbsp;&nbsp;
        <input type="reset" value="Reset" name="B2" style="font-family: Tahoma; font-size: 12px"></td>
      </tr>
  </form>
</TABLE>
      </td>
    </tr>
    <tr>
      <td>
<P></P>
<jsp:include flush="true" page="footer.jsp"/>


      </td>
    </tr>
  </table>
  </center>
</div>
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
      <div align="center">
        <center>
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
        </center>
</div>
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
<div align="center">
  <center>
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="200" height="30">
    <tr>
      <td width="896" valign="middle" align="center" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
		<a href="intro.htm">Back to Login Page</a>
      </td>
      </tr>
      </table>
  </center>
</div>
<%
		System.out.println("Error: "+ex.toString());
	}
%></body>

&nbsp;</html>