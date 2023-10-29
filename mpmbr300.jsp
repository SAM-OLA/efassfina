<!--
@author D & T Solutions
-->
<%@ page import="java.sql.*, cbnbas.mpmbr.connect"%>
<%!
	Connection cn=null;
	String param="";
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
<title>Cube CBN FINA System - MPMBR 300</title>







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
    <a href='mpmbrtoc.jsp'>MPMBR TOC</a> </font></b> </td>
    <td width="1072">
<p align="center"><b><font color="#336699" size="2">MONTHLY STATEMENT OF ASSETS AND LIABILITIES - MPMBR 300</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

<form method="POST" action="mpmbr300Customise.jsp">
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="AutoNumber1">
    <tr>
      <td><b><font color="#336699" size="2">Code</font></b></td>
      <td><b><font color="#336699" size="2">Description</font></b></td>
      <td><b><font color="#336699" size="2">Source?</font></b></td>
      <td><b><font color="#336699" size="2">Value</font></b></td>
	<td><b>-Edit-</b></td>
    </tr>
<%
	PreparedStatement pst=cn.prepareStatement("select Code,Description,Source,Value from mpmbr300");
	ResultSet rs=pst.executeQuery();
	int cnt=0;
	String code="";

	while(rs.next())
	{
		code=rs.getString(1);

		if(code.equals("10130") || code.equals("10190") || code.equals("10230") || code.equals("10270") || code.equals("10310") || code.equals("10330") || code.equals("10370") || code.equals("10400") || code.equals("10430") || code.equals("10440") || code.equals("10480") || code.equals("10544") || code.equals("10610") || code.equals("10664") || code.equals("10730") || code.equals("10860") || code.equals("10980") || code.equals("11100")||code.equals("11220") ||code.equals("11274") || code.equals("11340")|| code.equals("11394") || code.equals("11460")|| code.equals("11470") || code.equals("11520") || code.equals("11545") || code.equals("11550")|| code.equals("11590")|| code.equals("11620")|| code.equals("11650")|| code.equals("11660")|| code.equals("11700")|| code.equals("11730")|| code.equals("11760")|| code.equals("11790")|| code.equals("11840")|| code.equals("11860")|| code.equals("11990")|| code.equals("12070")|| code.equals("12100")|| code.equals("12170")|| code.equals("12200")|| code.equals("12210")|| code.equals("12240")|| code.equals("12330")|| code.equals("12370")|| code.equals("12410")|| code.equals("12450")|| code.equals("12490")|| code.equals("12500")|| code.equals("12510")|| code.equals("20180")|| code.equals("20220")|| code.equals("20270")|| code.equals("20340")|| code.equals("20380")|| code.equals("20400")|| code.equals("20440")|| code.equals("20510")|| code.equals("20570")|| code.equals("20640")|| code.equals("20720")|| code.equals("20750")|| code.equals("20760")|| code.equals("20850"))
//		if(code.equals("9999"))
		{
%>
    <tr bgcolor="blue">
      <td><input type="text" name="code<%=cnt%>" size="10" value="<%=code%>"></td>
      <td><input type="text" name="desc<%=cnt%>" size="50" value="<%=rs.getString(2)%>"></td>
      <td><select size="1" name="source<%=cnt%>" disabled><option value="1">GL Code</option><option selected value="2">Compute</option><option value="3">Direct</option></select></td>
      <td><textarea cols="31" rows="1" name="value<%=cnt%>" readonly tabindex="<%=cnt%>"><%=rs.getString(4)%></textarea></td>


<%
	out.println("<td><a href=mpmbr300Edit.jsp?target="+code+" style='color:pink;'>Data</a></td>");
		}
		else
		{
%>

    <tr>
      <td><input type="text" name="code<%=cnt%>" size="10" value="<%=code%>"></td>
      <td><input type="text" name="desc<%=cnt%>" size="50" value="<%=rs.getString(2)%>"></td>
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
      <td><select size="1" name="source<%=cnt%>"><option selected value="1">GL Code</option><option value="2">Compute</option><option selected value="3">Direct</option></select></td>
<%
		}
%>

      <td><textarea cols="31" rows="1" name="value<%=cnt%>"><%=rs.getString(4)%></textarea></td>
<%
      out.println("<td><a href='mpmbr300Edit.jsp?target="+code+"'>Data</a></td>");

		}
		cnt++;
	}
%>
    </tr>
  </table>
  <!--<p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>-->
<input name="rowcount" value="<%=cnt%>" size="20">
</form>

</body>

</html>