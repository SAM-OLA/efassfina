<!--
@author D & T Solutions
-->

<%@ page import="java.sql.*, cbnbas.mpmbr.connect"%>
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
<title>Cube CBN EFASS System - MPMBR 1000</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
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
    <a href='mpmbrtoc.jsp'>MPMBR TOC</a> </font></b> </td>
    <td width="1063">
<p align="center"><b><font color="#336699" size="2">MPMBR 1000 - MONTHLY STATEMENT OF PROFIT OR LOSS ACCOUNT</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>
<form method="POST" action="mpmbr1000Customise.jsp">

  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="AutoNumber1">
    <tr>
      <td><b><font color="#336699" size="2">Code</font></b></td>
      <td><b><font color="#336699" size="2">Item Description</font></b></td>
      <td><b><font color="#336699" size="2">Source</font></b></td>
      <td><b><font color="#336699" size="2">Current Month</font></b></td>
      <td><b><font color="#336699" size="2">Year to Date</font></b></td>
    </tr>
<%
	try
	{
		pst=cn.prepareStatement("select CODE,DESCRIPTION,SOURCE,[CURRENT MONTH],[YEAR TO DATE] from mpmbr1000");
		ResultSet rs=pst.executeQuery();

		cnt=0;
		while(rs.next())
		{
			code=rs.getString(1);

			if(code.equals("30120") || code.equals("30150") || code.equals("30167") || code.equals("30200") || code.equals("30230")|| code.equals("30310")|| code.equals("30320")|| code.equals("30340")|| code.equals("40130")|| code.equals("40180")|| code.equals("40230")|| code.equals("40250")|| code.equals("40260"))
			{
%>
    <tr bgcolor="blue">
      <td><input type="text" name="code<%=cnt%>" size="10" value="<%=code%>" readonly></td>
      <td><input type="text" name="description<%=cnt%>" size="50" value="<%=rs.getString(2)%>" readonly></td>
      <td><select size="1" name="source<%=cnt%>" disabled>
      <option value="1">GL Code</option>
      <option selected value="2">Compute</option>
      <option value="3">Direct</option>
      </select></td>
      <td><textarea cols="38" rows="1" name="currentmonth<%=cnt%>"><%=rs.getString(4)%></textarea></td>
      <td><textarea cols="38" rows="1" name="yeartodate<%=cnt%>"><%=rs.getString(5)%></textarea></td>
    </tr>
<%
			}
			else
			{
%>
    <tr>
      <td><input type="text" name="code<%=cnt%>" size="10" value="<%=code%>"></td>
      <td><input type="text" name="description<%=cnt%>" size="50" value="<%=rs.getString(2)%>"></td>
<%
				source=rs.getString(3);
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
      <td><textarea cols="38" rows="1" name="currentmonth<%=cnt%>"><%=rs.getString(4)%></textarea></td>
      <td><textarea cols="38" rows="1" name="yeartodate<%=cnt%>"><%=rs.getString(5)%></textarea></td>
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