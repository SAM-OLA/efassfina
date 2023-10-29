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
<title>QDFIR - 701</title>
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
<p align="center"><b><font color="#336699" size="2">QDFIR 701 - SCHEDULE OF OTHER INDUSTRIAL INVESTMENT</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

<form name"frm" method="POST" action="qdfir701Customise.jsp">
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="AutoNumber1" width="30%">
      <th><b><font color="#336699" size="2">S NO</font></b></th>
      <th><b><font color="#336699" size="2">CUSTOMER</font></b></th>
      <th><b><font color="#336699" size="2">AMOUNT INVESTED</font></b></th>
	<th><b><font color="#336699" size="2">INV. CERT NO</font></b></th>
	<th><b><font color="#336699" size="2">TENOR</font></b></th>
	<th><b><font color="#336699" size="2">EFFECTIVE DATE</font></b></th>
	<th><b><font color="#336699" size="2">MATURITY DATE</font></b></th>
	<th><b><font color="#336699" size="2">INTEREST RATE</font></b></th>
	<th><b><font color="#336699" size="2">UPFRONT INTEREST PAID</font></b></th>
	<th><b><font color="#336699" size="2">ACCRUED INT. PAYABLE</font></b></th>
	<th><b><font color="#336699" size="2">TIMES ROLLED OVER</font></b></th>
	<th><b><font color="#336699" size="2">PRINCIPAL PAYABLE</font></b></th>
	<th><b><font color="#336699" size="2">TOTAL ACCRUED PRINCIPAL/INTEREST</font></b></th>
	<th><b><font color="#336699" size="2">REMARKS</font></b></th>

<%
	try
	{
		pst=cn.prepareStatement("select * from qdfir701");
		rs=pst.executeQuery();

		int cnt=0;
		while(rs.next())
		{
%>
			<tr bgcolor="blue">
				<td><input type="text" name="sno<%=cnt%>" size="10" value="<%=rs.getString(1)%>"></td>
				<td><input type="text" name="customer<%=cnt%>" size="10" value="<%=rs.getString(2)%>"></td>
				<td><input type="text" name="amountinvested<%=cnt%>" size="10" value="<%=rs.getString(3)%>"></td>
				<td><input type="text" name="invcertno<%=cnt%>" size="10" value="<%=rs.getString(4)%>"></td>
				<td><input type="text" name="tenor<%=cnt%>" size="10" value="<%=rs.getString(5)%>"></td>
				<td><input type="text" name="effectivedate<%=cnt%>" size="10" value="<%=rs.getString(6)%>"></td>
				<td><input type="text" name="maturitydate<%=cnt%>" size="10" value="<%=rs.getString(7)%>" readonly></td>
				<td><input type="text" name="interestrate<%=cnt%>" size="10" value="<%=rs.getString(8)%>" readonly></td>
				<td><input type="text" name="upfrontinterestpaid<%=cnt%>" size="10" value="<%=rs.getString(9)%>" readonly></td>
				<td><input type="text" name="accruedintpayable<%=cnt%>" size="10" value="<%=rs.getString(10)%>" readonly></td>
				<td><input type="text" name="timesrolledover<%=cnt%>" size="10" value="<%=rs.getString(11)%>" readonly></td>
				<td><input type="text" name="principalpayable<%=cnt%>" size="10" value="<%=rs.getString(12)%>" readonly></td>
				<td><input type="text" name="totalaccruedprincipal<%=cnt%>" size="10" value="<%=rs.getString(13)%>" readonly></td>
				<td><input type="text" name="remarks<%=cnt%>" size="20" value="<%=rs.getString(14)%>" readonly></td>

			</tr>
<%
		}
	}
	catch(Exception e)
	{
		out.println("QDFIR 701 View Error: "+e.toString());
	}
		cn.close();
%>
  </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
</form>
</body>

</html>