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
<title>Cube CBN EFASS System - MPMBR 344</title>

<meta name="Microsoft Theme" content="poetic 1111, default">
</head>

<center>
<jsp:include flush="true" page="header.jsp"/>
<body>

<p class="MsoNormal"><b><font color="#336699" size="2">MPMBR - 344 Returns on Loans & Receivables Structure and Maturity Profile</font></b></p>
<form method="POST" action="mpmbr344Customise.jsp">
</center>
	<pre>
	<b>Note:-</b> Expected Total [STATE_GOVTS] value: rs1.getInt(1) at Code: 41500
	<b>Note:-</b> Expected Total [LOCAL_GOVTS] value: rs2.getInt(1) at Code: 41500
	<b>Note:-</b> Expected Total [TOTAL_CREDIT] value: rs3.getInt(1) at Code: 41500
</pre><center>	
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" id="AutoNumber1" height="110">
    <tr>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Code</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Sector</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">1 - 30 Days N</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">31 - 60 Days   N</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">61 – 90 Days   N</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">91-180 Days   N</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">181-360 Days N</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Above 360 Days  N</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Total N</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Total      %</font></b></td>
      

    </tr>
<%
	try
	{
		pst=cn.prepareStatement("select * from MPMBR344 order by code");
		ResultSet rs=pst.executeQuery();

		cnt=0;
		while(rs.next())
		{
			code=rs.getString(1);
			if(code.equals("43500"))
			{
%>
    <tr bgcolor="blue">
      <td width="4%" height="22"><input type="text" name="t1<%=cnt%>" size="10" value="<%=code%>"></td>
      <td width="4%" height="22"><input type="text" name="t2<%=cnt%>" size="50" value="<%=rs.getString(2)%>"></td>
      <td width="4%" height="22"><input type="text" name="t3<%=cnt%>" size="10" value="<%=rs.getString(3)%>"></td>
      <td width="4%" height="22"><input type="text" name="t4<%=cnt%>" size="10" value="<%=rs.getString(4)%>"></td>
      <td width="4%" height="22"><input type="text" name="t5<%=cnt%>" size="10" value="<%=rs.getString(5)%>"></td>
       <td width="4%" height="22"><input type="text" name="t6<%=cnt%>" size="10" value="<%=rs.getString(6)%>"></td>
       <td width="4%" height="22"><input type="text" name="t7<%=cnt%>" size="10" value="<%=rs.getString(7)%>"></td>
       <td width="4%" height="22"><input type="text" name="t8<%=cnt%>" size="10" value="<%=rs.getString(8)%>"></td>
       <td width="4%" height="22"><input type="text" name="t9<%=cnt%>" size="10" value="<%=rs.getString(9)%>"></td>
      <td width="4%" height="22"><input type="text" name="t10<%=cnt%>" size="10" value="<%=rs.getString(10)%>"></td>
   </tr>
<%
			}
			else
			{
%>
    <tr>
      <td width="4%" height="22"><input type="text" name="t1<%=cnt%>" size="10" value="<%=code%>"></td>
      <td width="4%" height="22"><input type="text" name="t2<%=cnt%>" size="50" value="<%=rs.getString(2)%>"></td>
      <td width="4%" height="22"><input type="text" name="t3<%=cnt%>" size="10" value="<%=rs.getString(3)%>"></td>
      <td width="4%" height="22"><input type="text" name="t4<%=cnt%>" size="10" value="<%=rs.getString(4)%>"></td>
      <td width="4%" height="22"><input type="text" name="t5<%=cnt%>" size="10" value="<%=rs.getString(5)%>"></td>
      <td width="4%" height="22"><input type="text" name="t6<%=cnt%>" size="10" value="<%=rs.getString(6)%>"></td>
      <td width="4%" height="22"><input type="text" name="t7<%=cnt%>" size="10" value="<%=rs.getString(7)%>"></td>
      <td width="4%" height="22"><input type="text" name="t8<%=cnt%>" size="10" value="<%=rs.getString(8)%>"></td>
      <td width="4%" height="22"><input type="text" name="t9<%=cnt%>" size="10" value="<%=rs.getString(9)%>"></td>
      <td width="4%" height="22"><input type="text" name="t10<%=cnt%>" size="10" value="<%=rs.getString(10)%>"></td>
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
<tr><td colspan="19">
  <p class="MsoNormal"><b><font color="#336699" size="2">Total column will be updated automatically on submission!</font></b></td>
    </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
<input type="hidden" name="rowcount" value="<%=cnt%>" size="20">
</form>
<p>&nbsp;</p>

</body>

</html>
