<!--
@author D & T Solutions
-->
<%@ page import="java.sql.*, cbnbas.mtr.connect"%>
<%!
	Connection cn=null;
	String param="";
	String source="";
%>
<%
		connect c = new connect();
   		cn = c.connectMethod();
%>
<html>
<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Cube CBN EFASS System - MTR 202</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
</head>

<body>
<center>
<jsp:include flush="true" page="header.jsp"/>
<p><b><font color="#336699" size="2"><a href='mtrtoc.jsp'>MTR TOC</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MTR 202 - CAPTURE FOREIGN EXCHANGE FLOW STATEMENT</font></b>
 </p>      
    <form method="POST" action="mtr202customise.jsp">

    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
 	<tr>
	<td><p align="center"><b><font color="#336699" size="2">TYPE</font></b></td>
	<td><p align="center"><b><font color="#336699" size="2">CODE</font></b></td>
	<td><p align="center"><b><font color="#336699" size="2">DESCRIPTION</font></b></td>
    <td><p align="center"><b><font color="#336699" size="2">SOURCE?</font></b></td>
	<td><p align="center"><b><font color="#336699" size="2">USD</font></b></td>
	</tr>
	
	<%
	PreparedStatement pst=cn.prepareStatement("select * from mtr202");
	ResultSet rs=pst.executeQuery();
	int cnt=0;
	String code="";


		while(rs.next())
		{
			code=rs.getString(2);

			if(code.equals("10100") || code.equals("10310") || code.equals("10400") || code.equals("104014") || code.equals("10417") || code.equals("10700") || code.equals("20000") || code.equals("20200") || code.equals("20300") || code.equals("20500") || code.equals("20900") || code.equals("30000"))
			{
%>
		      <tr>

			<td><input type="text" size="10" readonly name="item<%=cnt%>" value="<%=rs.getString(1)%>"></td>
    			<td><input type="text" size="10" readonly name="Code<%=cnt%>" value="<%=code%>"></td>
    			<td><input type="text" size="65" name="desc<%=cnt%>" value="<%=rs.getString(3)%>"></td>
		      <td><select size="1" name="source<%=cnt%>" disabled><option value="1">GL Code</option><option selected value="2">Compute</option><option value="3">Direct</option></select></td>
      		<td><textarea cols="20" rows="1" name="usd<%=cnt%>" readonly tabindex="<%=cnt%>"><%=rs.getString(5)%></textarea></td>

    			</tr>
    			<%
		}
		else
		{
%>
		<tr>

		<td><input type="text" size="10" readonly name="item<%=cnt%>" value="<%=rs.getString(1)%>"></td>
    		<td><input type="text" size="10" readonly name="Code<%=cnt%>" value="<%=code%>"></td>
		<td><input type="text" size="65" name="desc<%=cnt%>" value="<%=rs.getString(3)%>"></td>

		<%
		source=rs.getString(4);
		if(source.equals("1"))
		{
%>
      <td><select size="1" name="source<%=cnt%>"><option selected value="1">GL Code</option><option value="2">Compute</option><option value="3">Direct</option></select></td>
<%
		}
		else if(source.equals("2"))
		{
%>
      <td><select size="1" name="source<%=cnt%>"><option value="1">GL Code</option><option selected value="2">Compute</option><option value="3">Direct</option></select></td>
<%
		}
		else
		{
%>
      <td><select size="1" name="source<%=cnt%>"><option selected value="1">GL Code</option><option value="2">Compute</option><option selected value="3">Direct</option></select></td>
<%
		}
%>
      <td><textarea cols="20" rows="1" name="usd<%=cnt%>"><%=rs.getString(5)%></textarea></td>

	<%

		}
		cnt++;
	}
%>
    </tr>
  </table>

<p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
<input name="rowcount" value="<%=cnt%>" size="20">
</form>	
  </center>
</div>

</div>

</div>

</body>

</html>