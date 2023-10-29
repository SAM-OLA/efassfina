<!--
@author D & T Solutions
-->

<html>

<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Cube CBN FINA System - Admin Console</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!--mstheme--><link rel="stylesheet" href="poet1111.css">
<meta name="Microsoft Theme" content="poetic 1111, default">
<script>
function confirmDelete()
{
	return confirm("Are you sure you want to delete this user?");
}
</script>
</head>

<body>

<p><b><font size="4">Admin Console</font></b></p>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%">
  <tr>
    <td width="33%"><font face="Verdana" style="font-size: 9pt">
    <a href="adminConsole.jsp">Admin Home</a> | Remove User</font></td>
    <td width="33%">
<p align="center"><font size="4"><b>Remove User</b></font></p>
    </td>
    <td width="34%">
    <p align="right"><a href="" onclick="window.close()">Close Window</a></td>
  </tr>
</table>
<hr>
    <center>
   <table border="0" cellpadding="2" style="border-collapse: collapse">
<%@ page import="java.sql.*, cbnbas.admin.connect"%>
<%
	String user=(String)session.getValue("userid");
	String pwd=(String)session.getValue("pwd");
		int cnt=0;
	try
	{	
		connect c = new connect();
   		Connection cnn = c.connectMethod();
		PreparedStatement pst=cnn.prepareStatement("select userid from loginTable");
		ResultSet rs=pst.executeQuery();
		while(rs.next())
		{
%>
<form method="POST" action="adminConsoleProcessRemove.jsp">
      <tr>
        <td><input type="text" name="T1" size="42" value="<%=rs.getString(1)%>"></td>
        <td><input type="submit" value="Delete" name="B1" onclick="return confirmDelete()"></td>
      </tr>
</form>
<%
			cnt++;
		}
	}catch(Exception ex)
	{
	}
%>	    
    </table>
    </center>
  </div>
<hr>

</body>

</html>