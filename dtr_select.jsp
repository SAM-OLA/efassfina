<html>
<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Daily - Bank Policy and Management Foreign Exchange Returns - Select  Report(s) to generate</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!--mstheme--><link rel="stylesheet" href="file:///C:/DOCUME~1/FAVOUR~1/LOCALS~1/Temp/FrontPageTempDir/mstheme/poetic/poet1111.css">
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
		PreparedStatement pst=cnn.prepareStatement("select DTR from loginTable where userid=? and pwd=?");
		pst.setString(1,user);
		pst.setString(2,pwd);
		ResultSet rs=pst.executeQuery();
		rs.next();
		if(rs.getString(1).equals("1"))
		{
%>
<BR>
        <table border="1" cellpadding="3" style="border-collapse: collapse" width="651" >
    <form method="POST" action="generate_dtr.jsp">
    <!--input type="hidden" name="dt202" value="0"-->
    <input type="hidden" name="dt203" value="0">
    <!--input type="hidden" name="dt204" value="0">
    <input type="hidden" name="dt205" value="0">
    <input type="hidden" name="dt206" value="0">
    <input type="hidden" name="dt207" value="0">
    <input type="hidden" name="dt208" value="0">
    <input type="hidden" name="dt209" value="0">
    <input type="hidden" name="dt210" value="0">
    <input type="hidden" name="dt211" value="0">
    <input type="hidden" name="dt212" value="0">
    <input type="hidden" name="dt213" value="0">
    <input type="hidden" name="dt214" value="0">
    <input type="hidden" name="dt215" value="0">
    <input type="hidden" name="dt216" value="0"-->
    <input type="hidden" name="dt217" value="0">

      <tr>
            <td valign="top" width="5%" align="center" bgcolor="#F5F5F5">
            <font face="Tahoma"><input type="checkbox" name="CheckAll" value="ON" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}"></font></td>
            <td valign="top" bgcolor="#F5F5F5"><font face="Tahoma" size="2">Select All</font></td>
          </tr>
          <!--
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d201" value="ON" onClick="if (this.checked) {this.form.dt201.value='1'} else {this.form.dt201.value='0'}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">DTR 201 - DAILY FOREX SALES TO BANK/BDC</font></td>
          </tr>
          <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="d202" value="ON" onClick="if (this.checked) {this.form.dt202.value='1'} else {this.form.dt202.value='0'}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">DTR 202 - FOREIGN EXCHANGE FLOW  STATEMENT</font></td>
          </tr>
          -->
          <tr>
            <td valign="top" width="5%" align="center" bgcolor="#F5F5F5">
            <font face="Tahoma"><input type="checkbox" name="d203" value="ON" onClick="if (this.checked) {this.form.dt203.value='1'} else {this.form.dt203.value='0'}"></font></td>
            <td valign="top" bgcolor="#F5F5F5"><font face="Tahoma" size="2">DTR 203 - SUMMARY OF FOREIGN EXCHANGE POSITION REPORT</font></td>
          </tr>
          <!--
          <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="d204" value="ON" onClick="if (this.checked) {this.form.dt204.value='1'} else {this.form.dt204.value='0'}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">DTR 204 - CAPTURE IMPORT REGISTRATION </font></td>
          </tr>
          <tr>
            <td valign="top" width="5%" align="center" bgcolor="#F5F5F5">
            <font face="Tahoma"><input type="checkbox" name="d205" value="ON" onClick="if (this.checked) {this.form.dt205.value='1';} else {this.form.dt205.value='0';}"></font></td>
            <td valign="top" bgcolor="#F5F5F5"><font face="Tahoma" size="2">DTR 205 - </font>IMPORT DUTY COLLECTED WITH FORM &lsquo;M&rsquo; </td>
          </tr>
          <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="d206" value="ON" onClick="if (this.checked) {this.form.dt206.value='1';} else {this.form.dt206.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">DTR 206 - CAPTURE SOURCES OF FUNDS</font></td>
          </tr>
          <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="d207" value="ON" onClick="if (this.checked) {this.form.dt207.value='1';} else {this.form.dt207.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">DTR 207 - CAPTURE UTILIZATION OF FORM M (L/C VALID) CBN FOREX SALES</font></td>
          </tr>
	      <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="d208" value="ON" onClick="if (this.checked) {this.form.dt208.value='1';} else {this.form.dt208.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">DTR 208 - ANANLYSIS OF FORIEGN EXCHANGE UTILISATION ON FORM 'M'</font></td>
          </tr>

	  <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="d209" value="ON" onClick="if (this.checked) {this.form.dt209.value='1';} else {this.form.dt209.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">DTR 209 - CONSOLIDATED FOREIGN EXCHANGE UTILISATION</font></td>
          </tr>

	  <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="d210" value="ON" onClick="if (this.checked) {this.form.dt210.value='1';} else {this.form.dt210.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">DTR 210 - ANALYSIS OF FOREIGN EXCHANGE UTILISATION CLASSIFICATION BREAKDOWN (FORM &lsquo;M&rsquo; OTHERS UNDER FINISHED GOODS</font></td>
          </tr>

      <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="d211" value="ON" onClick="if (this.checked) {this.form.dt211.value='1';} else {this.form.dt211.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">DTR 211 - CAPTURE BREAKDOWN OF UTILIZATION (FORM FOR FOODS UNDER FINISHED GOODS)</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d212" value="ON" onClick="if (this.checked) {this.form.dt212.value='1';} else {this.form.dt212.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">DTR 212 - ANALYSIS OF FOREIGN EXCHANGE UTILISATION CLASSIFICATION BREAKDOWN (OTHERS UNDER INVISIBLES</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d213" value="ON" onClick="if (this.checked) {this.form.dt213.value='1';} else {this.form.dt213.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">DTR 213 - OPERATION OF DOMICILIARY AND EXTERNAL ACCOUNTS</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d214" value="ON" onClick="if (this.checked) {this.form.dt214.value='1';} else {this.form.dt214.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">DTR 214 - OPERATION OF DOMICILIARY AND EXTERNAL ACCOUNTS</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d215" value="ON" onClick="if (this.checked) {this.form.dt215.value='1';} else {this.form.db215.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">DTR 215 - DETAILS FOR TRANSFER OF FORM</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d216" value="ON" onClick="if (this.checked) {this.form.dt216.value='1';} else {this.form.db216.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">DTR 216 - MONTHLY ANALYSIS OF CUSTOMERS WHO HAVE DEFAULTED IN THE SUBMISSION OF COMPLETE SHIPPING DOCUMANTS WITHIN 90 DAYS OF </font></td>
          </tr>
            -->
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="d217" value="ON" onClick="if (this.checked) {this.form.dt217.value='1';} else {this.form.dt217.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">DTR 217 - CUSTOMER INFORMATION</font></td>
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
		out.println("Error: "+ex.toString());
	}
%>

</body>

</html>