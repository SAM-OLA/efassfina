<%@ page import="java.sql.*, cbnbas.mtr.connect"%>
<%!
	Connection cnn=null;
%>
<html>
<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Cube CBN EFASS System - MTR 206</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
</head>


<body>
<center>
<jsp:include flush="true" page="header.jsp"/>
<p><b><font color="#336699" size="2"><a href='mtrtoc.jsp'>MTR TOC</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MTR 206 - ANALYSIS OF FOREIGN EXCHANGE UTILISATION ON (FORM 'A' AND 'M' AGGREGATE BY SOURCE OF FUNDING</font></b>
 </p>      

    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
 	<tr>
 	<form action="mtr206customise.jsp" method="post">
	<td align="center" valign="bottom" ><b><font color="#336699" size="2">CODE</font></b></td>
	<td align="center" valign="bottom" ><b><font color="#336699" size="2">SOURCE OF<br>
    FUNDING</font></b></td>
	<td align="center" valign="bottom" ><b><font color="#336699" size="2">VALUE (US$)</font></b></td>
	<td align="center" valign="bottom" ><b><font color="#336699" size="2">EXCHANGE<br>
    RATE</font></b></td>
	<td align="center" valign="bottom" ><b><font color="#336699" size="2">REMARKS</font></b></td>
	</tr>
	
	<%
	try
	{
		int i=1;
		connect c = new connect();
   		cnn = c.connectMethod();
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from mtr206");
		while(rs.next())
		{
			out.println("<tr>");
			out.println("<td ><input type=\"text\" size=10 readonly name=\"f1"+i+"\" value=\""+String.valueOf(rs.getString(1))+"\"></td >");
    		out.println("<td ><input type=\"text\" size=70 readonly name=\"f2"+i+"\" value=\""+String.valueOf(rs.getString(2))+"\"></td >");
    		out.println("<td ><input type=\"text\" size=15 name=\"f3"+i+"\" value=\""+String.valueOf(rs.getString(3))+"\"></td >");
    		out.println("<td ><input type=\"text\" size=15 name=\"f4"+i+"\" value=\""+String.valueOf(rs.getString(4))+"\"></td >");
    		out.println("<td ><input type=\"text\" size=20 name=\"f5"+i+"\" value=\""+String.valueOf(rs.getString(5))+"\"></td >");
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
<input type="submit" value="submit">
</form>	
  </center>
</div>

</div>

</div>

</body>

</html>