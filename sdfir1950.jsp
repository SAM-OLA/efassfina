<%@ page import="java.sql.*,cbnbas.sdfir.connect"%>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
	int cn=0;
	try
	{
		PreparedStatement pss = cnn.prepareStatement("delete * from SDFIR1950Data");
            pss.executeUpdate();
            pss.close();
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from sdfir1950");
		while(rs.next())
		{
			cn++;
			PreparedStatement pstInsert = cnn.prepareStatement("Insert into sdfir1950Data Values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                  pstInsert.setString(1, rs.getString(1));
                  pstInsert.setString(2, rs.getString(2));
                  pstInsert.setString(3, rs.getString(3));
                  pstInsert.setString(4, rs.getString(4));
                  pstInsert.setString(5, rs.getString(5));
                  pstInsert.setString(6, rs.getString(6));
                  pstInsert.setString(7, rs.getString(7));
                  pstInsert.setString(8, rs.getString(8));
                  pstInsert.setString(9, rs.getString(9));
                  pstInsert.setString(10, rs.getString(10));
                  pstInsert.setString(11, rs.getString(11));
                  pstInsert.setString(12, rs.getString(12));
                  pstInsert.setString(13, rs.getString(13));
                  pstInsert.setString(14, rs.getString(14));
                  pstInsert.setString(15, rs.getString(15));
                  pstInsert.setString(16, rs.getString(16));
                  pstInsert.setString(17, rs.getString(17));	
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
<title>Cube CBN EFASS System - SDFIR 1950</title>
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
    <a href='sdfirtoc.jsp'>SDFIR TOC</a> </font></b> </td>
    <td width="1074">
<p align="center"><b><font color="#336699" size="2">SEMI-ANNUAL RETURN ON MANAGEMENT AND TOP OFFICERS- SDFIR 1950</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
    <form action="sdfir1950$.jsp" method="post">
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
 	<form action="sdfir1950customise.jsp" method="post">
 	<td align="center"><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All</font></b></td>
	<td align="center"><b><font color="#336699" size="2">S_NO</font></b></td>
	<td align="center"><b><font color="#336699" size="2">CITY</font></b></td>
	<td align="center"><b><font color="#336699" size="2">STATE CODE</font></b></td>
	<td align="center"><b><font color="#336699" size="2">FULL NAME</font></b></td>
	<td align="center"><b><font color="#336699" size="2">LAST NAME</font></b></td>
	<td align="center"><b><font color="#336699" size="2">FIRST NAME</font></b></td>
	<td align="center"><b><font color="#336699" size="2">MIDDLE NAME</font></b></td>
	<td align="center"><b><font color="#336699" size="2">TITLE</font></b></td>
	<td align="center"><b><font color="#336699" size="2">ACADEMIC QUALIFICATION</font></b></td>
	<td align="center"><b><font color="#336699" size="2">BIRTH DATE</font></b></td>
	<td align="center"><b><font color="#336699" size="2">POSITION</font></b></td>
	<td align="center"><b><font color="#336699" size="2">TEL NO</font></b></td>
	<td align="center"><b><font color="#336699" size="2">FAX NO</font></b></td>
	<td align="center"><b><font color="#336699" size="2">EMAIL</font></b></td>
	<td align="center"><b><font color="#336699" size="2">APPOINTMENT DATE</font></b></td>
	<td align="center"><b><font color="#336699" size="2">DATE OF EXIT</font></b></td>
	<td align="center"><b><font color="#336699" size="2">EXIT TYPE</font></b></td>

	</tr>
    <%
    	try
		{
    	String f1="", f2="", f3="", f4="", f5="", f6="", f7="", f8="", f9="", f10="",f11="", f12="", f13="", f14="", f15="", f16="";
    	
    	int ccn=cn;
    	for(int i=1;i<=cn;i++) 
    	{
    			Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from sdfir1950Data where S_NO='"+i+"'");
			Statement stsdfir1950EXIT_TYPE =cnn.createStatement();
			ResultSet rssdfir1950EXIT_TYPE = stsdfir1950EXIT_TYPE.executeQuery("select * from sdfir1950EXIT_TYPE");
			Statement stsdfir1950STATE_CODE =cnn.createStatement();
			ResultSet rssdfir1950STATE_CODE = stsdfir1950STATE_CODE.executeQuery("select * from sdfir1950STATE_CODE");

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
				f9=rs.getString(10);
				f10=rs.getString(11);
				f11=rs.getString(12);
				f12=rs.getString(13);
				f13=rs.getString(14);
				f14=rs.getString(15);
				f15=rs.getString(16);
				f16=rs.getString(17);				
				out.println("<tr> ");
				out.println("<td><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'} del()\"</td>");
				out.println("<td><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
    				out.println("<td><input type=\"text\" name=\"f1" +i+ "\" value=\""+f1+"\"></td >");	
    				out.println("<td ><select name=\"f2" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rssdfir1950STATE_CODE.next())
					{
						String str1 = rssdfir1950STATE_CODE.getString(1);
						String str2 = rssdfir1950STATE_CODE.getString(2);
        					if(str2.startsWith(f2) || f2.equals(str1))
        					{
							out.println("<option selected value="+str1+">"+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value="+str1+">"+str2+"</option>");
        					}
        						out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td><input type=\"text\" name=\"f3" +i+ "\" value=\""+f3+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f4" +i+ "\" value=\""+f4+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f5" +i+ "\" value=\""+f5+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f6" +i+ "\" value=\""+f6+"\"></td >");	
	    			out.println("<td><input type=\"text\" name=\"f7" +i+ "\" value=\""+f7+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f8" +i+ "\" value=\""+f8+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f9" +i+ "\" value=\""+f9+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f10" +i+ "\" value=\""+f10+"\"></td >");
				out.println("<td><input type=\"text\" name=\"af11" +i+ "\" value=\""+f11+"\"></td >");	
				out.println("<td><input type=\"text\" name=\"af12" +i+ "\" value=\""+f12+"\"></td >");	
				out.println("<td><input type=\"text\" name=\"af13" +i+ "\" value=\""+f13+"\"></td >");	
				out.println("<td><input type=\"text\" name=\"af14" +i+ "\" value=\""+f14+"\"></td >");	
				out.println("<td><input type=\"text\" name=\"af15" +i+ "\" value=\""+f15+"\"></td >");	
    				out.println("<td ><select name=\"af16" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rssdfir1950EXIT_TYPE.next())
					{
						String str1 = rssdfir1950EXIT_TYPE.getString(1);
						String str2 = rssdfir1950EXIT_TYPE.getString(2);
        					if(f16.equals(str1))
        					{
							out.println("<option selected value="+str1+">"+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value="+str1+">"+str2+"</option>");
        					}
        						out.println("<br>");
					}
        			out.println("</select></td>");

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