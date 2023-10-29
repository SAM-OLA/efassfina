<!--
@author D & T Solutions
-->
<%@ page import="java.sql.*, cbnbas.qdfir.connect"%>
<%!
	Connection cn=null;
	ResultSet rs=null;
	PreparedStatement pst=null;
%>
<%
		connect c = new connect();
   		cn = c.connectMethod();
%>
<html>
<head>
<title>qdfir - 700</title>
<script>
</script>



<!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
</head>

<center>
<jsp:include flush="true" page="header.jsp"/>
<body>

<p class="MsoNormal"><b><font color="#336699" size="2">FUND SOURCES AND INTEREST COSTS - qdfir - 700</font></b></p>
<form name"frm" method="POST" action="qdfir700Customise.jsp">
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="AutoNumber1" width="30%">
      <th valign="bottom"><b><font color="#336699" size="2">Item Code</font></b></th>
      <th valign="bottom"><b><font color="#336699" size="2">Souce of Fund</font></b></th>
      <th valign="bottom"><b><font color="#336699" size="2">Outstanding BOM</font></b></th>
      <th valign="bottom"><b><font color="#336699" size="2">Outstanding EOM</font></b></th>
      <th valign="bottom"><b><font color="#336699" size="2">Avg. O/C Bal</font></b></th>
      <th valign="bottom"><b><font color="#336699" size="2">Int. paid payable</font></b></th>
<%
	try
	{
		pst=cn.prepareStatement("select * from qdfir700Data");
		rs=pst.executeQuery();

		int cnt=0;
		while(rs.next())
		{
%>
			<tr bgcolor="blue">
				<td><input type="text" name="code<%=cnt%>" size="5" value="<%=rs.getString(1)%>"></td>
				<td><input type="text" name="desc<%=cnt%>" size="40" value="<%=rs.getString(2)%>"></td>
				<td><input type="text" name="value1<%=cnt%>" size="10" value="<%=rs.getString(3)%>" readonly></td>
				<td><input type="text" name="value2<%=cnt%>" size="10" value="<%=rs.getString(4)%>" readonly></td>
				<td><input type="text" name="value2<%=cnt%>" size="10" value="<%=rs.getString(5)%>" readonly></td>
				<td><input type="text" name="value2<%=cnt%>" size="10" value="<%=rs.getString(6)%>" readonly></td>
			</tr>
<%
		}
	}
	catch(Exception e)
	{
		out.println("qdfir 700 View Error: "+e.toString());
	}
		cn.close();
%>
  </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
</form>
</body>

</html>
