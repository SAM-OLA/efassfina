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
<title>QDFIR - 461</title>
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
<p align="center"><b><font color="#336699" size="2">QDFIR 461 - SCHEDULE OF LONG TERM LOANS [FOREIGN]</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

<form name"frm" method="POST" action="qdfir461Customise.jsp">
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="AutoNumber1" width="30%">
      <th><b><font color="#336699" size="2">S NO</font></b></th>
      <th><b><font color="#336699" size="2">CUSTOMER CODE</font></b></th>
      <th><b><font color="#336699" size="2">CUSTOMER NAME</font></b></th>
	<th><b><font color="#336699" size="2">PRINCIPAL GRANTED</font></b></th>
	<th><b><font color="#336699" size="2">PURPOSE</font></b></th>
	<th><b><font color="#336699" size="2">DATE GRANTED</font></b></th>
	<th><b><font color="#336699" size="2">DUE DATE</font></b></th>
	<th><b><font color="#336699" size="2">PRINCIPAL OUTSTANDING</font></b></th>
	<th><b><font color="#336699" size="2">INTEREST RATE</font></b></th>
	<th><b><font color="#336699" size="2">UPFRONT INTEREST</font></b></th>
	<th><b><font color="#336699" size="2">INTEREST PAYABLE</font></b></th>
	<th><b><font color="#336699" size="2">UNPAID PRINCIPAL / INTEREST</font></b></th>
	<th><b><font color="#336699" size="2">TIMES ROLLED OVER</font></b></th>
	<th><b><font color="#336699" size="2">COLL / VALUE</font></b></th>


<%
	try
	{
		pst=cn.prepareStatement("select * from qdfir461");
		rs=pst.executeQuery();

		int cnt=0;
		while(rs.next())
		{
%>
			<tr bgcolor="blue">
				<td><input type="text" name="sno<%=cnt%>" size="8" value="<%=rs.getString(1)%>"></td>
				<td><input type="text" name="customercode<%=cnt%>" size="8" value="<%=rs.getString(2)%>"></td>
				<td><input type="text" name="customername<%=cnt%>" size="10" value="<%=rs.getString(3)%>"></td>
				<td><input type="text" name="principalgranted<%=cnt%>" size="8" value="<%=rs.getString(4)%>"></td>
				<td><input type="text" name="purpose<%=cnt%>" size="8" value="<%=rs.getString(5)%>"></td>
				<td><input type="text" name="dategranted<%=cnt%>" size="8" value="<%=rs.getString(6)%>"></td>
				<td><input type="text" name="duedate<%=cnt%>" size="8" value="<%=rs.getString(7)%>" readonly></td>
				<td><input type="text" name="principaloutstanding<%=cnt%>" size="8" value="<%=rs.getString(8)%>" readonly></td>
				<td><input type="text" name="interestrate<%=cnt%>" size="8" value="<%=rs.getString(9)%>" readonly></td>
				<td><input type="text" name="upfrontinterest<%=cnt%>" size="8" value="<%=rs.getString(10)%>" readonly></td>
				<td><input type="text" name="interestpayable<%=cnt%>" size="8" value="<%=rs.getString(11)%>" readonly></td>
				<td><input type="text" name="unpaidprincipal<%=cnt%>" size="8" value="<%=rs.getString(12)%>" readonly></td>
				<td><input type="text" name="timesrolledover<%=cnt%>" size="8" value="<%=rs.getString(13)%>" readonly></td>
				<td><input type="text" name="coll<%=cnt%>" size="8" value="<%=rs.getString(14)%>" readonly></td>

			</tr>
<%
		}
	}
	catch(Exception e)
	{
		out.println("QDFIR 461 View Error: "+e.toString());
	}
		cn.close();
%>
  </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
</form>
</body>

</html>