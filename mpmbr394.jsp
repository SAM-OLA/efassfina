<!--
@author D & T Solutions
-->
<%@ page import="java.sql.*, cbnbas.mpmbr.connect"%>
<%!
	Connection cn=null;
	int recCnt=0;
	int cnt=0;
	String source="";
%>
<%
		connect c = new connect();
   		cn = c.connectMethod();
%>
<html>
<head>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Language" content="en-gb">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Cube CBN EFASS System - MPMBR 394</title>
<script>
</script>







<meta name="Microsoft Theme" content="poetic 1111, default">
</head>

<body>
<center>
<jsp:include flush="true" page="header.jsp"/>
<br>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="1154">
  <tr>
    <td width="64">
    <b><font color="#336699" size="2">
    <a href='mpmbrtoc.jsp'>mpmbr TOC</a> </font></b> </td>
    <td width="1072">
<p align="center"><b><font color="#336699" size="2">RETURNS ON INTEREST RATES - MPMBR - 394</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

<form name"frm" method="POST" action="mpmbr394Customise.jsp">
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="AutoNumber1">
      <th><b><font color="#336699" size="2">Code</font></b></th>
      <th><b><font color="#336699" size="2">Item</font></b></th>
      <th><b><font color="#336699" size="2">Source</font></b></th>
      <th><b><font color="#336699" size="2">Amount</font></b></th>
<%
	try
	{
		PreparedStatement pst=cn.prepareStatement("select count(*) from mpmbr394");
		ResultSet rs=pst.executeQuery();
		rs.next();
		recCnt=rs.getInt(1);

		pst=cn.prepareStatement("select code,Description,Source,Amount from mpmbr394");
		rs=pst.executeQuery();

		cnt=0;
		while(rs.next())
		{
%>
			<tr>
				<td><input type="text" name="code<%=cnt%>" size="10" value="<%=rs.getString(1).trim()%>"></td>
				<td><input type="text" name="description<%=cnt%>" size="50" value="<%=rs.getString(2).trim()%>"></td>
<%
		source=rs.getString(3).trim();
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
				<td><input type="text" name="amount<%=cnt%>" size="20" value="<%=rs.getString(4).trim()%>" tabindex="<%=cnt%>"></td>
			</tr>
<%
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
<input type="" name="norec" value="<%=recCnt%>" size="20">
</form>
<p>&nbsp;</p>

</body>

</html>