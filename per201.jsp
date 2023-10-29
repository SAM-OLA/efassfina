<%@ page import="java.sql.*,cbnbas.per1.*" %>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from per201");
		while(rs.next())
		{
			cn++;
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>

<html>
<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>CBN EFASS System - PER 201</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
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
  function validate(obj)
{
x=document.myForm
at=obj.value.indexOf(".")
if (at != -1)
	{
	alert("this field can't contain a decimal number")
	obj.select()
	obj.focus()
	return false
	}

}

</SCRIPT>

<body>
  <center>
<jsp:include flush="true" page="header.jsp"/>
<br>
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="1154">
        <tr>
          <td width="66"><a href="pertoc.jsp"><b><font size="2">PER TOC</font></b></a></td>
          <td width="1066">
          <p align="center"><b><font size="2">CAPTURE LIST OF BANK'S PRINCIPAL OFICERS - PER 201</font></b></td>
          <td width="18">&nbsp;</td>
        </tr>
</table>
<br>

<table width=1000 border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">

 	<tr>
 	<form action="per201customise.jsp" method="post">
	<td>S_NO</td>
	<td>NAME</td>
	<td>ID CARD NUMBER</td>
	<td>DESIGNATION</td>
	<td>POSITION</td>
	<td>QUALIFICATION</td>
	<td>DISCIPLINE</td>
	<td>SALARY</td>
	<td>ALLOWANCES</td>

	</tr>
    <%


    	try
		{
    	
    	
    
    			Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from per201");
			while(rs.next())
			{
				out.println("<tr> ");
%>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(6)%></td>
				<td><%=rs.getString(7)%></td>
				<td><%=rs.getString(8)%></td>
				<td><%=rs.getString(9)%></td>
<%
				out.println("</tr> ");

				
			}
    		}
    	catch(Exception e)
	{
	}
		cnn.close();
    %>
     
	
	</td>
  </tr>
   <tr>
<td><input size=5>
<td><input size=40>
<td><input size=7>
<td><input size=20>
<td><input size=20>
<td><input size=10>
<td><input size=30>
<td><input size=10>
<td><input size=10>
</tr>
  
    
  </table>
  </center>
</div>

</div>

</div>

</body>

</html>
