<%@ page import="java.sql.*,cbnbas.spmbr.connect"%>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from spmbr1910C");
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
<title>Cube CBN EFASS System - SPMBR 1910</title>
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
    <a href="spmbrtocView.jsp">SPMBR TOC</a> </font></b> </td>
    <td width="1074">
<p align="center"><b><font color="#336699" size="2">SEMI-ANNUAL RETURN ON CORPORATE PROFILE <br>ShareHolding Details - SPMBR 1910 -part 3</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    

 	<tr>
 	<form action="spmbr1910Ccustomise.jsp" method="get">
 	<td align="center" valign="bottom"><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All&nbsp;
    </font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">S_NO</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">TOTAL ORDINARY SHARES</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">PERCENTAGE OF INDIVIDUAL INVESTMENT</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">PERCENTAGE OF INSTITUTIONAL INVESTMENT</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">PERCENTAGE OF FED GOVT. INVESTMENT</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">PERCENTAGE OF STATE GOVT. INVESTMENT</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">PERCENTAGE OF CORPORATE INVESTMENT</font></b></td>

	

	</tr>
    <%
    	try
		{
    	String f1="", f2="", f3="", f4="", f5="", f6="";
    	
    	int ccn=cn;
    	for(int i=1;i<=cn;i++) 
    	{
    			Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from spmbr1910C where S_NO='"+i+"'");
			Statement stspmbr1910INST_TYPE =cnn.createStatement();
			ResultSet rsspmbr1910INST_TYPE = stspmbr1910INST_TYPE.executeQuery("select * from spmbr1910INST_TYPE");
			Statement st1910STATUS =cnn.createStatement();
			ResultSet rs1910STATUS = st1910STATUS.executeQuery("select * from spmbr1910STATUS");
			Statement st1910TYPE_OF_EXAMINATIONCBN =cnn.createStatement();
			ResultSet rs1910TYPE_OF_EXAMINATIONCBN = st1910TYPE_OF_EXAMINATIONCBN.executeQuery("select * from spmbr1910TYPE_OF_EXAMINATIONCBN");
			Statement st1910TYPE_OF_EXAMINATIONNDIC =cnn.createStatement();
			ResultSet rs1910TYPE_OF_EXAMINATIONNDIC = st1910TYPE_OF_EXAMINATIONNDIC.executeQuery("select * from spmbr1910TYPE_OF_EXAMINATIONNDIC");
			Statement st1910TYPE_U_R_F =cnn.createStatement();
			ResultSet rs1910TYPE_U_R_F = st1910TYPE_U_R_F.executeQuery("select * from spmbr1910TYPE_U_R_F");
			


			while(rs.next())
			{
				f1=rs.getString(2);
				f2=rs.getString(3);
				f3=rs.getString(4);
				f4=rs.getString(5);
				f5=rs.getString(6);
				f6=rs.getString(7);
				
				out.println("<tr> ");
				out.println("<td><input type=\"checkbox\" readonly name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'} del()\"</td>");
				out.println("<td><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
	    			out.println("<td><input type=\"text\" name=\"f1" +i+ "\" value=\""+f1+"\"></td>");	
    				out.println("<td><input type=\"text\" name=\"f2" +i+ "\" value=\""+f2+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f3" +i+ "\" value=\""+f3+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f4" +i+ "\" value=\""+f4+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f5" +i+ "\" value=\""+f5+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f6" +i+ "\" value=\""+f6+"\"></td>");	
    				out.println("</tr> ");

				
			}
    		
    	}
		out.println("</table>");
    	out.println("<input type=\"hidden\" name=\"cnt\" value="+ccn+">");
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