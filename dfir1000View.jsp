<!--
@author D & T Solutions
-->

<%@ page import="java.sql.*, cbnbas.qdfir.connect"%>
<%!
	Connection cn=null;
	ResultSet rs=null;
	PreparedStatement pst=null;
%>
<%
		connect c = new connect();
   		cn = c.connectMethod();
%>
<html>
<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Cube CBN EFASS System - DFIR 1000</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!--mstheme--><link rel="stylesheet" href="poet1111.css">
<meta name="Microsoft Theme" content="poetic 1111, default">
</head>
<SCRIPT language="JavaScript1.2">
	num=0;
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
  function del() 
  {
	num++;
  }
  function dele()
  {
  	if(num!=0)
  	{
  		var name=confirm("Are you sure you want to delete these item(s)?");
		if (!name)
		{
			return false;
		}
  	}
  }

</SCRIPT>

<body>
<center>
<jsp:include flush="true" page="header.jsp"/>
<br>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="1154">
  <tr>
    <td width="73">
    <b><font color="#336699" size="2">
    <a href='qdfirtoc.jsp'>QDFIR TOC</a> </font></b> </td>
    <td width="1063">
<p align="center"><b><font color="#336699" size="2">QUARTERLY STATEMENT OF PROFIT AND LOSS ACCOUNT - DFIR 1000</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>


<form name"frm" method="POST" action="">
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="AutoNumber1" width="30%">
      <th><b><font color="#336699" size="2">ITEM CODE</font></b></th>
      <th><b><font color="#336699" size="2">ITEM DESCRIPTION</font></b></th>
      <th><b><font color="#336699" size="2">NOTES</font></b></th>
      <th><b><font color="#336699" size="2">AMOUNT</font></b></th>
<%
	try
	{
		pst=cn.prepareStatement("select * from dfir1000Data");
		rs=pst.executeQuery();

		int cnt=0;
		while(rs.next())
		{
%>
			<tr bgcolor="blue">
				<td><input type="text" name="code<%=cnt%>" size="10" value="<%=rs.getString(1)%>"></td>
				<td><input type="text" name="desc<%=cnt%>" size="50" value="<%=rs.getString(2)%>"></td>
				<td><input type="text" name="notes<%=cnt%>" size="20" value="<%=rs.getString(3)%>" readonly></td>
				<td><input type="text" name="amount<%=cnt%>" size="20" value="<%=rs.getString(4)%>" readonly></td>
			</tr>
<%
		}
	}
	catch(Exception e)
	{
		out.println("DFIR 1000 View Error: "+e.toString());
	}
		cn.close();
%>
  </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
</form>
</body>

</html>