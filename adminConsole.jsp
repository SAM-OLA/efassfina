<!--
@author D & T Solutions
-->

<html>

<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Cube CBN FINA System - Admin Console</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="Microsoft Theme" content="poetic 1111, default">
</script>
</head>


<body>
<bgsound src="" id="snd">
<p><b><f1t size="4">Admin Console</font></b></p>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%">
  <tr>
    <td width="33%"><a href="adminConsoleAdd.jsp">Create New User</a> | 
    <a href="adminConsoleRemove.jsp">Remove User</a></td>
    <td width="33%">
<p align="center"><font size="4"><b>Home</b></font></p>
    </td>
    <td width="34%">
    <p align="right"><a href="" onclick="window.close()">Close Window</a></td>
  </tr>
</table>
<hr>
<form method="POST" action="adminConsoleUpdate.jsp">
 <div align="center">
   <center>
 <table cellpadding="3" style="border-collapse: collapse" cellspacing="0" border="0">
    <tr>
      <td><b>
      <font size="2" title="Allows you specify the corresponding values for each CBN item per report">
      User</font></b></td>
      <td><u><b>
      <font size="2" title="Allows you specify the corresponding values for each CBN item per report">
      MPMBR</font></b></u></td>
      <td><u><b>
      <font size="2" title="Allows you specify the corresponding values for each CBN item per report">
      QPMBR</font></b></u></td>
      <td><u><b>
      <font size="2" title="Allows you specify the corresponding values for each CBN item per report">
      SPMBR</font></b></u></td>
      <td><u><b>
      <font size="2" title="Allows you specify the corresponding values for each CBN item per report">
      WPMBR</font></b></u></td>
      <td><u><b>
      <font size="2" title="Allows you specify the corresponding values for each CBN item per report">
      CRMS</font></b></u></td>
	<td><u><b>
      <font size="2" title="Allows you specify the corresponding values for each CBN item per report">
      PER</font></b></u></td>
	<td><u><b>
      <font size="2" title="Allows you specify the corresponding values for each CBN item per report">
      MTR</font></b></u></td>

    </tr>
<%@ page import="java.sql.*, cbnbas.admin.connect"%>
<%
	String user=(String)session.getValue("userid");
	String pwd=(String)session.getValue("pwd");
	
		int cnt=0;
	try
	{	
		connect c = new connect();
   		Connection cnn = c.connectMethod();
   		
		PreparedStatement pst=cnn.prepareStatement("select adminId,adminPwd from adminTable");
		ResultSet rs1=pst.executeQuery();
		rs1.next();
		
		if(rs1.getString(1).trim().equals(user.trim()) && rs1.getString(2).trim().equals(pwd.trim()))
		{
		rs1.close();
		
		pst=cnn.prepareStatement("select userid,mpmbr,qpmbr,spmbr,wdfir,crms,per,mtr from loginTable");
		ResultSet rs=pst.executeQuery();
		while(rs.next())
		{
%>
    <tr>
      <td><input type="text" name="T1<%=cnt%>" size="20" value="<%=rs.getString(1)%>"></td>
<%if(rs.getString(2).equals("0")){%>
<td align="center" bgcolor="#E1E6E8" style="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
<input type="checkbox" name="T2<%=cnt%>" value="1"></td><%}else{%>
<td align="center" bgcolor="#E1E6E8" style="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
<input type="checkbox" name="T2<%=cnt%>" checked value="1"></td><%}%>

<%if(rs.getString(3).equals("0")){%>
<td align="center" style="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
<input type="checkbox" name="T3<%=cnt%>" value="1"></td><%}else{%>
<td align="center" style="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
<input type="checkbox" name="T3<%=cnt%>" checked value="1"></td><%}%>

<%if(rs.getString(4).equals("0")){%>
<td align="center" bgcolor="#E1E6E8" style="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
<input type="checkbox" name="T4<%=cnt%>" value="1"></td><%}else{%>
<td align="center" bgcolor="#E1E6E8" style="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
<input type="checkbox" name="T4<%=cnt%>" checked value="1"></td><%}%>

<%if(rs.getString(5).equals("0")){%>
<td align="center" style="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
<input type="checkbox" name="T5<%=cnt%>" value="1"></td><%}else{%>
<td align="center" style="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
<input type="checkbox" name="T5<%=cnt%>" checked value="1"></td><%}%>

<%if(rs.getString(6).equals("0")){%>
<td align="center" bgcolor="#E1E6E8" style="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
<input type="checkbox" name="T6<%=cnt%>" value="1"></td><%}else{%>
<td align="center" bgcolor="#E1E6E8" style="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
<input type="checkbox" name="T6<%=cnt%>" checked value="1"></td><%}%>
<%if(rs.getString(7).equals("0")){%>
<td align="center" bgcolor="#E1E6E8" style="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
<input type="checkbox" name="T7<%=cnt%>" value="1"></td><%}else{%>
<td align="center" bgcolor="#E1E6E8" style="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
<input type="checkbox" name="T7<%=cnt%>" checked value="1"></td><%}%>
<%if(rs.getString(8).equals("0")){%>
<td align="center" bgcolor="#E1E6E8" style="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
<input type="checkbox" name="T8<%=cnt%>" value="1"></td><%}else{%>
<td align="center" bgcolor="#E1E6E8" style="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
<input type="checkbox" name="T8<%=cnt%>" checked value="1"></td><%}%>


    </tr>
<%
			cnt++;
		}
		}
		else
		{
%>
			<script>
				alert("Sorry you are not a valid Administrator!");
				window.close();
			</script>
<%

		}
	}catch(Exception ex)
	{
		
		System.out.println(ex.toString());
%>
		<script>
				alert("Sorry you are not a valid Administrator!");
				window.close();
			</script>	
<%
	}
%>
  </table>
  <hr>
   </center>
 </div>
  <p align="center"><input type="submit" value="Update" name="B1"><input type="reset" value="Reset" name="B2"></p>
 <input type="hidden" name="rowCnt" size="20" value="<%=cnt%>">
</form>

</body>

</html>