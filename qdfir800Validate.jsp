<!--
@author D & T Solutions
-->
<center>

<!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
<body>
<p align="left"><a href="" onclick="return window.close()">Close</a>
<hr>
<table border="1" cellpadding="0" width="90%" cellspacing="0" style="border-collapse: collapse" id="AutoNumber1">
<th>Code
<th>Supplied
<th>Expected
<th>Remark
<%@ page language="java" import="cbnbas.qdfir.*, java.sql.*, java.io.*" %>
<%!
	Connection cn=null;
	PreparedStatement pst=null;
	String code="",total1="",total2="";
%>
<%
	new qdfir800Reloaded("qdfir800");
	try
	{
		connect c = new connect();
   		cn = c.connectMethod();
	}
	catch(Exception e)
	{
		out.println("qdfir800Validate Error: "+e.toString());
	}

	pst=cn.prepareStatement("select [TOTAL_DEPOSITS] from qdfir800Data where code='61600'");
	ResultSet rs1=pst.executeQuery();
	rs1.next();
	total1=rs1.getString(1);

	pst=cn.prepareStatement("select [value] from qdfir300Data where code='20290'");
	ResultSet rs2=pst.executeQuery();
	rs2.next();
	total2=rs2.getString(1);

		if(total1.equals(total2))
		{
%>
	<tr>
		<td>300 vs 800</td>
		<td><%=total2%>&nbsp;</td>
		<td><%=total1%>&nbsp;</td>
		<td>Correct</td>
	</tr>
<%
		}
		else
		{
%>
	<tr bgcolor="pink">
		<td>800 vs 300</td>
		<td><%=total1%>&nbsp;</td>
		<td><%=total2%>&nbsp;</td>
		<td>Incorrect</td>
	</tr>
<%
		}
		pst.close();
		cn.close();
%>
</table>
<hr>
</body>