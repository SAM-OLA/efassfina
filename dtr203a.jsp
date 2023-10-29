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
	<td align="center" valign="bottom" ><b><font color="#336699" size="2">Source?</font></b></td>
	<td align="center" valign="bottom" ><b><font color="#336699" size="2">FOREIGN<br>
    CURRENCY (US$)</font></b></td>	
	<%
	try
	{
		int i=1;
		int cnt=0;
		connect c = new connect();
   		cnn = c.connectMethod();
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from dtr203");
		String source="";
		while(rs.next())
		{
			out.println("<tr>");
			out.println("<td ><input type=\"text\" size=10 readonly name=\"f1"+i+"\" value=\""+String.valueOf(rs.getString(1))+"\"></td >");
    		out.println("<td ><input type=\"text\" size=50 readonly name=\"f2"+i+"\" value=\""+String.valueOf(rs.getString(2))+"\"></td >");

		source=rs.getString(3);
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
    		out.println("<td ><input type=\"text\" size=20 name=\"f3"+i+"\" value=\""+String.valueOf(rs.getString(4))+"\"></td >");
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
	<input type="submit" value="submit"></p>
</form>
  </center>

</body>

</html>