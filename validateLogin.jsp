<%@ page import="java.sql.*, cbnbas.admin.connect,cbnbas.mpmbr.*"%>
<%
	String user="";
	String pwd="";

	user=request.getParameter("T1");
	pwd=request.getParameter("T2");

	try
	{
		PreparedStatement pst=null;

		connect c = new connect();
   		Connection cnn = c.connectMethod();
   		if(user.trim().equals("administrator"))
		{
			pst=cnn.prepareStatement("select * from adminTable where adminId=? and adminPwd=?");
		}
		else
		{
			pst=cnn.prepareStatement("select * from loginTable where userid=? and pwd=?");
		}
		pst.setString(1,user.trim());
		pst.setString(2,pwd.trim());
		ResultSet rs=pst.executeQuery();
		if(rs.next())
		{
	//		new qdfir300Reloaded("qdfir300");
			session.putValue("userid",user.trim());
			session.putValue("pwd",pwd.trim());
			session.setMaxInactiveInterval(3600);
%>
	<jsp:forward page="home.jsp"/>
<%
		}
		else
		{
%>
<html>

<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<title>Table Of Content</title>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<!--mstheme--><link rel="stylesheet" href="poet1111.css">
<meta name="Microsoft Theme" content="poetic 1111, default">
</head>
<center>
<jsp:include flush="true" page="header.jsp"/>
<body>
<bgsound src="" id="snd">
<br>
<br>
<br>
		<h1 align="center">Access Denied!</h1>
		<h4 align="center">Your user id or password is <b>invalid</b>.</h4>
		<h4 align="center">Please click the Button below to <b>re-login</b> with
        correct data.</h4>
		<h4 align="center">If problem persists please <b>see your administrator</b>.</h4>
<br>
<br>
<br>
<br>
<br>
<br>
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="400" height="30">
    <tr>
      <td width="896" valign="middle" align="center" class="cat" onmouseover="javascript:changeclass( this, 'catover' );" onmouseout="javascript:changeclass( this, 'cat' );">
		<a href="intro.htm">Back to Login Page</a>
      </td>
      </tr>
      </table>
<%
		}
	}
	catch(Exception ex)
	{
		out.println("Error: "+ex.toString());
	}
%>
