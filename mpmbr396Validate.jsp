<!--
@author D & T Solutions
-->
<center>

<meta name="Microsoft Theme" content="poetic 1111, default">
<body>
<p align="left"><a href="" onclick="return window.close()">Close</a>
<hr>
<table border="1" cellpadding="0" width="90%" cellspacing="0" style="border-collapse: collapse" id="AutoNumber1">
<th>Code
<th>Expected
<th>Supplied
<th>Remark
<%@ page language="java" import="cbnbas.mpmbr.*, java.sql.*, java.io.*" %>
<%!
	Connection cn=null;
	PreparedStatement pst=null;
	String code="";
	int bom=0,eom=0;
	String avg="";
%>
<%
	new mpmbr396Reloaded("mpmbr396");
	try
	{
		connect c = new connect();
   		cn = c.connectMethod();
	}
	catch(Exception e)
	{
		out.println("mpmbr396Validate Error: "+e.toString());
	}

	pst=cn.prepareStatement("select * from mpmbr396Data");
	ResultSet rs1=pst.executeQuery();

	String temp="";
	while(rs1.next())
	{
		code=rs1.getString(1);
		bom=rs1.getInt(3);
		eom=rs1.getInt(4);
		avg=rs1.getString(5);
		temp=""+((bom+eom)/2);

		if(!temp.equals(avg))
		{
%>
	<tr bgcolor="pink">
		<td><%=code%>&nbsp;</td>
		<td><%=temp%>&nbsp;</td>
		<td><%=avg%>&nbsp;</td>
		<td>InCorrect</td>
	</tr>
<%
		}
		else
		{
%>
	<tr>
		<td><%=code%>&nbsp;</td>
		<td><%=temp%>&nbsp;</td>
		<td><%=avg%>&nbsp;</td>
		<td>Correct</td>
	</tr>
<%
		}
	}
	pst.close();
	cn.close();
%>
</table>
<hr>
</body>
