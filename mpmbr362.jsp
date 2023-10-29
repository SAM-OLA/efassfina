<!--
@author D & T Solutions
-->

<%@ page import="java.sql.*, cbnbas.mpmbr.connect"%>
<%!
	Connection cn=null;
	PreparedStatement pst=null;
	int recCnt=0;
	int cnt=0;
	String source="";
	String code="";
%>
<%
		connect c = new connect();
   		cn = c.connectMethod();

%>
<html>
<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Cube CBN EFASS System - MPMBR 1000</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="Microsoft Theme" content="poetic 1111, default">
</head>
<SCRIPT language="JavaScript1.2">
	num=0;
  function doClickAll(form) {
	for (var i = 0; i < form.elements.length; i++) {
		if ( form.elements[i].type == "checkbox" ) {
			if ( ! form.elements[i].checked ) { form.elements[i].click();
			}
		}
    }
	return true;
  }

  function doUnClickAll(form) {
	for (var i = 0; i < form.elements.length; i++) {
		if ( form.elements[i].type == "checkbox" ) {
			if (  form.elements[i].checked ) { form.elements[i].checked = false;
			}
		}
	}
	return true;
  }
  function del() 
  {
	num++;
  }
  function dele()
  {
  	if(num!=0)
  	{
  		var name=confirm("Are you sure you want to delete these item(s)?");
		if (!name)
		{
			return false;
		}
  	}
  }

</SCRIPT>

<body>
<center>
<jsp:include flush="true" page="header.jsp"/>
<br>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="1154">
  <tr>
    <td width="73">
    <b><font color="#336699" size="2">
    <a href='mpmbrtoc.jsp'>MPMBR TOC</a> </font></b> </td>
    <td width="1063">
<p align="center"><b><font color="#336699" size="2">MPMBR 362 - SCHEDULE OF STRUCTURE OF DEPOSITS</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>
<pre>
<%
		Statement st3=cn.createStatement();
		ResultSet rs3=st3.executeQuery("select value from MPMBR300Data where code='20180'");
		rs3.next();
%>
Note: Expected Total for 36275[Total col]: <%=rs3.getString(1)%> 
</pre>
<form method="POST" action="mpmbr362Customise.jsp">

  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="AutoNumber1">
    <tr>
      <td><b><font color="#336699">CODE</font></b></td>
      <td><b><font color="#336699">DEPOSIT TYPE</font></b></td>
      <td><b><font color="#336699">DEPOSIT SIZE N1 - N100,000</font></b></td>
      <td><b><font color="#336699">DEPOSIT SIZE N100,001 - N200,000</font></b></td>
      <td><b><font color="#336699">DEPOSIT SIZE N 200,001 - N500,000</font></b></td>
      <td><b><font color="#336699">DEPOSIT SIZE N 500,001 & Above</font></b></td>
      <td><b><font color="#336699">TOTAL N</font></b></td>
    </tr>
<%
	try
	{
		pst=cn.prepareStatement("select * from MPMBR362");
		ResultSet rs=pst.executeQuery();

		cnt=0;
		while(rs.next())
		{
			code=rs.getString(1);
%>
			<tr>
		      <td><input type="text" name="code<%=cnt%>" size="10" value="<%=code%>" readonly></td>
		      <td><input type="text" name="deposittype<%=cnt%>" value="<%=rs.getString(2)%>"></td>
		      <td><input type="text" name="deposittypeA<%=cnt%>" value="<%=rs.getString(3)%>"></td>
		      <td><input type="text" name="deposittypeB<%=cnt%>" value="<%=rs.getString(4)%>"></td>
		      <td><input type="text" name="deposittypeC<%=cnt%>" value="<%=rs.getString(5)%>"></td>
		      <td><input type="text" name="deposittypeD<%=cnt%>" value="<%=rs.getString(6)%>"></td>
		      <td><input type="text" name="deposittypeE<%=cnt%>" value="<%=rs.getString(7)%>"></td>

    			</tr>

<%
			
			cnt++;
		}
	}
	catch(Exception e)
	{
		out.println("Error: "+e.toString());
	}
	cn.close();
%>
  </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
<input type="hidden" name="rowcount" value="<%=cnt%>" size="20">
</form>
<p>&nbsp;</p>

</body>

</html>