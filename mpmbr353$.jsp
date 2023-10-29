<!--
@author D & T Solutions
-->
<%@ page import="java.sql.*, cbnbas.mpmbr.connect"%>
<%
		String code =request.getParameter("code");
		String descc =request.getParameter("descc");

		connect c = new connect();
   		Connection cnn = c.connectMethod();
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from mpmbr353Data where ITEMCODE ='"+code+"'");
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
<title>Cube CBN EFASS System - MPMBR 353</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="Microsoft Theme" content="poetic 1111, default">
</head>
<SCRIPT language="JavaScript1.2">
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
<p align="center"><b><font color="#336699" size="2">MPMBR 353 - BREAKDOWN OF INTANGIBLE ASSETS</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>
    
    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
        <form action="mpmbr353$.jsp" method="get" name="form353">
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
 	<form action="mpmbr353Customise.jsp" method="post">
 	<td><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All</font></b></td>
	<td align="center"><b><font color="#336699" size="2">S_NO</font></b></td>
	<td align="center"><b><font color="#336699" size="2">ITEM DESCRIPTION</font></b></td>
	<td align="center"><b><font color="#336699" size="2">AMOUNT (=N=))</font></b></td>
	<td align="center"><b><font color="#336699" size="2">REMARKS</font></b></td>

	
	
	
	</tr>
    <%

    	try
		{
    	String count=request.getParameter("count");
    	int cnt=Integer.parseInt(count);
    	String f1="", f2="", f3="", f4="";
    	out.println("<form action=\"sbr1905_dircustomise.jsp\" method=\"post\">");

		
	//for(int i=1;i<cn;i++) 
    	//{
			int i=1;
    			Statement st2a=cnn.createStatement();
			ResultSet rsa=st2a.executeQuery("SELECT * FROM MPMBR353Data where S_NO <> 'T_99999' and ITEMCODE ='"+code+"'");

			
			while(rsa.next())
			{
				f1=rsa.getString(1);
				f2=rsa.getString(2);
				f3=rsa.getString(3);
				f4=rsa.getString(4);						


				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'} del()\"</td>");
				out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+f1+ "></td >");
	    		out.println("<td ><input type=\"text\"  size=\"62\"  name=\"f2" +i+ "\" value=\""+f2+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f3" +i+ "\" value=\""+f3+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f4" +i+ "\" value=\""+f4+"\"></td >");					
				out.println("</tr> ");
				i++;
				
			}

    		
    	//}
    	int ccn=cnt+cn;
    	int ccn2=ccn-1;
    	if(cn==0)
    	{
    		cn=1;
    		ccn=ccn+1;
    		ccn2=ccn2+1;
    	}
    	for(int j=cn;j<ccn;j++) 
    	{
				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +j+ "\" onClick=\"if (this.checked) {this.form.chec"+j+".value='1'} else {this.form.chec"+j+".value='0'} del()\"</td>");
				out.println("<td ><input type=\"text\" readonly name=\"count" +j+ "\" value="+j+ "></td >");
	    		out.println("<td ><input type=\"text\" name=\"f2" +j+ "\" size=\"62\"  value=\"0\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f3" +j+ "\"  value=\"0\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f4" +j+ "\"  value=\"0\"></td >");					
				out.println("</tr> ");

    	}
		String ss1="";
    		Statement st2=cnn.createStatement();
		ResultSet rs=st2.executeQuery("select * from mpmbr353Data where S_NO='T_99999' and ITEMCODE ='"+code+"'");
		while(rs.next())
		{
			ss1=String.valueOf(rs.getString(3));
		}
	    	out.println("<tr >");	
	    	out.println("<td align=\"left\"><input type=\"text\" readonly ></td >");
			out.println("<td><input type=\"text\" readonly value=\"T_99999\" name=\"total1\"></td >");
			out.println("<td><input type=\"text\" name=\"total2\"   size=\"62\"  value=\""+descc+"\"></td >");
			out.println("<td><input type=\"text\" name=\"total3\" value="+ss1+"></td >");
			out.println("<td><input type=\"text\" name=\"total4\" value=\""+descc+"\"></td >");
			out.println("</tr>");
		
		out.println("</table>");
		out.println("<input type=\"text\" name=\"code\" value="+code+">");
	    	out.println("<input type=\"hidden\" name=\"cnt\" value="+ccn2+">");
    		out.println("<table><tr><td><input name=\"submit\" value= \"SUBMIT\" type=\"submit\"></td></tr></table>");
	    	out.println("</p>");
		out.println("</form>");
		}
		catch(Exception e)
		{
			out.print(e.toString());
		}
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