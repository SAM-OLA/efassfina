<!--
@author D & T Solutions
-->

<%@ page import="java.sql.*, java.util.*, cbnbas.mpmbr.connect"%>
<%
	String code =request.getParameter("target");
	String descc ="";
	StringTokenizer stTok = new StringTokenizer(code, ",");
	while (stTok.hasMoreTokens())
	{
		code = stTok.nextToken();
		descc = stTok.nextToken();
	}
	session.putValue("ITEMCODE",code.trim());
	session.putValue("ITEMDESC",descc);

	connect c = new connect();
	Connection cnn = c.connectMethod();
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from mpmbr383Data where ITEMCODE ='"+code+"'");
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
<script type="text/javascript" src="getatoll.js" tppabs="atoll.js"></script>
<link href="getstyles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Cube CBN EFASS System - MPMBR 383</title>
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
<p align="center"><b><font color="#336699" size="2">MPMBR 383 - BREAKDOWN OF OTHER LIABILITIES</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>
    
    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
        <form action="mpmbr383$.jsp" method="post" name="form383">
     <td><b><font color="#336699" size="2">&nbsp;New_Entries</font></b></td>&nbsp; <td>
     <b><font color="#336699" size="2">
     <input type="text" name="count" value="0" size="20"> </font></b>
	 </td>
		 <td>
     <b><font color="#336699" size="2">
     <input name="submit" value= "    OK    " type="submit" > </font></b> 
	</td>
	<td>
	<%
	out.println("<input type=\"hidden\" name=\"code\" value="+code+">");
	out.println("<input type=\"hidden\" name=\"descc\" value=\""+descc+"\">");

	%>
	</td>

	</form>
  </tr>

 	<tr>
 	<form action="mpmbr383Customise.jsp" method="post">
 	<td><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All</font></b></td>
	<td align="center"><b><font color="#336699" size="2">S_NO</font></b></td>
	<td align="center"><b><font color="#336699" size="2">ITEM DESCREIPTION</font></b></td>
	<td align="center"><b><font color="#336699" size="2">AMOUNT</font></b></td>

	
	
	
	</tr>
    <%
    	try
		{
    	String f1="", f2="", f3="";    	
    	int ccn=cn-1;
    	//for(int i=1;i<cn;i++) 
    	//{
    			Statement st2a=cnn.createStatement();
			ResultSet rsa=st2a.executeQuery("SELECT * FROM MPMBR383Data where S_NO <> 'T_99999' and ITEMCODE='"+code+"'");
			int i=1;

			while(rsa.next())
			{
				f1=rsa.getString(1);
				f2=rsa.getString(2);
				f3=rsa.getString(3);
					


				out.println("<tr> ");
				out.println("<td><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'} del()\"</td>");
				out.println("<td><input type=\"text\" readonly name=\"count" +i+ "\" value="+f1+ "></td >");
				out.println("<td><input type=\"text\" name=\"f2" +i+ "\" size=\"62\"  value=\""+f2+"\"></td >");	
				out.println("<td><input type=\"text\" name=\"f3" +i+ "\" value=\""+f3+"\"></td >");	
				out.println("</tr> ");
				i++;
				
			}
    		
    	//}
    		String ss1="";
    		Statement st2=cnn.createStatement();
		ResultSet rs=st2.executeQuery("select * from MPMBR383Data where S_NO='T_99999' and ITEMCODE ='"+code+"'");
		while(rs.next())
		{
			ss1=String.valueOf(rs.getString(3));
		}
	    	out.println("<tr>");	
	    	out.println("<td align=\"left\"><input type=\"text\" readonly ></td >");
		out.println("<td><input type=\"text\" readonly value=\"T_99999\" name=\"total1\"></td >");
		out.println("<td><input type=\"text\" name=\"total2\"   size=\"62\"  value=\""+descc+"\"></td >");
		out.println("<td><input type=\"text\" name=\"total3\" value="+ss1+"></td >");
		out.println("</tr>");
		
		out.println("</table>");
		out.print("<input type=\"text\" name=\"code\" value="+code+">");
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