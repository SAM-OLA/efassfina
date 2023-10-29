<html>
<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>CRMS - Bank Offsite Surveillance Credit Risk Management Returns As And When -  Select Report(s) to generate</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!--mstheme--><link rel="stylesheet" href="poet1111.css">
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
		PreparedStatement pst=cnn.prepareStatement("select CRMS from loginTable where userid=? and pwd=?");
		pst.setString(1,user);
		pst.setString(2,pwd);
		ResultSet rs=pst.executeQuery();
		rs.next();
		if(rs.getString(1).equals("1"))
		{
%>
<BR>
        <table border="1" cellpadding="3" style="border-collapse: collapse" width="651" >
<form method="POST" action="generate_crms.jsp">
<input type="hidden" name="crms100" value="0">
<input type="hidden" name="crms200" value="0">
<input type="hidden" name="crms201" value="0">
<input type="hidden" name="crms300" value="0">
<input type="hidden" name="crms301" value="0">
<input type="hidden" name="crms400" value="0">
    <tr>
        <td valign="top" width="5%" align="center" bgcolor="#F5F5F5">
        <font face="Tahoma"><input type="checkbox" name="CheckAll" value="ON" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}"></font></td>
        <td valign="top" bgcolor="#F5F5F5"><font face="Tahoma" size="2">Select All</font></td>
      </tr>
      <tr>
        <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
        <font face="Tahoma"><input type="checkbox" name="c100" value="ON" onClick="if (this.checked) {this.form.crms100.value='1'} else {this.form.crms100.value='0'}"></font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">CRMS 100 - REQUEST FOR INDIVIDUAL BORROWER CODE </font></td>
      </tr>
      <tr>
        <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
        <font face="Tahoma"><input type="checkbox" name="c200" value="ON" onClick="if (this.checked) {this.form.crms200.value='1'} else {this.form.crms200.value='0'}"></font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">CRMS 200 - REQUEST FOR CORPORATE BORROWER CODE </font></td>
      </tr>
      <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="c201" value="ON" onClick="if (this.checked) {this.form.crms201.value='1'} else {this.form.crms201.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">CRMS 201 - REQUEST FOR DIRECTORS BORROWER CODE</font></td>
      </tr>
      <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="c300" value="ON" onClick="if (this.checked) {this.form.crms300.value='1'} else {this.form.crms300.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">CRMS 300 - CREDIT PROFILE</font></td>
      </tr>
      <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="c301" value="ON" onClick="if (this.checked) {this.form.crms301.value='1'} else {this.form.crms301.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">CRMS 301 - RESTRUCTURED CREDIT PROFILE</font></td>
      </tr>
      <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="c400" value="ON" onClick="if (this.checked) {this.form.crms400.value='1'} else {this.form.crms400.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">CRMS 400 - MONTHLY UPDATE ON CREDIT PROFILE</font></td>
      </tr>
        <tr>
        <td align="center" bgcolor="#F5F5F5" colspan="2">&nbsp;
        <font face="Tahoma">
        <input type="submit" value="Generate" name="B1" style="font-family: Tahoma; font-size: 12px"></font>&nbsp;&nbsp;
        <input type="reset" value="Reset" name="B2" style="font-family: Tahoma; font-size: 12px"></td>
      </tr>
  </form>

      </table>
      </td>
    </tr>
    <tr>
.      <td>

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
%>
</body>

</html>