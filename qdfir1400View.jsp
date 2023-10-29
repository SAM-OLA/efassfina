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
<title>QDFIR - 1400</title>
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
<p align="center"><b><font color="#336699" size="2">QDFIR 1400 - SCHEDULE OF NON PERFORMING OTHER ASSETS</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

<form name"frm" method="POST" action="qdfir1400Customise.jsp">
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="AutoNumber1" width="30%">
      <th><b><font color="#336699" size="2">S NO</font></b></th>
      <th><b><font color="#336699" size="2">BRANCH CODE</font></b></th>
      <th><b><font color="#336699" size="2">BRANCH NAME</font></b></th>
	<th><b><font color="#336699" size="2">TOTAL OTHER ASSESTS</font></b></th>
	<th><b><font color="#336699" size="2">TOTAL NON PERFORMING OTHER ASSETS</font></b></th>
	<th><b><font color="#336699" size="2">STANDARD</font></b></th>
	<th><b><font color="#336699" size="2">DOUBTFUL</font></b></th>
	<th><b><font color="#336699" size="2">LOSS</font></b></th>
	<th><b><font color="#336699" size="2">DFI's PROVISION</font></b></th>
	<th><b><font color="#336699" size="2">REMARKS</font></b></th>


	
<%
	try
	{
		pst=cn.prepareStatement("select * from qdfir1400");
		rs=pst.executeQuery();

		int cnt=0;
		while(rs.next())
		{
%>
			<tr bgcolor="blue">
				<td><input type="text" name="sno<%=cnt%>" size="10" value="<%=rs.getString(1)%>"></td>
				<td><input type="text" name="branchcode<%=cnt%>" size="10" value="<%=rs.getString(2)%>"></td>
				<td><input type="text" name="branchname<%=cnt%>" size="10" value="<%=rs.getString(3)%>"></td>
				<td><input type="text" name="totalotherassets<%=cnt%>" size="10" value="<%=rs.getString(4)%>"></td>
				<td><input type="text" name="totalnonperformingotherassets<%=cnt%>" size="10" value="<%=rs.getString(5)%>"></td>
				<td><input type="text" name="standard<%=cnt%>" size="10" value="<%=rs.getString(6)%>" readonly></td>
				<td><input type="text" name="doubtful<%=cnt%>" size="10" value="<%=rs.getString(7)%>" readonly></td>
				<td><input type="text" name="loss<%=cnt%>" size="10" value="<%=rs.getString(8)%>" readonly></td>
				<td><input type="text" name="dfisprovision<%=cnt%>" size="10" value="<%=rs.getString(9)%>" readonly></td>
				<td><input type="text" name="remarks<%=cnt%>" size="10" value="<%=rs.getString(10)%>" readonly></td>

			</tr>
<%
		}
	}
	catch(Exception e)
	{
		out.println("QDFIR 1400 View Error: "+e.toString());
	}
		cn.close();
%>
  </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
</form>
</body>

</html>