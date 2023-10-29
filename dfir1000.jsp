<!--
@author D & T Solutions
-->

<%@ page import="java.sql.*, cbnbas.qdfir.connect"%>
<%!
	Connection cn=null;
	PreparedStatement pst=null;
	int recCnt=0;
	int cnt=0;
	String source="";
	String code="";
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
<p align="center"><b><font color="#336699" size="2">DFIR 1000 - QUARTERLY STATEMENT OF PROFIT AND LOSS ACCOUNT</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>
<form method="POST" action="dfir1000Customise.jsp">

  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="AutoNumber1">
    <tr>
      <td><b><font color="#336699" size="2">Code</font></b></td>
      <td><b><font color="#336699" size="2">Item Description</font></b></td>
      <td><b><font color="#336699" size="2">Notes</font></b></td>
      <td><b><font color="#336699" size="2">Source</font></b></td>
      <td><b><font color="#336699" size="2">Amount</font></b></td>
    </tr>
<%
	try
	{
		pst=cn.prepareStatement("select * from qdfir1000");
		ResultSet rs=pst.executeQuery();

		cnt=0;
		while(rs.next())
		{
			code=rs.getString(1);

			if(code.equals("30150") || code.equals("30240") || code.equals("30480") || code.equals("30860") || code.equals("30920"))
			{
%>
    <tr bgcolor="blue">
      <td><input type="text" name="code<%=cnt%>" size="10" value="<%=code%>" readonly></td>
      <td><input type="text" name="desc<%=cnt%>" size="50" value="<%=rs.getString(2)%>" readonly></td>
      <td><input type="text" name="notes<%=cnt%>" size="10" value="<%=rs.getString(3)%>" readonly></td>
      <td><select size="1" name="source<%=cnt%>" disabled>
      <option value="1">GL Code</option>
      <option selected value="2">Compute</option>
      <option value="3">Direct</option>
      </select></td>
      <td><input type="text" name="amount<%=cnt%>" size="80" value="<%=rs.getString(5)%>"></td>
    </tr>
<%
			}
			else
			{
%>
    <tr>
      <td><input type="text" name="code<%=cnt%>" size="10" value="<%=code%>"></td>
      <td><input type="text" name="desc<%=cnt%>" size="50" value="<%=rs.getString(2)%>"></td>
<%
%>
      <td><input type="text" name="notes<%=cnt%>" size="10" value="<%=rs.getString(3)%>"></td>
<%
				source=rs.getString(4);
				if(source.equals("1"))
				{
%>
      <td><select size="1" name="source<%=cnt%>"><option selected value="1">GL Code</option><option value="2">Compute</option><option value="3">Direct</option></select></td>
<%
				}
				else if(source.equals("2"))
				{
%>
      <td><select size="1" name="source<%=cnt%>"><option value="1">GL Code</option><option selected value="2">Compute</option><option value="3">Direct</option></select></td>
<%
				}
				else
				{
%>
      <td><select size="1" name="source<%=cnt%>"><option value="1">GL Code</option><option value="2">Compute</option><option selected value="3">Direct</option></select></td>
<%
				}
%>
      <td><input type="text" name="amount<%=cnt%>" size="30" maxlength="200" value="<%=rs.getString(5)%>"></td>
    </tr>
<%
			}
			cnt++;
		}
	}
	catch(Exception e)
	{
		out.println("Error: "+e.toString());
	}
	cn.close();
%>
  </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
<input type="hidden" name="rowcount" value="<%=cnt%>" size="20">
</form>
<p>&nbsp;</p>

</body>

</html>