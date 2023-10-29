<html>
<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>CRMS - Bank Offsite Surveillance Credit Risk Management Returns As And When -  Select Report(s) to generate</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
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

<body>

<div align="center">
  <center>
  <table width="826" border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" id="AutoNumber1" style="border-collapse: collapse">
    <tr>
      <td width="773">

        <div align="center">
 <jsp:include flush="true" page="header.jsp"/>
        </div></td>
    </tr>
    <tr>
      <td height="300" align="center">
        <p align="left"><a href="dfi_home.jsp">&lt;home&gt;</a></p>
        <table border="1" cellpadding="3" style="border-collapse: collapse" bordercolor="#111111" width="651" >
<form method="POST" action="dfi_generate_crms.jsp">
<input type="hidden" name="crms100" value="0">
<input type="hidden" name="crms200" value="0">
<input type="hidden" name="crms201" value="0">
<input type="hidden" name="crms300" value="0">
<input type="hidden" name="crms301" value="0">
<input type="hidden" name="crms400" value="0">
<input type="hidden" name="crms500a" value="0">
<input type="hidden" name="crms500b" value="0">
    <tr>
        <td valign="top" width="5%" align="center" bgcolor="#F5F5F5">
        <font face="Tahoma"><input type="checkbox" name="CheckAll" value="ON" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}"></font></td>
        <td valign="top" bgcolor="#F5F5F5"><font face="Tahoma" size="2">Select All</font></td>
      </tr>
      <tr>
        <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
        <font face="Tahoma"><input type="checkbox" name="c100" value="ON" onClick="if (this.checked) {this.form.crms100.value='1'} else {this.form.crms100.value='0'}"></font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">CRMS 100 - RETURN FOR INDIVIDUAL BORROWER CODE </font></td>
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
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">CRMS 300 - REQUEST FOR DIRECTORS BORROWER CODE</font></td>
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
        <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
        <font face="Tahoma"><input type="checkbox" name="c500a" value="ON" onClick="if (this.checked) {this.form.crms500a.value='1'} else {this.form.crms500a.value='0'}"></font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">CRMS 500A - REPORT FOR INDIVIDUAL BORROWER CODE </font></td>
      </tr>
      <tr>
        <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
        <font face="Tahoma"><input type="checkbox" name="c500b" value="ON" onClick="if (this.checked) {this.form.crms500b.value='1'} else {this.form.crms500b.value='0'}"></font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">CRMS 500B - REPORT FOR CORPORATE BORROWER CODE </font></td>
      </tr>

        <tr>
        <td align="center" bgcolor="#F5F5F5" colspan="2">&nbsp;
        <font face="Tahoma">
        <input type="submit" value="Generate" name="B1" style="font-family: Tahoma; font-size: 12px"></font>&nbsp;&nbsp;
        <input type="reset" value="Reset" name="B2" style="font-family: Tahoma; font-size: 12px"></td>
        </tr>
  </form>

      </table>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      </td>
    </tr>
    <tr>
      <td>

<jsp:include flush="true" page="footer.jsp"/>

      </td>
    </tr>
  </table>
  </center>
</div>

</body>

</html>
