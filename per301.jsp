<%@ page import="java.sql.*,cbnbas.per1.*" %>
<html>
<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>CBN EFASS System - PER 301</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
</head>

<body>
  <center>
<jsp:include flush="true" page="header.jsp"/>
<br>
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="1154">
        <tr>
          <td width="66"><a href="pertoc.jsp"><b><font size="2">PER TOC</font></b></a></td>
          <td width="1066">
          <p align="center"><b><font size="2">PER 301 - CAPTURE BALANCE SHEET</font></b></td>
          <td width="18">&nbsp;</td>
        </tr>
</table>
<br>
    <table border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">
 	<tr>
 	
	<th><b><font size="2">DESCRIPTION</font></b></td>
	<th><b><font size="2">NOTES</font></b></td>
	<th><b><font size="2">AMOUNT</font></b></td>
	</tr>
	
	<%
	try
	{
		out.println("<form action=\"per301customise.jsp\" method=\"post\">");
		int i=1;
		connect c = new connect();
   		Connection cnn = c.connectMethod();
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from per301");
		while(rs.next())
		{
			out.println("<tr>");
			out.println("<td><input type=\"text\" size=80 readonly name=\"f1"+i+"\" value=\""+String.valueOf(rs.getString(1))+"\"></td >");
    		out.println("<td><input type=\"text\" size=20 readonly name=\"f2"+i+"\" value=\""+String.valueOf(rs.getString(2))+"\"></td >");
    		out.println("<td><input type=\"text\" size=20 name=\"f3"+i+"\" value=\""+String.valueOf(rs.getString(3))+"\"></td >");
    		
    		out.println("</tr>");
    		i++;
		}
		cnn.close();
		out.println("<tr>");
		out.println("<td >");
		out.println("<input type=\"submit\" value=\"submit\">");
		out.println("</form>");	
		out.println("</td>");
		out.println("</tr>");
	}
	catch(Exception e)
	{
		out.print(e.toString());
	}
     %>
	<tr><td>
	</td>
	</tr>
	</td>
  </tr>
   
  
    
  </table>
  </center>
</div>

</div>

</div>

</body>

</html>