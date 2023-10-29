<!--
@author D & T Solutions Coy
-->
<center>

<meta name="Microsoft Theme" content="poetic 1111, default">
<body>
<p align="left"><a href="" onclick="return window.close()">Close</a>
<hr>
<table border="1" cellpadding="0" width="90%" cellspacing="0" style="border-collapse: collapse" id="AutoNumber1">
<caption>Totals on row 43500</caption>
<th>Code
<th>Expected
<th>Supplied
<th>Remark
<%@ page language="java" import="cbnbas.mpmbr.*, java.sql.*, java.io.*" %>
<%!
	Connection cn=null;
	PreparedStatement pst=null;
	String code="",total1="",total2="";
%>
<%
	new mpmbr356Reloaded("mpmbr356");
	try
	{
		connect c = new connect();
   		cn = c.connectMethod();
	}
	catch(Exception e)
	{
		out.println("mpmbr356Validate Error: "+e.toString());
	}

	int val300[]=new int[3];
	int val[]=new int[3];
	String codes[]={"STATE_GOVTS","LOCAL_GOVTS","TOTAL_CREDIT"};

	pst=cn.prepareStatement("select [Value] from mpmbr300Data where Code = '10842'");
	ResultSet rs1=pst.executeQuery();
	rs1.next();
	val300[0]=rs1.getInt(1);
	pst=cn.prepareStatement("select [Value] from mpmbr300Data where Code = '10843'");
	ResultSet rs2=pst.executeQuery();
	rs2.next();
	val300[1]=rs2.getInt(1);
	pst=cn.prepareStatement("select sum(Value) from mpmbr300Data where Code in ('10650','10750','10890','11020','11030','11040','11073','11093','11063')");
	ResultSet rs3=pst.executeQuery();
	rs3.next();
	val300[2]=rs3.getInt(1);

	pst=cn.prepareStatement("select [STATE_GOVTS],[LOCAL_GOVTS],[TOTAL_CREDIT] from mpmbr356Data where code='41500'");
	ResultSet rs4=pst.executeQuery();
	rs4.next();
	val[0]=rs4.getInt(1);
	val[1]=rs4.getInt(2);
	val[2]=rs4.getInt(3);


	for(int cnt=0;cnt<val.length;cnt++)
	{
		total1=""+val300[cnt];
		total2=""+val[cnt];
		if(total1.equals(total2))
		{
%>
	<tr>
		<td><%=codes[cnt]%>&nbsp;</td>
		<td><%=total1%>&nbsp;</td>
		<td><%=total2%>&nbsp;</td>
		<td>Correct</td>
	</tr>
<%
		}
		else
		{
%>
	<tr bgcolor="pink">
		<td><%=codes[cnt]%>&nbsp;</td>
		<td><%=total1%>&nbsp;</td>
		<td><%=total2%>&nbsp;</td>
		<td>Incorrect</td>
	</tr>
<%
		}
	}
%>
</table>
<hr>
</body>
