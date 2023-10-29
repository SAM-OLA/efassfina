<html>
<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Quarterly - Offsite Surveillance Restructering Returns - Select Report(s) to generate</title>
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
		PreparedStatement pst=cnn.prepareStatement("select QPMBR from loginTable where userid=? and pwd=?");
		pst.setString(1,user);
		pst.setString(2,pwd);
		ResultSet rs=pst.executeQuery();
		rs.next();
		if(rs.getString(1).equals("1"))
		{
%>
<BR>
        <table border="1" cellpadding="3" style="border-collapse: collapse" width="751" >
<form method="POST" action="generate_qpmbr.jsp">
<input type="hidden" name="qb1510" value="0">
<input type="hidden" name="qb1520" value="0">
<input type="hidden" name="qb1530" value="0">
<input type="hidden" name="qb1540" value="0">

		<tr>
            <td valign="top" width="5%" align="center" bgcolor="#F5F5F5">
            <font face="Tahoma" size="2"><b>NOTE</b></font></td>
            <td valign="top" align="center" bgcolor="#F5F5F5"><font face="Tahoma" size="4"><b><u>Enter Report Date As At : </u></b><select name=reportdate><option value=''>---Select Period---</option>
		<option value='M01'>January</option>
		<option value='M02'>February</option>
		<option value='M03'>March</option>
		<option value='M04'>April</option>
		<option value='M05'>May</option>
		<option value='M06'>June</option>
		<option value='M07'>July</option>
		<option value='M08'>August</option>
		<option value='M09'>September</option>
		<option value='M10'>October</option>
		<option value="M11">November</option>
		<option value='M12'>December</option>
		</select></font></td>
          </tr>

    <tr>
        <td valign="top" width="5%" align="center" bgcolor="#F5F5F5">
        <font face="Tahoma"><input type="checkbox" name="CheckAll" value="ON" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}"></font></td>
        <td valign="top" bgcolor="#F5F5F5"><font face="Tahoma" size="2">Select All</font></td>
      </tr>
      <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="q1510" value="ON" onClick="if (this.checked) {this.form.qb1510.value='1'} else {this.form.qb1510.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">QPMBR 1510 - SCHEDULE OF NON PERFORMING OTHER ASSETS</font></td>
      </tr>
      <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="q1520" value="ON" onClick="if (this.checked) {this.form.qb1520.value='1'} else {this.form.qb1920.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">QPMBR 1520 - SCHEDULE OF CREDIT TO DIRECTORS/EMPLOYEES/SIGNIFICANT SHAREHOLDERS/REL.INTEREST</font></td>
      </tr>
      <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="q1530" value="ON" onClick="if (this.checked) {this.form.qb1530.value='1'} else {this.form.qb1530.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">QPMBR 1530 - SCHEDULE OF TOP USERS OF FUND</font></td>
      </tr>
      <tr>
        <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
          <input type="checkbox" name="q1540" value="ON" onClick="if (this.checked) {this.form.qb1540.value='1'} else {this.form.qb1540.value='0'}">
        </font></td>
        <td valign="top" bgcolor="#FFFFE8"><font face="Tahoma" size="2">QPMBRR 1540 - SCHEDULE OF NON-INTEREST INCOME</font></td>
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