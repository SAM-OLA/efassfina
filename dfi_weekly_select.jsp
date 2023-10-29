<html>
<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Weekly - Offsite Surveillance Money Laundering Return - Select Report(s) to generate</title>
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
<form method="POST" action="dfi_generate_wdfir.jsp">
<input type="hidden" name="wb100" value="0">
<input type="hidden" name="wb200" value="0">
<input type="hidden" name="wb300" value="0">
<input type="hidden" name="wb400" value="0">
<input type="hidden" name="wb500" value="0">
<input type="hidden" name="wb600" value="0">
    <tr>
        <td valign="top" width="5%" align="center" bgcolor="#F5F5F5">
        <font face="Tahoma"><input type="checkbox" name="CheckAll" value="ON" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}"></font></td>
        <td valign="top" bgcolor="#F5F5F5"><font face="Tahoma" size="2">Select All</font></td>
      </tr>
      <tr>
        <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
        <font face="Tahoma"><input type="checkbox" name="mm100" value="ON" onClick="if (this.checked) {this.form.wb100.value='1'} else {this.form.wb100.value='0'}"></font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">WDFIR 100 - SCHEDULE OF INTEREST EARNED AND DISTRIBUTED ON ALL LCS (DRAWN AND UNDRAWN)</font></td>
      </tr>
      <tr>
        <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
        <font face="Tahoma"><input type="checkbox" name="mm200" value="ON" onClick="if (this.checked) {this.form.wb200.value='1'} else {this.form.wb200.value='0'}"></font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">WDFIR 200 - RETURN ON MONEY LAUNDERING</font></td>
      </tr>
      <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="mm300" value="ON" onClick="if (this.checked) {this.form.wb300.value='1'} else {this.form.wb300.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">WDFIR 300 - RETURN OF LODGEMENT ON TRANSFER OF FUNDS</font></td>
      </tr>
      <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="mm400" value="ON" onClick="if (this.checked) {this.form.wb400.value='1'} else {this.form.wb400.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">WDFIR 400 - RETURN ON SUSPICIOUS TRANSACTIONS</font></td>
      </tr>
      <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="mm500" value="ON" onClick="if (this.checked) {this.form.wb500.value='1'} else {this.form.wb500.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">WDFIR 500 - RETURN OF FOREIGN EXCHANGE ROUTINE</font></td>
      </tr>
      <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="mm600" value="ON" onClick="if (this.checked) {this.form.wb600.value='1'} else {this.form.wb600.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">WDFIR 600 - LODGEMENT ON TRANSFER OF FUNDS IN EXCESS</font></td>
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
