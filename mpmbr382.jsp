<!--
@author D & T Solutions
-->
<%@ page import="java.sql.*, cbnbas.mpmbr.connect"%>
<%!
	Connection cn=null;
	int recCnt=0;
	int cnt=0;
	String source="";
	String code="";
	String description="";

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
<title>Cube CBN EFASS System - MPMBRQDFIR 382</title>
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
<p align="center"><b><font color="#336699" size="2">SCHEDULE OF OTHER LIABILITIES - MPMBR - 382</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>
<pre>
<%
		Statement st3=cn.createStatement();
		ResultSet rs3=st3.executeQuery("select amount from mpmbr382Data where code='38300'");
		rs3.next();
%>
Note: Expected Total[TOTAL]: <%=rs3.getString(1)%> 
</pre>
<form name"frm" method="POST" action="mpmbr382Customise.jsp">
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="AutoNumber1">
      <th><b><font color="#336699" size="2">Code</font></b></th>
      <th><b><font color="#336699" size="2">Item</font></b></th>
      <th><b><font color="#336699" size="2">Source</font></b></th>
      <th><b><font color="#336699" size="2">Amount</font></b></th>
      <th><b><font color="#336699" size="2">Breakdown</font></b></th>

<%
	try
	{
		PreparedStatement pst=cn.prepareStatement("select count(*) from mpmbr382");
		ResultSet rs=pst.executeQuery();
		rs.next();
		recCnt=rs.getInt(1);

		pst=cn.prepareStatement("select Code,Description,Source,Amount from mpmbr382");
		rs=pst.executeQuery();

		cnt=0;
		while(rs.next() && cnt<(recCnt-1))
		{
		code=rs.getString(1).trim();
		description=rs.getString(2).trim();

%>
			<tr>
				<td><input type="text" name="code<%=cnt%>" size="10" value="<%=code%>"></td>
				<td><input type="text" name="desc<%=cnt%>" size="50" value="<%=description%>"></td>
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
				<td><textarea cols="31" rows="1" name="amount<%=cnt%>"><%=rs.getString(4).trim()%></textarea></td>
<%
				out.println("<td><a href='mpmbr383Breakdown.jsp?target="+code+","+description+"'>Edit</a></td>");
%>

			</tr>
<%
			cnt++;
		}
%>
		<tr>
				<td><input type="text" readonly name="code<%=cnt%>" size="10" value="<%=rs.getString(1).trim()%>"></td>
				<td><input type="text" readonly name="desc<%=cnt%>" size="50" value="<%=rs.getString(2).trim()%>"></td>
			      <td><select size="1" disabled name="source<%=cnt%>" ><option value="1">GL Code</option><option selected value="2">Compute</option><option value="3">Direct</option></select></td>
				<td><textarea cols="31" rows="1" readonly name="amount<%=cnt%>"><%=rs.getString(4).trim()%></textarea></td>
				<td>Breakdowns</td>

		</tr>
<%
	}
	catch(Exception e)
	{
		out.println("Error: "+e.toString());
	}
		cn.close();
%>
<tr><td colspan="4"><b><font color="#336699" size="2">Total will be updated on submission
  </font></b>
  </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
<input type="" name="norec" value="<%=recCnt%>" size="20">
</form>
<p>&nbsp;</p>

</body>

</html>