<html>
<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Quarterly - Offsite Examination Request From DFIs - Select  Report(s) to generate</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
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

function openRequiredSet()
{
	window.open("Requiredset.jsp",null, "height=340,width=210,status=no,toolbar=no,menubar=no,location=no,resizable=no,scrollbars=yes");
	return false;
}

</SCRIPT>
<body>
<div align="center">
  <center>
<jsp:include flush="true" page="header.jsp"/>
</td>
    </tr>
<%@ page import="java.sql.*, cbnbas.admin.connect"%>
<%
	String user=(String)session.getValue("userid");
	String pwd=(String)session.getValue("pwd");

	try
	{	
		connect c = new connect();
   		Connection cnn = c.connectMethod();
		PreparedStatement pst=cnn.prepareStatement("select QDFIR from loginTable where userid=? and pwd=?");
		pst.setString(1,user);
		pst.setString(2,pwd);
		ResultSet rs=pst.executeQuery();
		rs.next();
		if(rs.getString(1).equals("1"))
		{
%>
    <tr>
      <td width="672"> <div align="left">>> <a href="" onclick="return openRequiredSet()">Required Set</a></div></td>
    </tr>
    <tr>
      <td height="300" align="center">
        <div align="center">
          <p></p>
          <table border="1" cellpadding="3" style="border-collapse: collapse" bordercolor="#111111" width="956" >
    <form method="POST" action="generate_qdfir.jsp">
    <input type="hidden" name="qd101" value="0">
    <input type="hidden" name="qd102" value="0">
    <input type="hidden" name="qd181" value="0">
    <input type="hidden" name="qd196" value="0">
    <input type="hidden" name="qd221" value="0">
    <input type="hidden" name="qd231" value="0">
    <input type="hidden" name="qd232" value="0">
    <input type="hidden" name="qd241" value="0">
    <input type="hidden" name="qd250" value="0">
    <input type="hidden" name="qd251" value="0">
    <input type="hidden" name="qd261" value="0">
    <input type="hidden" name="qd262" value="0">
    <input type="hidden" name="qd300" value="0">
    <input type="hidden" name="qd301" value="0">
    <input type="hidden" name="qd302" value="0">
    <input type="hidden" name="qd311" value="0">
    <input type="hidden" name="qd321" value="0">
    <input type="hidden" name="qd331" value="0">
    <input type="hidden" name="qd351" value="0">
    <input type="hidden" name="qd411" value="0">
    <input type="hidden" name="qd421" value="0">
    <input type="hidden" name="qd425" value="0">
    <input type="hidden" name="qd461" value="0">
    <input type="hidden" name="qd471" value="0">
    <input type="hidden" name="qd511" value="0">
    <input type="hidden" name="qd521" value="0">
    <input type="hidden" name="qd531" value="0">
    <input type="hidden" name="qd541" value="0">
    <input type="hidden" name="qd600" value="0">
    <input type="hidden" name="qd601" value="0">
    <input type="hidden" name="qd651" value="0">
    <input type="hidden" name="qd661" value="0">
    <input type="hidden" name="qd671" value="0">
    <input type="hidden" name="qd681" value="0">
    <input type="hidden" name="qd700" value="0">
    <input type="hidden" name="qd701" value="0">
    <input type="hidden" name="qd800" value="0">
    <input type="hidden" name="qd900" value="0">
    <input type="hidden" name="qd901" value="0">
    <input type="hidden" name="qd920" value="0">
    <input type="hidden" name="qd921" value="0">
    <input type="hidden" name="qd930" value="0">
    <input type="hidden" name="qd961" value="0">
    <input type="hidden" name="qd1000" value="0">
    <input type="hidden" name="qd1200" value="0">
    <input type="hidden" name="qd1300" value="0">
    <input type="hidden" name="qd1400" value="0">
    <input type="hidden" name="qd1500" value="0">
    <input type="hidden" name="qd1650" value="0">
    <input type="hidden" name="qd1700" value="0">



      <tr>
            <td valign="top" width="5%" align="center" bgcolor="#F5F5F5">
            <font face="Tahoma"><input type="checkbox" name="CheckAll" value="ON" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}"></font></td>
            <td valign="top" bgcolor="#F5F5F5"><font face="Tahoma" size="2">Select All</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m250" value="ON" onClick="if (this.checked) {this.form.qd101.value='1'} else {this.form.qd101.value='0'}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><b><font face="Tahoma" size="2">QDFIR 101 - SCHEDULE OF OTHER ASSETS </font></b></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#F5F5F5"><font face="Tahoma">
              <input type="checkbox" name="m300" value="ON" onClick="if (this.checked) {this.form.qd102.value='1'} else {this.form.qd102.value='0'}">
            </font></td>
            <td valign="top" bgcolor="#F5F5F5"><b><font face="Tahoma" size="2">QDFIR 102 - BREAKDOWN OF OTHER ASSETS</font></b></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m310" value="ON" onClick="if (this.checked) {this.form.qd181.value='1'} else {this.form.qd181.value='0'}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><b><font face="Tahoma" size="2">QDFIR 181 - SCHEDULE OF OTHER DEPOSITS</font></b></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#F5F5F5"><font face="Tahoma">
              <input type="checkbox" name="m311" value="ON" onClick="if (this.checked) {this.form.qd196.value='1'} else {this.form.qd196.value='0'}">
            </font></td>
            <td valign="top" bgcolor="#F5F5F5"><b><font face="Tahoma" size="2">QDFIR 196 -SCHEDULE OF MONEY AT CALL HELD FOR INTERNAL BANKS</font></b></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m320" value="ON" onClick="if (this.checked) {this.form.qd221.value='1';} else {this.form.qd221.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><b><font face="Tahoma" size="2">QDFIR 221 - SCHEDULE OF BALANCES DUE TO OTHER BANKS IN NIGERIA</font></b></td>
          </tr>
          <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="d330" value="ON" onClick="if (this.checked) {this.form.qd231.value='1';} else {this.form.qd231.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 231 - SCHEDULE OF BALANCES HELD WITH CBN</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d330" value="ON" onClick="if (this.checked) {this.form.qd232.value='1';} else {this.form.qd232.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 232 - SCHEDULE OF BALANCES DUE TO OTHER DFIS/FINANCIAL INSTITUTIONS</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d330" value="ON" onClick="if (this.checked) {this.form.qd241.value='1';} else {this.form.qd241.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 241 - SCHEDULE OF OTHER BALANCES DUE TO FOREIGN BANKS</font></strong></td>
          </tr>
	      <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="d331" value="ON" onClick="if (this.checked) {this.form.qd250.value='1';} else {this.form.qd250.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 250 - SCHEDULE OF INTEREST RATES</font></strong></td>
          </tr>

	  <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="d335" value="ON" onClick="if (this.checked) {this.form.qd251.value='1';} else {this.form.qd251.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 251 - SCHEDULE OF BALANCES DUE TO OTHERS</font></strong></td>
          </tr>

	  <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="d338" value="ON" onClick="if (this.checked) {this.form.qd261.value='1';} else {this.form.qd261.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 261 - SCHEDULE OF OTHER FIXED ASSETS</font></strong></td>
          </tr>

      <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="d340" value="ON" onClick="if (this.checked) {this.form.qd262.value='1';} else {this.form.qd262.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 262 - BREAKDOWN OF OTHER FIXED ASSET</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d341" value="ON" onClick="if (this.checked) {this.form.qd300.value='1';} else {this.form.qd300.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 300 - STATEMENT OF ASSETS AND LIABILITIES</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d342" value="ON" onClick="if (this.checked) {this.form.qd301.value='1';} else {this.form.qd301.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 301 - SCHEDULE OF OTHER LIABILITIES</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d343" value="ON" onClick="if (this.checked) {this.form.qd302.value='1';} else {this.form.qd302.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 302 - BREAKDOWN OF OTHER LIABILITIES</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d344" value="ON" onClick="if (this.checked) {this.form.qd311.value='1';} else {this.form.qd311.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 311 - SCHEDULE OF BALANCES HELD WITH BANKS IN NIGERIA</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d345" value="ON" onClick="if (this.checked) {this.form.qd321.value='1';} else {this.form.qd321.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 321 - SCHEDULE OF BALANCES HELD WITH OTHER DFIS/ FINANCIAL INSTITUTIONS</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d346" value="ON" onClick="if (this.checked) {this.form.qd331.value='1';} else {this.form.qd331.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 331 - SCHEDULE OF BALANCES HELD WITH FOREIGN BANK</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d347" value="ON" onClick="if (this.checked) {this.form.qd351.value='1';} else {this.form.qd351.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 351 - SCHEDULE OF MONEY AT CALL HELD WITH INTERNAL BANK</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d348" value="ON" onClick="if (this.checked) {this.form.qd411.value='1';} else {this.form.qd411.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 411 - SCHEDULE OF PLACEMENTS WITH BANKS IN NIGERIA</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d349" value="ON" onClick="if (this.checked) {this.form.qd421.value='1';} else {this.form.qd421.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 421 - SCHEDULE OF PLACEMENT WITH DFIS/FINANCIAL INSTITUTIONS</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d350" value="ON" onClick="if (this.checked) {this.form.qd425.value='1';} else {this.form.qd425.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 425 - SCHEDULE OF PLACEMENT WITH DISCOUNT HOUSES</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d351" value="ON" onClick="if (this.checked) {this.form.qd461.value='1';} else {this.form.qd461.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 461 - SCHEDULE OF LONG TERM LOANS [FOREIGN]</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d351" value="ON" onClick="if (this.checked) {this.form.qd471.value='1';} else {this.form.qd471.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 471 - SCHEDULE OF LONG TERM LOANS</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d352" value="ON" onClick="if (this.checked) {this.form.qd511.value='1';} else {this.form.qd511.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 511 - SCHEDULE OF COUNTERPART FUNDS [AIDS AND GRANT]</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d353" value="ON" onClick="if (this.checked) {this.form.qd521.value='1';} else {this.form.qd521.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 521 - SCHEDULE OF COUNTERPART FUNDS [PROGRAM LOANS]</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d354" value="ON" onClick="if (this.checked) {this.form.qd531.value='1';} else {this.form.qd531.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 531 - SCHEDULE OF COUNTERPART FUNDS [OTHERS]</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d355" value="ON" onClick="if (this.checked) {this.form.qd541.value='1';} else {this.form.qd541.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 541 -SCHEDULE OF SHORT TERM INVESTMENTS</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d356" value="ON" onClick="if (this.checked) {this.form.qd600.value='1';} else {this.form.qd600.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 600 - SCHEDULE OF CREDIT APPROVAL &amp; DISBURSEMENT BY SECTOR BORROWER &amp; INTEREST RATES</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d357" value="ON" onClick="if (this.checked) {this.form.qd601.value='1';} else {this.form.qd601.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 601 - SCHEDULE OF UNDRAWN COMMITMENTS</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d358" value="ON" onClick="if (this.checked) {this.form.qd651.value='1';} else {this.form.qd651.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 651 - SCHEDULE OF OTHER GOVERNMENT DEVELOPMENT STOCK</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d359" value="ON" onClick="if (this.checked) {this.form.qd661.value='1';} else {this.form.qd661.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 661 - SCHEDULE OF PLACEMENTS FROM BANKS</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d36O" value="ON" onClick="if (this.checked) {this.form.qd671.value='1';} else {this.form.qd671.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 671 - SCHEDULE OF PLACEMENTS FROM OTHER FINANCIAL INSTITUTIONS</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="dO01" value="ON" onClick="if (this.checked) {this.form.qd681.value='1';} else {this.form.qd681.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 681 - SCHEDULE OF OTHER PLACEMENTS</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d361" value="ON" onClick="if (this.checked) {this.form.qd700.value='1';} else {this.form.qd700.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 700 - SCHEDULE OF OTHER PLACEMENTS</font></strong></td>
          </tr>
          <tr>
            <td height="24" align="center" valign="top" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d362" value="ON" onClick="if (this.checked) {this.form.qd701.value='1';} else {this.form.qd701.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 701 - SCHEDULE OF OTHER INDUSTRIAL INVESTMENT</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="363" value="ON" onClick="if (this.checked) {this.form.qd800.value='1';} else {this.form.qd800.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 800 - SCHEDULE OF DEPOSIT OWNERSHI</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d364" value="ON" onClick="if (this.checked) {this.form.qd900.value='1';} else {this.form.qd900.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 900- SCHEDULE OF LENDING ABOVE STATUTORY LIMIT</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d365" value="ON" onClick="if (this.checked) {this.form.qd901.value='1';} else {this.form.qd901.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 901 - SCHEDULE OF LOANS AND ADVANCES GRANTED</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d366" value="ON" onClick="if (this.checked) {this.form.qd920.value='1';} else {this.form.qd920.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 920 - RETURNS ON DISMISSED / TERMINATED STAFF</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d367" value="ON" onClick="if (this.checked) {this.form.qd921.value='1';} else {this.form.qd921.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 921 - RETURNS ON FRAUD AND FORGERIES</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d368" value="ON" onClick="if (this.checked) {this.form.qd930.value='1';} else {this.form.qd930.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 930 - RETURNS ON CLOSURE OF BRANCHES</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d369" value="ON" onClick="if (this.checked) {this.form.qd961.value='1';} else {this.form.qd961.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 961 - SCHEDULE OF OTHER RESERVES</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d370" value="ON" onClick="if (this.checked) {this.form.qd1000.value='1';} else {this.form.qd1000.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 1000 - STATEMENT OF PROFIT AND LOSS</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d371" value="ON" onClick="if (this.checked) {this.form.qd1200.value='1';} else {this.form.qd1200.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 1200 - SCHEDULE OF STRUCTURE OF DEPOSITS</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d372" value="ON" onClick="if (this.checked) {this.form.qd1300.value='1';} else {this.form.qd1300.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 1300 - SCHEDULE OF NON PERFORMING CREDIT</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d373" value="ON" onClick="if (this.checked) {this.form.qd1400.value='1';} else {this.form.qd1400.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 1400 - SCHEDULE OF NON PERFORMING OTHER ASSETS</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d374" value="ON" onClick="if (this.checked) {this.form.qd1500.value='1';} else {this.form.qd1500.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 1500 - SCHEDULE OF OFF BALANCE SHEET ENGAGEMENT</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d375" value="ON" onClick="if (this.checked) {this.form.qd1650.value='1';} else {this.form.qd1650.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 1650 - SCHEDULE OF CREDIT TO DIRECTOR/EMPLOYEES/SHAREHOLDERS AND RELATED INTEREST</font></strong></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d376" value="ON" onClick="if (this.checked) {this.form.qd1700.value='1';} else {this.form.qd1700.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">QDFIR 1700 - SCHEDULE OF TOP USERS OF FUNDS</font></strong></td>
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
%>

</body>

</html>
