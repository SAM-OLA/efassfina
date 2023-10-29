<%@ page import="java.sql.*, cbnbas.qdfir.connect"%>
<html>

<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Cube - Required Set</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!--mstheme--><link rel="stylesheet" href="file:///C:/DOCUME~1/FAVOUR~1/LOCALS~1/Temp/FrontPageTempDir/mstheme/poetic/poet1111.css">
<meta name="Microsoft Theme" content="poetic 1111, default">
</head>

<body>
<center>
 <table border="1" cellpadding="3" style="border-collapse: collapse" bordercolor="#111111" width="90%">
<caption>Required Set</caption>
<th>Reports
<tr><td bgcolor="#F5F5F5">QDFIR 101</td></tr>
<tr><td bgcolor="#F5F5F5">QDFIR 250</td></tr>
<tr><td bgcolor="#F5F5F5">QDFIR 300</td></tr>
<tr><td bgcolor="#F5F5F5">QDFIR 301</td></tr>
<tr><td bgcolor="#F5F5F5">QDFIR 600</td></tr>
<tr><td bgcolor="#F5F5F5">QDFIR 700</td></tr>
<tr><td bgcolor="#F5F5F5">QDFIR 1000</td></tr>
<tr><td bgcolor="#F5F5F5">QDFIR 1300</td></tr>
<tr><td bgcolor="#F5F5F5">QDFIR 1400</td></tr>
<tr><td bgcolor="#F5F5F5">QDFIR 1700</td></tr>
<%
	Connection cn=null;
	try
	{
		connect c=new connect();
		cn=c.connectMethod();
	}
	catch(Exception e)
	{
		out.println("");
	}

	//new qdfir300Reloaded("qdfir300");

	PreparedStatement pst=null;
	pst=cn.prepareStatement("select code from QDFIR300Data where [value]>0");


	String code="";
	ResultSet rs=pst.executeQuery();
try
{
	while(rs.next())
	{
		code=rs.getString(1);

		if(code.equals("10230")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 231</td></tr>");}
		else if(code.equals("10310")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 311</td></tr>");}
		else if(code.equals("10320")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 321</td></tr>");}
		else if(code.equals("10330")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 331</td></tr>");}
		else if(code.equals("10350")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 351</td></tr>");}		
		else if(code.equals("10410")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 411</td></tr>");}
		else if(code.equals("10420")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 421</td></tr>");}
		else if(code.equals("10424")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 425</td></tr>");}
		else if(code.equals("10540")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 541</td></tr>");}
		else if(code.equals("10650")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 651</td></tr>");}
		else if(code.equals("10700")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 701</td></tr>");}
		else if(code.equals("10900")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 901</td></tr>");}
		else if(code.equals("11100")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 101/ 102</td></tr>");}
		else if(code.equals("11260")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 261/262</td></tr>");}
		else if(code.equals("20180")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 181</td></tr>");}
		else if(code.equals("20195")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 196</td></tr>");}
		else if(code.equals("20220")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 221</td></tr>");}
		else if(code.equals("20230")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 232</td></tr>");}
		else if(code.equals("20240")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 241</td></tr>");}
		else if(code.equals("20250")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 251</td></tr>");}
		else if(code.equals("20300")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 301/302</td></tr>");}
		else if(code.equals("20460")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 461</td></tr>");}
		else if(code.equals("20470")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 471</td></tr>");}
		else if(code.equals("20510")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 511</td></tr>");}
		else if(code.equals("20520")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 521</td></tr>");}
		else if(code.equals("20530")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 531</td></tr>");}
		else if(code.equals("20660")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 661</td></tr>");}
		else if(code.equals("20670")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 671</td></tr>");}
		else if(code.equals("20680")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 681</td></tr>");}
		else if(code.equals("20960")){out.println("<tr><td bgcolor='#FFFFE8'>QDFIR 961</td></tr>");}
	}

		rs.close();
		pst.close();
		cn.close();
}
catch(Exception e)
{
}
%>
</body>
</html>