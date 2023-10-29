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
<title>QDFIR - 1700</title>
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
<p align="center"><b><font color="#336699" size="2">QDFIR 1700 - SCHEDULE OF TOP USERS OF FUND</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

<form name"frm" method="POST" action="qdfir1700Customise.jsp">
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="AutoNumber1" width="30%">
      <th><b><font color="#336699" size="2">S NO</font></b></th>
	<th><b><font color="#336699" size="2">NAME</font></b></th>
	<th><b><font color="#336699" size="2">SECTOR</font></b></th>
	<th><b><font color="#336699" size="2">CRMS BORROWERS CODE</font></b></th>
	<th><b><font color="#336699" size="2">RC/BR/SR No</font></b></th>
	<th><b><font color="#336699" size="2">TOTAL</font></b></th>
	<th><b><font color="#336699" size="2">CLASSIFIED AS NPA</font></b></th>
	<th><b><font color="#336699" size="2">DEBT INSTRUMENTS</font></b></th>
	<th><b><font color="#336699" size="2">INV</font></b></th>
	<th><b><font color="#336699" size="2">CONTIGENT LIABILITIES 20% OF VALUE</font></b></th>
	<th><b><font color="#336699" size="2">TOTAL EXPOSURE</font></b></th>


<%
	try
	{
		pst=cn.prepareStatement("select * from qdfir1700");
		rs=pst.executeQuery();

		int cnt=0;
		while(rs.next())
		{
%>
			<tr bgcolor="blue">
				<td><input type="text" name="sno<%=cnt%>" size="10" value="<%=rs.getString(1)%>"></td>
				<td><input type="text" name="name<%=cnt%>" size="50" value="<%=rs.getString(2)%>"></td>
				<td><input type="text" name="sector<%=cnt%>" size="20" value="<%=rs.getString(3)%>" readonly></td>
				<td><input type="text" name="crmsborrowerscode<%=cnt%>" size="20" value="<%=rs.getString(4)%>" readonly></td>
				<td><input type="text" name="rc/br/srNo<%=cnt%>" size="20" value="<%=rs.getString(5)%>" readonly></td>
				<td><input type="text" name="total<%=cnt%>" size="20" value="<%=rs.getString(6)%>" readonly></td>
				<td><input type="text" name="classfifiedasNPA<%=cnt%>" size="20" value="<%=rs.getString(7)%>" readonly></td>
				<td><input type="text" name="debtinstruments<%=cnt%>" size="20" value="<%=rs.getString(8)%>" readonly></td>
				<td><input type="text" name="inv<%=cnt%>" size="20" value="<%=rs.getString(9)%>" readonly></td>
				<td><input type="text" name="contingentliabilities<%=cnt%>" size="20" value="<%=rs.getString(10)%>" readonly></td>
				<td><input type="text" name="totalexposure<%=cnt%>" size="20" value="<%=rs.getString(11)%>" readonly></td>

			</tr>
<%
		}
	}
	catch(Exception e)
	{
		out.println("QDFIR 1700 View Error: "+e.toString());
	}
		cn.close();
%>
  </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
</form>
</body>

</html>