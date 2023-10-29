<html>
<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>DFI - On Request Returns - Select  Report(s) to generate</title>
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
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" id="AutoNumber1">
    <tr>
      <td width="672">

<jsp:include flush="true" page="header.jsp"/>

</td>
    </tr>
    <tr>
      <td height="300" align="center">
        <div align="center">
          <p align="left"><a href="dfi_home.jsp">&lt;home&gt;</a></p>
          <table border="1" cellpadding="3" style="border-collapse: collapse" bordercolor="#111111" width="629" >

      <form method="POST" action="dfi_generate_per.jsp">
        <input type="hidden" name="per100" value="0">
	<input type="hidden" name="per101" value="0">
	<input type="hidden" name="per200" value="0">
	<input type="hidden" name="per201" value="0">
	<input type="hidden" name="per203" value="0">
	<input type="hidden" name="per204" value="0">
	<input type="hidden" name="per300" value="0">
	<input type="hidden" name="per301" value="0">
	<input type="hidden" name="per302" value="0">
	<input type="hidden" name="per303" value="0">
	<input type="hidden" name="per304" value="0">
	<input type="hidden" name="per305" value="0">
	<input type="hidden" name="per306" value="0">
	<input type="hidden" name="per400" value="0">
	<input type="hidden" name="per401" value="0">
	<input type="hidden" name="per402" value="0">
	<input type="hidden" name="per403" value="0">
	<input type="hidden" name="per404" value="0">
	<input type="hidden" name="per405" value="0">
	<input type="hidden" name="per406" value="0">
	<input type="hidden" name="per407" value="0">
	<input type="hidden" name="per500" value="0">
	<input type="hidden" name="per501" value="0">
	<input type="hidden" name="per502" value="0">
	<input type="hidden" name="per503" value="0">
	<input type="hidden" name="per600" value="0">
	<input type="hidden" name="per601" value="0">
	<input type="hidden" name="per602" value="0">


      <tr>
            <td valign="top" width="5%" align="center" bgcolor="#F5F5F5">
            <font face="Tahoma"><input type="checkbox" name="CheckAll" value="ON" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}"></font></td>
            <td valign="top" bgcolor="#F5F5F5"><font face="Tahoma" size="2">Select All</font></td>
          </tr>
          <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="d300" value="ON" onClick="if (this.checked) {this.form.per100.value='1'} else {this.form.per100.value='0'}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 100 - LIST OF DIRECTORS (PRE-EXAM) </font></td>
          </tr>
          <tr>
            <td valign="top" width="5%" align="center" bgcolor="#F5F5F5">
            <font face="Tahoma"><input type="checkbox" name="d310" value="ON" onClick="if (this.checked) {this.form.per101.value='1'} else {this.form.per101.value='0'}"></font></td>
            <td valign="top" bgcolor="#F5F5F5"><font face="Tahoma" size="2">PER 101 - LIST OF MEMBERSHIP OF BOARD AND MANAGEMENT COMMITTEE</font></td>
          </tr>
          <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="d311" value="ON" onClick="if (this.checked) {this.form.per200.value='1'} else {this.form.per200.value='0'}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 200 - COMPREHENSIVE STAFF LIST</font></td>
          </tr>
          <tr>
            <td valign="top" width="5%" align="center" bgcolor="#F5F5F5">
            <font face="Tahoma"><input type="checkbox" name="d320" value="ON" onClick="if (this.checked) {this.form.per201.value='1';} else {this.form.per201.value='0';}"></font></td>
            <td valign="top" bgcolor="#F5F5F5"><font face="Tahoma" size="2">PER 201 - LIST OF BANKS&rsquo; PRINCIPAL OFFICERS</font></td>
          </tr>
          <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="d321" value="ON" onClick="if (this.checked) {this.form.per203.value='1';} else {this.form.per203.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 203 - INSPECTION PROGRAMME COVERAGE</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d321" value="ON" onClick="if (this.checked) {this.form.per204.value='1';} else {this.form.per204.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 204 - BANK TRAINING PROGRAMME</font></td>
          </tr>
          <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="d330" value="ON" onClick="if (this.checked) {this.form.per300.value='1';} else {this.form.per300.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 300 - BRANCH BY BRANCH TRIAL BALANCE</font></td>
          </tr>
	      <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="d331" value="ON" onClick="if (this.checked) {this.form.per301.value='1';} else {this.form.per301.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 301 - BANKS&rsquo; BALANCE SHEET</font></td>
          </tr>

	  <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="d335" value="ON" onClick="if (this.checked) {this.form.per302.value='1';} else {this.form.per302.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 302 - ACCOUNT OF ASSOCIATES/SUBSIDIARIES</font></td>
          </tr>

	  <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="d338" value="ON" onClick="if (this.checked) {this.form.per303.value='1';} else {this.form.per303.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 303 - LIST OF SUBSIDIARIES AND ASSOCIATE COMPANIES</font></td>
          </tr>

      <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="d340" value="ON" onClick="if (this.checked) {this.form.per304.value='1';} else {this.form.per304.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 304 - LIST OF CONTRA ITEMS</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d341" value="ON" onClick="if (this.checked) {this.form.per305.value='1';} else {this.form.per305.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 305 - LIST OF OUTSTANDING FRAUDS AND FORGERIES</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d341" value="ON" onClick="if (this.checked) {this.form.per306.value='1';} else {this.form.per306.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 306 - PENDING LITIGATION</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d342" value="ON" onClick="if (this.checked) {this.form.per400.value='1';} else {this.form.per400.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 400 - MASTER CUSTOMER CREDIT INFORMATION</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d343" value="ON" onClick="if (this.checked) {this.form.per401.value='1';} else {this.form.per401.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 401 - DIRECTORS AND OFFICERS INDEBTEDNESS</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d344" value="ON" onClick="if (this.checked) {this.form.per402.value='1';} else {this.form.per402.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 402 - NSIDER RELATED CREDITS</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d345" value="ON" onClick="if (this.checked) {this.form.per403.value='1';} else {this.form.per403.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 403 - SINGLE OBLIGOR LIMIT CONTRAVENTION</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d346" value="ON" onClick="if (this.checked) {this.form.per404.value='1';} else {this.form.per404.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 404 - OUTSTANDING FACILITIES TO GOVERNMENT AND IT&rsquo;S AGENCIES</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d347" value="ON" onClick="if (this.checked) {this.form.per405.value='1';} else {this.form.per405.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 405 - LIST OF ACCOUNTS WRITTEN OFF IN THE LAST TWO YEARS</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d348" value="ON" onClick="if (this.checked) {this.form.per406.value='1';} else {this.form.per406.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 406 - LIST OF INTERMEDIATED FUNDS</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d349" value="ON" onClick="if (this.checked) {this.form.per407.value='1';} else {this.form.per407.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 407 - SCHEDULE OF WRITTEN BACK PROVISION</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d350" value="ON" onClick="if (this.checked) {this.form.per500.value='1';} else {this.form.per500.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 500 - FOREIGN EXCHANGE INFLOW</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d351" value="ON" onClick="if (this.checked) {this.form.per501.value='1';} else {this.form.per501.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 501 - FOREIGN EXCHANGE OUT FLOW</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d352" value="ON" onClick="if (this.checked) {this.form.per502.value='1';} else {this.form.per502.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 502 - INTEREST REPATRATION FOR THE PERIOD</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d353" value="ON" onClick="if (this.checked) {this.form.per503.value='1';} else {this.form.per503.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 503 - REPATRIATION OF EXPORT PROCEEDS</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d354" value="ON" onClick="if (this.checked) {this.form.per600.value='1';} else {this.form.per600.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 600 - DETAILED CUSTOMER DEPOSIT INFORMATION</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d355" value="ON" onClick="if (this.checked) {this.form.per601.value='1';} else {this.form.per601.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 601 - LIST OF EXEMPTED DEPOSITS</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d356" value="ON" onClick="if (this.checked) {this.form.per602.value='1';} else {this.form.per602.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">PER 602 - LIST OF COMPUTER REPORTS</font></td>
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
        </div></td>
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
