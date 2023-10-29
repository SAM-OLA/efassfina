<!--
@author D & T Solutions
-->

<%@ page import="java.sql.*, cbnbas.admin.connect"%>
<html>

<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Cube CBN EFASS System - Admin Console Create User</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="Microsoft Theme" content="poetic 1111, default">
</script>
</head>

<body>
<font size="4"><b>Recap of update operation</b></font>
<hr>
<%
	String userid=request.getParameter("T1");
	String pwd=request.getParameter("T2");

	int affected=0;

	try
	{
		connect c = new connect();
   		Connection cn = c.connectMethod();
		PreparedStatement pst=cn.prepareStatement("insert into loginTable values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		pst.setString(1,userid);
		pst.setString(2,pwd);
		pst.setString(3,"0");
		pst.setString(4,"0");
		pst.setString(5,"0");
		pst.setString(6,"0");
		pst.setString(7,"0");
		pst.setString(8,"0");
		pst.setString(9,"0");
		pst.setString(10,"0");
		pst.setString(11,"0");
		pst.setString(12,"0");
		pst.setString(13,"0");
		pst.setString(14,"0");
		pst.setString(15,"0");
		pst.setString(16,"0");
		pst.setString(17,"0");
		pst.setString(18,"0");
		affected=pst.executeUpdate();
		if(affected>0)
		{
			out.println("<br>");
			out.println("<b><font size='2'>User "+userid+" has been created!</font></b> <input type='checkbox' checked disabled><br>");
			out.println("<br>");
		}
		else
		{
			out.println("<br>");
			out.println("<b><font size='2'>Unable to create the new user!</font></b> <input type='checkbox' checked disabled><br>");
			out.println("<br>");
		}
	}
	catch(Exception e)
	{
		out.println("Error creating new user!: "+e.toString());
	}
%>
<hr>
<font face="Verdana" style="font-size: 9pt">
<a href="adminConsole.jsp">Back to Admin Console</a> | <a href="adminConsoleAdd.jsp">Create more users?</a></font>
</body>

</html>
