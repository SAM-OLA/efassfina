<%@ page import="java.sql.*, cbnbas.mtr.connect"%>
<%!
	Connection cn=null;
%>
<html>
<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Cube CBN EFASS System - MTR 202 View</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
</head>

<body>
<center>
<jsp:include flush="true" page="header.jsp"/>
<p><b><font color="#336699" size="2"><a href='mtrtocView.jsp'>MTR TOC</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MTR 202 View - CAPTURE FOREIGN EXCHANGE FLOW STATEMENT</font></b>
 </p>      
    
    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
 	<tr>
	<td >
    <p align="center"><b><font color="#336699" size="2">TYPE</font></b></td>
	<td >
    <p align="center"><b><font color="#336699" size="2">CODE</font></b></td>
	<td >
    <p align="center"><b><font color="#336699" size="2">DESCRIPTION</font></b></td>
	<td >
    <p align="center"><b><font color="#336699" size="2">USD</font></b></td>
	</tr>
	
	<%
	try
	{
		out.println("<form action=\"mtr202customise.jsp\" method=\"post\">");
		int i=1;
		connect c = new connect();
   		cn = c.connectMethod();

		Statement st=cn.createStatement();
		ResultSet rs=st.executeQuery("select * from mtr202Data");
		while(rs.next())
		{
			out.println("<tr>");
			out.println("<td ><input type=\"text\" size=10 readonly name=\"f1"+i+"\" value=\""+String.valueOf(rs.getString(1))+"\"></td >");
    		out.println("<td ><input type=\"text\" size=15 readonly name=\"f2"+i+"\" value=\""+String.valueOf(rs.getString(2))+"\"></td >");
    		out.println("<td ><input type=\"text\" size=50 name=\"f3"+i+"\" value=\""+String.valueOf(rs.getString(3))+"\"></td >");
    		out.println("<td ><input type=\"text\" size=15 name=\"f4"+i+"\" value=\""+String.valueOf(rs.getString(4))+"\"></td >");
    		out.println("</tr>");
    		i++;
		}
		cn.close();
	}
	catch(Exception e)
	{
		out.print(e.toString());
	}
     %>   
  </table>
</form>	
  </center>
</div>

</div>

</div>

</body>

</html>