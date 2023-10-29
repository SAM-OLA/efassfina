<%@ page import="java.sql.*, cbnbas.mtr.connect"%>
<%!
	Connection cnn=null;
%>
<html>
<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Cube CBN EFASS System - MTR 209</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
</head>
<body>
<center>
<jsp:include flush="true" page="header.jsp"/>
<p><b><font color="#336699" size="2"><a href='mtrtocView.jsp'>MTR TOC</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MTR 209 View - CAPTURE CONSOLIDATED FOREIGN EXCHANGE UTILIZATION</font></b>
 </p>  

    
    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
	<tr>
	<td colspan="3">
	&nbsp;</td>
	<td colspan=2 align=center>
	<b><font color="#336699" size="2">OTHER AUTONOMOUS FUNDS</font></b>
	</td>
	</tr>
 	<tr>
 	<form action="mtr209customise.jsp" method="post">
	<td align="center" valign="bottom">
    <p align="left"><b><font color="#336699" size="2">CODE</font></b></td>
	<td align="center" valign="bottom">
    <p align="left"><b><font color="#336699" size="2">DESCRIPTION</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">INTERBANK<br>
    PURCHASES<br>
    FROM CBN ($)</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">VALID FOR<br>
    FOREX</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">NOT VALID<br>
    FOR FOREX</font></b></td>
	</tr>
	
	<%
	try
	{
		int i=1;
		connect c = new connect();
   		cnn = c.connectMethod();
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from mtr209");
		while(rs.next())
		{
			out.println("<tr>");
			out.println("<td ><input type=\"text\" size=10 readonly name=\"f1"+i+"\" value=\""+String.valueOf(rs.getString(1))+"\"></td >");
    		out.println("<td ><input type=\"text\" size=50 readonly name=\"f2"+i+"\" value=\""+String.valueOf(rs.getString(2))+"\"></td >");
    		out.println("<td ><input type=\"text\" size=15 name=\"f3"+i+"\" value=\""+String.valueOf(rs.getString(3))+"\"></td >");
    		out.println("<td ><input type=\"text\" size=15 name=\"f4"+i+"\" value=\""+String.valueOf(rs.getString(4))+"\"></td >");
    		out.println("<td ><input type=\"text\" size=15 name=\"f5"+i+"\" value=\""+String.valueOf(rs.getString(5))+"\"></td >");
    		out.println("</tr>");
    		i++;
		}
		cnn.close();	
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