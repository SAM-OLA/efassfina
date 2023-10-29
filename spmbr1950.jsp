<%@ page import="java.sql.*,cbnbas.spmbr.connect"%>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
	int cn=0;
	try
	{
		PreparedStatement pss = cnn.prepareStatement("delete * from spmbr1950Data");
            pss.executeUpdate();
            pss.close();
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from spmbr1950");
		while(rs.next())
		{
			cn++;
			PreparedStatement pstInsert = cnn.prepareStatement("Insert into spmbr1950Data Values(?,?,?,?,?,?,?,?,?)");
                  pstInsert.setString(1, rs.getString(1));
                  pstInsert.setString(2, rs.getString(2));
                  pstInsert.setString(3, rs.getString(3));
                  pstInsert.setString(4, rs.getString(4));
                  pstInsert.setString(5, rs.getString(5));
                  pstInsert.setString(6, rs.getString(6));
                  pstInsert.setString(7, rs.getString(7));
                  pstInsert.setString(8, rs.getString(8));
                  pstInsert.setString(9, rs.getString(9));
                  pstInsert.executeUpdate();
                  pstInsert.close();
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
<title>Cube CBN EFASS System - SPMBR 1950</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!--mstheme--><link rel="stylesheet" href="poet1111.css">
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
    <td width="62">
    <b><font color="#336699" size="2">
    <a href='spmbrtoc.jsp'>SPMBR TOC</a> </font></b> </td>
    <td width="1074">
<p align="center"><b><font color="#336699" size="2">SEMI-ANNUAL RETURN ON MANAGEMENT AND TOP OFFICERS- SPMBR 1950</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
    <form action="spmbr1950$.jsp" method="post">
     <td><b><font color="#336699" size="2">&nbsp;New_Entries</font></b></td>&nbsp; <td>
     <b><font color="#336699" size="2">
     <input type="text" name="count" value="0" size="20"> </font></b>
	 </td>
	 <td>
     <b><font color="#336699" size="2">
     <input name="submit" value= "    OK    " type="submit" > </font></b> 
	</td>
	</form>
  </tr>

 	<tr>
 	<form action="spmbr1950customise.jsp" method="post">
 	<td align="center"><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All</font></b></td>
	<td align="center"><b><font color="#336699" size="2">S_NO</font></b></td>
	<td align="center"><b><font color="#336699" size="2">FULLNAMES</font></b></td>
	<td align="center"><b><font color="#336699" size="2">HOME ADDRESS</font></b></td>
	<td align="center"><b><font color="#336699" size="2">PHONE NUMBER</font></b></td>
	<td align="center"><b><font color="#336699" size="2">TITLE</font></b></td>
	<td align="center"><b><font color="#336699" size="2">BIRTH DATE</font></b></td>
	<td align="center"><b><font color="#336699" size="2">ACADEMIC / PROFESSIONAL QUALIFICATION</font></b></td>
	<td align="center"><b><font color="#336699" size="2">POSITION</font></b></td>
	<td align="center"><b><font color="#336699" size="2">DATE APPOINTED</font></b></td>
	</tr>
    <%
    	try
		{
    	String f1="", f2="", f3="", f4="", f5="", f6="", f7="", f8="";
    	
    	int ccn=cn;
    	for(int i=1;i<=cn;i++) 
    	{
    			Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from spmbr1950Data where S_NO='"+i+"'");
			Statement stspmbr1950EXIT_TYPE =cnn.createStatement();
			ResultSet rsspmbr1950EXIT_TYPE = stspmbr1950EXIT_TYPE.executeQuery("select * from spmbr1950EXIT_TYPE");
			Statement stspmbr1950STATE_CODE =cnn.createStatement();
			ResultSet rsspmbr1950STATE_CODE = stspmbr1950STATE_CODE.executeQuery("select * from spmbr1950STATE_CODE");

			while(rs.next())
			{
				f1=rs.getString(2);
				f2=rs.getString(3);
				f3=rs.getString(4);
				f4=rs.getString(5);
				f5=rs.getString(6);
				f6=rs.getString(7);
				f7=rs.getString(8);
				f8=rs.getString(9);
							
				out.println("<tr> ");
				out.println("<td><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'} del()\"</td>");
				out.println("<td><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
    				out.println("<td><input type=\"text\" name=\"f1" +i+ "\" value=\""+f1+"\"></td >");	
				out.println("<td><input type=\"text\" name=\"f2" +i+ "\" value=\""+f2+"\"></td >");				
				out.println("<td><input type=\"text\" name=\"f3" +i+ "\" value=\""+f3+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f4" +i+ "\" value=\""+f4+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f5" +i+ "\" value=\""+f5+"\"></td >");	
	    			out.println("<td><input type=\"text\" name=\"f6" +i+ "\" value=\""+f6+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f7" +i+ "\" value=\""+f7+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f8" +i+ "\" value=\""+f8+"\"></td >");
				out.println("</tr> ");

				
			}
    		
    	}
		out.println("</table>");
    	out.println("<input type=\"hidden\" name=\"cnt\" value="+ccn+">");
    	out.println("<table><tr><td><input name=\"submit\" value= \"    OK    \" type=\"submit\" onClick=\"return dele()\" ></td></tr></table>");
    	out.println("</p>");
		out.println("</form>");
		}
		catch(Exception e)
		{
			out.print(e.toString());
		}
		cnn.close();
    %>
     
	
	</td>
  </tr>
   
  
    
  </table>
  </center>
</div>

</div>

</div>

</body>

</html>