<%@ page import="java.sql.*, cbnbas.dtr.connect"%>
<%!
	Connection cnn=null;
%>
<html>
<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Cube CBN EFASS System - DTR 203</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
</head>

<body>
<center>
<jsp:include flush="true" page="header.jsp"/>
<p><b><font color="#336699" size="2">DTR 203 - SUMMARY OF FOREIGN EXCHANGE POSITION REPORT</font></b>
 </p>     

    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
 	<form action="dtr203customise.jsp" method="post">
	<td align="center" valign="bottom" ><b><font color="#336699" size="2">CODE</font></b></td>
	<td align="center" valign="bottom" ><b><font color="#336699" size="2">DESCRIPTION</font></b></td>
	<td align="center" valign="bottom" ><b><font color="#336699" size="2">FOREIGN<br>
    CURRENCY (US$)</font></b></td>	
	<%
	try
	{
		int i=1;
		connect c = new connect();
   		cnn = c.connectMethod();
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from dtr203Data");
		while(rs.next())
		{
			out.println("<tr>");
			out.println("<td ><input type=\"text\" size=10 readonly name=\"f1"+i+"\" value=\""+String.valueOf(rs.getString(1))+"\"></td >");
    		out.println("<td ><input type=\"text\" size=50 readonly name=\"f2"+i+"\" value=\""+String.valueOf(rs.getString(2))+"\"></td >");
    		out.println("<td ><input type=\"text\" size=20 name=\"f3"+i+"\" value=\""+String.valueOf(rs.getString(3))+"\"></td >");
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
	</p>
</form>
  </center>

</body>

</html>