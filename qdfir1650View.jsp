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
<title>QDFIR - 1650</title>
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
<p align="center"><b><font color="#336699" size="2">QDFIR 1650 - SCHEDULE OF CREDITS TO DIRECTORS/EMPLOYEES/SHAREHOLDERS & RELATED INTEREST</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

<form name"frm" method="POST" action="qdfir1650Customise.jsp">
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="AutoNumber1" width="30%">
      <th><b><font color="#336699" size="2">S NO</font></b></th>
      <th><b><font color="#336699" size="2">CUSTOMER CODE</font></b></th>
      <th><b><font color="#336699" size="2">CUSTOMER NAME</font></b></th>
	<th><b><font color="#336699" size="2">ACCOUNT NUMBER</font></b></th>
	<th><b><font color="#336699" size="2">RELATIONSHIP TO INSTITUTION</font></b></th>
	<th><b><font color="#336699" size="2">AMOUNT GRANTED</font></b></th>
	<th><b><font color="#336699" size="2">DATE GRANTED</font></b></th>
	<th><b><font color="#336699" size="2">EXPIRY DATE</font></b></th>
	<th><b><font color="#336699" size="2">TOTAL OUTSTANDING CREDIT</font></b></th>
	<th><b><font color="#336699" size="2">PERFORMING</font></b></th>
	<th><b><font color="#336699" size="2">NON PERFORMING</font></b></th>
	<th><b><font color="#336699" size="2">RATE OF INTEREST</font></b></th>
	<th><b><font color="#336699" size="2">NATURE</font></b></th>
	<th><b><font color="#336699" size="2">VALUE</font></b></th>
	<th><b><font color="#336699" size="2">DATE OF VALUATION</font></b></th>
	<th><b><font color="#336699" size="2">CHARGED AMOUNT</font></b></th>
	<th><b><font color="#336699" size="2">REMARKS</font></b></th>

	
<%
	try
	{
		pst=cn.prepareStatement("select * from qdfir1650");
		rs=pst.executeQuery();

		int cnt=0;
		while(rs.next())
		{
%>
			<tr bgcolor="blue">
				<td><input type="text" name="sno<%=cnt%>" size="10" value="<%=rs.getString(1)%>"></td>
				<td><input type="text" name="customercode<%=cnt%>" size="50" value="<%=rs.getString(2)%>"></td>
				<td><input type="text" name="customername<%=cnt%>" size="50" value="<%=rs.getString(3)%>"></td>
				<td><input type="text" name="accountnumber<%=cnt%>" size="50" value="<%=rs.getString(4)%>"></td>
				<td><input type="text" name="relationshiptoinstitution<%=cnt%>" size="50" value="<%=rs.getString(5)%>"></td>
				<td><input type="text" name="amountgranted<%=cnt%>" size="50" value="<%=rs.getString(6)%>"></td>
				<td><input type="text" name="dategranted<%=cnt%>" size="20" value="<%=rs.getString(7)%>" readonly></td>
				<td><input type="text" name="expirydate<%=cnt%>" size="20" value="<%=rs.getString(8)%>" readonly></td>
				<td><input type="text" name="totaloutstandingcredit<%=cnt%>" size="20" value="<%=rs.getString(9)%>" readonly></td>
				<td><input type="text" name="performing<%=cnt%>" size="20" value="<%=rs.getString(10)%>" readonly></td>
				<td><input type="text" name="nonperforming<%=cnt%>" size="20" value="<%=rs.getString(11)%>" readonly></td>
				<td><input type="text" name="rateofinterest<%=cnt%>" size="20" value="<%=rs.getString(12)%>" readonly></td>
				<td><input type="text" name="nature<%=cnt%>" size="20" value="<%=rs.getString(13)%>" readonly></td>
				<td><input type="text" name="value<%=cnt%>" size="20" value="<%=rs.getString(14)%>" readonly></td>
				<td><input type="text" name="dateofvaluation<%=cnt%>" size="20" value="<%=rs.getString(15)%>" readonly></td>
				<td><input type="text" name="chargedamount<%=cnt%>" size="20" value="<%=rs.getString(16)%>" readonly></td>
				<td><input type="text" name="remarks<%=cnt%>" size="20" value="<%=rs.getString(17)%>" readonly></td>

			</tr>
<%
		}
	}
	catch(Exception e)
	{
		out.println("QDFIR 1650 View Error: "+e.toString());
	}
		cn.close();
%>
  </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
</form>
</body>

</html>