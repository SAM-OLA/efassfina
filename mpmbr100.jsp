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
	String Items="";
	String number1="";
	String value1="";
	String number2="";
	String value2="";
	String code="";
%>
<%
		connect c = new connect();
   		cn = c.connectMethod();

//get expected correspondin data from 300Data

/*
	pst=cn.prepareStatement("select [Value] from mpmbr300Data where Code = '10842'");
	ResultSet rs1=pst.executeQuery();
	rs1.next();
	pst=cn.prepareStatement("select [Value] from mpmbr300Data where Code = '10843'");
	ResultSet rs2=pst.executeQuery();
	rs2.next();
	pst=cn.prepareStatement("select sum(Value) from mpmbr300Data where Code in ('10650','10750','10890','11020','11030','11040','11073','11093','11063')");
	ResultSet rs3=pst.executeQuery();
	rs3.next();
*/
%>
<html>
<head>
<title>Cube CBN EFASS System - MPMBR 100</title>

<meta name="Microsoft Theme" content="poetic 1111, default">
</head>

<center>
<jsp:include flush="true" page="header.jsp"/>
<body>

<p class="MsoNormal"><b><font color="#336699" size="2">MPMBR - 100 Schedule of Memorandum Items</font></b></p>
<form method="POST" action="mpmbr100Customise.jsp">
</center>
	<pre>
	
</pre><center>	
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" id="AutoNumber1" height="110">
    <tr>
      <td width="20" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Code</font></b></td>
      <td width="50" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Memorandum Items</font></b></td>
      <td width="20" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Number</font></b></td>
      <td width="20" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Value (N)</font></b></td>
      <td width="20" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Number</font></b></td>
      <td width="20" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Value (N)</font></b></td>

    </tr>
<%
	try
	{
		pst=cn.prepareStatement("select * from MPMBR100 order by code");
		ResultSet rs=pst.executeQuery();

		cnt=0;
		while(rs.next())
		{
			code=rs.getString(1).trim();
			Items=rs.getString(2).trim();
			number1=rs.getString(3).trim();
			value1=rs.getString(4).trim();
			number2=rs.getString(5).trim();
			value2=rs.getString(6).trim();
			
%>			
    <tr>
      <td width="30" height="22"><input type="text" name="t1<%=cnt%>" size="30" value="<%=code%>"></td>
      <td width="50" height="22"><input type="text" name="t2<%=cnt%>" size="50" value="<%=Items%>"></td>
<%
	if(number1.equals("NONE"))
	{
%>
        <td width="30" height="22"><input type="text" name="t3<%=cnt%>" size="30" readonly value="<%=number1%>"></td>
<%
	}
	else
	{
%>
	<td width="30" height="22"><input type="text" name="t3<%=cnt%>" size="30" value="<%=number1%>"></td>
<%
	}
	if(value1.equals("NONE"))
{
%>
      <td width="30" height="22"><input type="text" name="t4<%=cnt%>" size="30" readonly value="<%=value1%>"></td>
<%
	}
	else
	{
%>
      <td width="30" height="22"><input type="text" name="t4<%=cnt%>" size="30" value="<%=value1%>"></td>
<%
	}
	if(number2.equals("NONE"))
	{
%>
      <td width="30" height="22"><input type="text" name="t5<%=cnt%>" size="30" readonly value="<%=number2%>"></td>
<%
	}
	else
	{
%>
	<td width="30" height="22"><input type="text" name="t5<%=cnt%>" size="30" value="<%=number2%>"></td>
<%
	}
	if(value2.equals("NONE"))
	{
%>
      <td width="30" height="22"><input type="text" name="t6<%=cnt%>" size="30" readonly value="<%=value2%>"></td>
<%
	}
	else
	{
%>
	<td width="30" height="22"><input type="text" name="t6<%=cnt%>" size="30" value="<%=value2%>"></td>
<%
	}
%>
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
<tr><td colspan="19">
  <p class="MsoNormal"><b><font color="#336699" size="2">Total column will be updated automatically on submission!</font></b></td>
    </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
<input type="hidden" name="rowcount" value="<%=cnt%>" size="20">
</form>
<p>&nbsp;</p>

</body>

</html>
