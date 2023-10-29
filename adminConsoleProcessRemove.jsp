<!--
@author D & T Solutions
-->

<%@ page import="java.sql.*, cbnbas.admin.connect"%>
<html>

<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Cube CBN FINA System - Admin Console Remove User</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!--mstheme--><link rel="stylesheet" href="poet1111.css">
<meta name="Microsoft Theme" content="poetic 1111, default">
</script>
</head>

<body>
<font size="4"><b>Recap of delete operation</b></font>
<hr>
<%
	String userid=request.getParameter("T1");

	int affected=0;

	try
	{
		connect c = new connect();
   		Connection cn = c.connectMethod();
		PreparedStatement pst=cn.prepareStatement("delete from loginTable where userid=?");
		pst.setString(1,userid);
		affected=pst.executeUpdate();
		if(affected>0)
		{
			out.println("<br>");
			out.println("<b><font size='2'>User "+userid+" has been deleted!</font></b> <input type='checkbox' checked disabled><br>");
			out.println("<br>");
		}
		else
		{
			out.println("<br>");
			out.println("<b><font size='2'>Unable to delete the user!</font></b> <input type='checkbox' checked disabled><br>");
			out.println("<br>");
		}
	}
	catch(Exception e)
	{
		out.println("Error removing user!: "+e.toString());
	}
%>
<hr>
<font face="Verdana" style="font-size: 9pt">
<a href="adminConsole.jsp">Back to Admin Console</a> |
<a href="adminConsoleRemove.jsp">Delete more users?</a></font><a href="adminConsoleRemove.jsp">
</a>
</body>

</html>