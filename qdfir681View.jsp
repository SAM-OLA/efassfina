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
<title>QDFIR - 681</title>
<script>
</script>



<!--mstheme--><link rel="stylesheet" href="poet1111.css">



<meta name="Microsoft Theme" content="poetic 1111, default">
</head>

<body>
<center>
<jsp:include flush="true" page="header.jsp"/>
<br>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="1154">
  <tr>
    <td width="73">
    <b><font color="#336699" size="2">
    <a href='qdfirtocView.jsp'>QDFIR TOC</a> </font></b> </td>
    <td width="1063">
<p align="center"><b><font color="#336699" size="2">QDFIR 681 - SCHEDULE OF OTHER PLACEMENTS</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

<form name"frm" method="POST" action="qdfir681Customise.jsp">
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="AutoNumber1" width="30%">
      <th><b><font color="#336699" size="2">S NO</font></b></th>
      <th><b><font color="#336699" size="2">BANK CODE</font></b></th>
      <th><b><font color="#336699" size="2">NAME OF BANK</font></b></th>
	<th><b><font color="#336699" size="2">ACCOUNT NO</font></b></th>
	<th><b><font color="#336699" size="2">AMOUNT</font></b></th>

<%
	try
	{
		pst=cn.prepareStatement("select * from qdfir681");
		rs=pst.executeQuery();

		int cnt=0;
		while(rs.next())
		{
%>
			<tr bgcolor="blue">
				<td><input type="text" name="sno<%=cnt%>" size="10" value="<%=rs.getString(1)%>"></td>
				<td><input type="text" name="institutionsname<%=cnt%>" size="20" value="<%=rs.getString(2)%>"></td>
				<td><input type="text" name="institutioncode<%=cnt%>" size="10" value="<%=rs.getString(3)%>"></td>
				<td><input type="text" name="accountno<%=cnt%>" size="20" value="<%=rs.getString(4)%>"></td>
				<td><input type="text" name="amount<%=cnt%>" size="20" value="<%=rs.getString(5)%>" readonly></td>
			</tr>
<%
		}
	}
	catch(Exception e)
	{
		out.println("QDFIR 681 View Error: "+e.toString());
	}
		cn.close();
%>
  </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
</form>
</body>

</html>