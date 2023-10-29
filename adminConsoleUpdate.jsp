<!--
@author D & T Solutions
-->

<html>

<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Cube CBN EFASS System - Admin Console Update</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="Microsoft Theme" content="poetic 1111, default">
</script>
</head>

<body>
<font size="4"><b>Recap of update operation</b></font>
<hr>
<%@ page import="java.sql.*, cbnbas.admin.connect"%>
<%
	int rowCnt=Integer.parseInt(request.getParameter("rowCnt"));

	String userid="";
	String s2="";
	String s3="";
	String s4="";
	String s5="";
	String s6="";
	String s7="";
	String s8="";

	int affected=0;

	try
	{
		connect c = new connect();
   		Connection cnn = c.connectMethod();
		PreparedStatement pst=cnn.prepareStatement("update loginTable set mbr='0',dbr='0',qbr='0',sbr='0',qrl='0',wbr='0',mmbr='0',mpmbr=?,qpmbr=?,spmbr=?,wdfir=?,crms=?,per=?,mtr=? where userid=?");

for(int x=0;x<rowCnt;x++)
{

	userid=request.getParameter("T1"+x);
	s2=request.getParameter("T2"+x);
	s3=request.getParameter("T3"+x);
	s4=request.getParameter("T4"+x);
	s5=request.getParameter("T5"+x);
	s6=request.getParameter("T6"+x);
	s7=request.getParameter("T7"+x);
	s8=request.getParameter("T8"+x);

	if(s2==null)
		s2="0";
	if(s3==null)
		s3="0";
	if(s4==null)
		s4="0";
	if(s5==null)
		s5="0";
	if(s6==null)
		s6="0";
	if(s7==null)
		s7="0";
	if(s8==null)
		s8="0";

		pst.setString(1,s2);
		pst.setString(2,s3);
		pst.setString(3,s4);
		pst.setString(4,s5);
		pst.setString(5,s6);
		pst.setString(6,s7);
		pst.setString(7,s8);
		pst.setString(8,userid);
		affected=pst.executeUpdate();
		if(affected>0)
		{
			out.println("<b><font size='2'>"+userid+"'s account updated!</font></b> <input type='checkbox' checked disabled><br>");
		}
}
	}
	catch(Exception e)
	{
		out.println("Error: Admin Update Console: "+e.toString());
	}
%>
<hr>
<font face="Verdana" style="font-size: 9pt">
<a href="adminConsole.jsp">Back to Admin Console</a></font>
</body>
</html>
