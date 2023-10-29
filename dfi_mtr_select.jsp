<html>
<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Monthly - Bank Policy and Management Foreign Exchange Returns - Select  Report(s) to generate</title>
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
      <td width="950">
   <jsp:include flush="true" page="header.jsp"/>
</td>
    </tr>
    <tr>
      <td height="300" align="center">
        <div align="center">
          <p align="left"><a href="dfi_home.jsp">&lt;home&gt;</a></p>
          <table border="1" cellpadding="3" style="border-collapse: collapse" bordercolor="#111111" width="816" >
    <form method="POST" action="dfi_generate_mtr.jsp">
    <input type="hidden" name="mt202" value="0">
    <input type="hidden" name="mt204" value="0">
    <input type="hidden" name="mt205" value="0">
    <input type="hidden" name="mt206" value="0">
    <input type="hidden" name="mt207" value="0">
    <input type="hidden" name="mt208" value="0">
    <input type="hidden" name="mt209" value="0">
    <input type="hidden" name="mt210" value="0">
    <input type="hidden" name="mt211" value="0">
    <input type="hidden" name="mt212" value="0">
    <input type="hidden" name="mt213" value="0">
    <input type="hidden" name="mt214" value="0">
    <input type="hidden" name="mt215" value="0">
    <input type="hidden" name="mt216" value="0">
    <input type="hidden" name="mt301" value="0">
    <input type="hidden" name="mt302" value="0">
    <input type="hidden" name="mt303" value="0">
    <input type="hidden" name="mt305" value="0">
    <input type="hidden" name="mt306" value="0">
    <input type="hidden" name="mt307" value="0">
    <input type="hidden" name="mt308" value="0">
    <input type="hidden" name="mt316" value="0">
    <input type="hidden" name="mt319" value="0">

      <tr>
            <td valign="top" align="center" bgcolor="#F5F5F5">
            <font face="Tahoma"><input type="checkbox" name="CheckAll" value="ON" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}"></font></td>
            <td valign="top" bgcolor="#F5F5F5"><font face="Tahoma" size="2">Select All</font></td>
          </tr>
          <!--
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m215" value="ON" onClick="if (this.checked) {this.form.db300.value='1'} else {this.form.db300.value='0'}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 215 - DETAILS FOR TRANSFER OF FOR 'M'</font></td>
          </tr>
          -->
          <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="m202" value="ON" onClick="if (this.checked) {this.form.mt202.value='1'} else {this.form.mt202.value='0'}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 202 - FOREIGN EXCHANGE FLOW  STATEMENT</font></td>
          </tr>
          <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="m204" value="ON" onClick="if (this.checked) {this.form.mt204.value='1'} else {this.form.mt204.value='0'}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 204 - CAPTURE IMPORT REGISTRATION </font></td>
          </tr>
          <tr>
            <td valign="top" width="5%" align="center" bgcolor="#F5F5F5">
            <font face="Tahoma"><input type="checkbox" name="m205" value="ON" onClick="if (this.checked) {this.form.mt205.value='1';} else {this.form.mt205.value='0';}"></font></td>
            <td valign="top" bgcolor="#F5F5F5"><font face="Tahoma" size="2">MTR 205 - IMPORT DUTY COLLECTED WITH FORM &lsquo;M&rsquo;</font> </td>
          </tr>
          <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="m206" value="ON" onClick="if (this.checked) {this.form.mt206.value='1';} else {this.form.mt206.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 206 - CAPTURE SOURCES OF FUNDS</font></td>
          </tr>
          <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="m207" value="ON" onClick="if (this.checked) {this.form.mt207.value='1';} else {this.form.mt207.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 207 - CAPTURE UTILIZATION OF FORM M (L/C VALID) CBN FOREX SALES</font></td>
          </tr>
	      <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="m208" value="ON" onClick="if (this.checked) {this.form.mt208.value='1';} else {this.form.mt208.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 208 - ANANLYSIS OF FORIEGN EXCHANGE UTILISATION ON FORM 'M'</font></td>
          </tr>

	  <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="m209" value="ON" onClick="if (this.checked) {this.form.mt209.value='1';} else {this.form.mt209.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 209 - CONSOLIDATED FOREIGN EXCHANGE UTILISATION</font></td>
          </tr>

	  <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="m210" value="ON" onClick="if (this.checked) {this.form.mt210.value='1';} else {this.form.mt210.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 210 - ANALYSIS OF FOREIGN EXCHANGE UTILISATION CLASSIFICATION BREAKDOWN (FORM &lsquo;M&rsquo; OTHERS UNDER FINISHED GOODS</font></td>
          </tr>

      <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="m211" value="ON" onClick="if (this.checked) {this.form.mt211.value='1';} else {this.form.mt211.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 211 - CAPTURE BREAKDOWN OF UTILIZATION (FORM FOR FOODS UNDER FINISHED GOODS)</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m212" value="ON" onClick="if (this.checked) {this.form.mt212.value='1';} else {this.form.mt212.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 212 - ANALYSIS OF FOREIGN EXCHANGE UTILISATION CLASSIFICATION BREAKDOWN (OTHERS UNDER INVISIBLES</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m213" value="ON" onClick="if (this.checked) {this.form.mt213.value='1';} else {this.form.mt213.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 213 - OPERATION OF DOMICILIARY AND EXTERNAL ACCOUNTS</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m214" value="ON" onClick="if (this.checked) {this.form.mt214.value='1';} else {this.form.mt214.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 214 - OPERATION OF DOMICILIARY AND EXTERNAL ACCOUNTS</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m215" value="ON" onClick="if (this.checked) {this.form.mt215.value='1';} else {this.form.mt215.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 215 - DETAILS FOR TRANSFER OF FORM</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m216" value="ON" onClick="if (this.checked) {this.form.mt216.value='1';} else {this.form.mt216.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 216 - MONTHLY ANALYSIS OF CUSTOMERS WHO HAVE DEFAULTED IN THE SUBMISSION OF COMPLETE SHIPPING DOCUMANTS WITHIN 90 DAYS OF </font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="m301" value="ON" onClick="if (this.checked) {this.form.mt301.value='1'} else {this.form.mt301.value='0'}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 301 - EXPORT REGISTRATION </font></td>
          </tr>
          <tr>
            <td valign="top"  align="center" bgcolor="#F5F5F5">
            <font face="Tahoma"><input type="checkbox" name="m302" value="ON" onClick="if (this.checked) {this.form.mt302.value='1'} else {this.form.mt302.value='0'}"></font></td>
            <td valign="top" bgcolor="#F5F5F5"><font face="Tahoma" size="2">MTR 302 - EXPORT PROCEEDS </font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="m303" value="ON" onClick="if (this.checked) {this.form.mt303.value='1'} else {this.form.mt303.value='0'}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 303 - MONTHLY RETURN OF CAPITAL IMPORTATION</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#F5F5F5">
            <font face="Tahoma"><input type="checkbox" name="m305" value="ON" onClick="if (this.checked) {this.form.mt305.value='1';} else {this.form.mt305.value='0';}"></font></td>
            <td valign="top" bgcolor="#F5F5F5"><font face="Tahoma" size="2">MTR 305 - DETAILS OF TOTAL FOREX SALES TO END-USERS</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="m306" value="ON" onClick="if (this.checked) {this.form.mt306.value='1';} else {this.form.mt306.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 306 - MONTHLY ANALYSIS OF PRIVATE SECTOR DEBT ( LOANS)</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="m307" value="ON" onClick="if (this.checked) {this.form.mt307.value='1';} else {this.form.mt307.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 307 - MONTHLY ANALYSIS OF PRIVATE SECTOR EXTERNAL INVESTMENTS</font></td>
          </tr>
	      <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="m308" value="ON" onClick="if (this.checked) {this.form.mt308.value='1';} else {this.form.mt308.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 308 - MONTHLY RETURN ON TRANSFER OF PROFIT, DIVIDEND AND CAPITAL</font></td>
          </tr>
          <!--
	      <tr>
            <td height="24" align="center" valign="top" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m309" value="ON" onClick="if (this.checked) {this.form.mt309.value='1';} else {this.form.mt309.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 309 - IMPORT INSPECTION</font></td>
	        </tr>
	      <tr>
            <td height="24" align="center" valign="top" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m310" value="ON" onClick="if (this.checked) {this.form.mt310.value='1';} else {this.form.mt310.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 310 - SUMMARY OF DUTY EXEMPTION </font></td>
	        </tr>
	      <tr>
            <td height="24" align="center" valign="top" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m311" value="ON" onClick="if (this.checked) {this.form.mt311.value='1';} else {this.form.mt311.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 311 - SUMMARY OF FORM &lsquo;M&rsquo; PASSED FOR INSPECTION IN RESPECT OF GOODS VALID FOR FOREIGN EXCHANGE</font></td>
	        </tr>
	      <tr>
            <td height="24" align="center" valign="top" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m312" value="ON" onClick="if (this.checked) {this.form.mt312.value='1';} else {this.form.mt312.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 312 - SUMMARY OF FORM &lsquo;M&rsquo; PASSED FOR INSPECTION IN RESPECT OF GOODS NOT VALID FOR FOREIGN EXCHANGE</font></td>
	        </tr>
	      <tr>
            <td height="24" align="center" valign="top" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m313" value="ON" onClick="if (this.checked) {this.form.mt314.value='1';} else {this.form.mt314.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 313 - </font></td>
	        </tr>
	      <tr>
            <td height="24" align="center" valign="top" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m314" value="ON" onClick="if (this.checked) {this.form.mt314.value='1';} else {this.form.mt314.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 314 - SUMMARY OF CIF VALUES IN USD OF CRIs FOR IMPORTS NOT VALID FOR FOREX</font></td>
	        </tr>
	      <tr>
            <td height="24" align="center" valign="top" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m315" value="ON" onClick="if (this.checked) {this.form.mt315.value='1';} else {this.form.mt315.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 315 - DETAILS OF FOREX SOLD AND PURCHASED BY BUREAU DE CHANGE/HOTEL</font></td>
	        </tr>
          -->
	  <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="m316" value="ON" onClick="if (this.checked) {this.form.mt316.value='1';} else {this.form.mt316.value='0';}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 316 - RETURN ON FOREIGN EXCHANGE PURCHASED BY BANKS FROM OIL AND OIL SERVICES </font></td>
        </tr>
	  <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="m319" value="ON" onClick="if (this.checked) {this.form.mt319.value='1';} else {this.form.mt319.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 319 - ISUANCE OF LETTERS OF CREDIT (TED/LC)</font></td>
          </tr>
        <!--
	  <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="m320" value="ON" onClick="if (this.checked) {this.form.mt320.value='1';} else {this.form.mt320.value='0';}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">MTR 320 - CUSTOMER INFORMATION</font></td>
	    </tr>
          -->
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
