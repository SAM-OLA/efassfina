<%@ page import="java.sql.*,cbnbas.spmbr.connect"%>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from spmbr1910A");
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
<!--mstheme--><link rel="stylesheet" href="file:///C:/DOCUME~1/FAVOUR~1/LOCALS~1/Temp/FrontPageTempDir/mstheme/poetic/poet1111.css">
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
    <td width="62">
    <b><font color="#336699" size="2">
    <a href='spmbrtoc.jsp'>SPMBR TOC</a> </font></b> </td>
    <td width="1074">
<p align="center"><b><font color="#336699" size="2">SEMI-ANNUAL RETURN ON CORPORATE PROFILE <br>Head Office Details | Branches and Staff Details - SPMBR 1910 -part 1</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
    <form action="spmbr1910A$.jsp" method="post">
     <td><b><font color="#336699" size="2">&nbsp;New_Entries</font></b></td>&nbsp; 
    <td>
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
 	<form action="spmbr1910Acustomise.jsp" method="post">
 	<td align="center" valign="bottom"><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All&nbsp;
    </font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">S_NO</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">NAME OF BANK</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">NO OF DIRECTORS</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">HEAD OFFICE ADDRESS</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">TOWN/CITY</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">STATE CODE</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">POST CODE</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">TEL NUMBER</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">WEBSITE ADDRESS></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">CONTACT EMAIL ADDRESS</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">RC NUMBER</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">LICENCE_NO</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">TAX IDENTIFICATION NUMBER</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">NO OF BRANCHES APPROVED</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">NO OF BRANCHES IN OPERATIONS</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">NO OF UNUTILIZED APPROVAL</font></b></td>
	<td align="center" valign="bottom"><font SIZE="2" color="#336699"><b>BRANCH ADDRESS</b></font></td>
	<td align="center" valign="bottom"><font SIZE="2" color="#336699"><b>STATE CODE</b></font></td>
	<td align="center" valign="bottom"><font SIZE="2" color="#336699"><b>POST CODE</b></font></td>
	<td align="center" valign="bottom"><font SIZE="2" color="#336699"><b>TEL NUMBER</b></font></td>
	<td align="center" valign="bottom"><font SIZE="2" color="#336699"><b>CONTACT EMAIL ADDRESS</b></font></td>
	<td align="center" valign="bottom"><font SIZE="2" color="#336699"><b>EXECUTIVE</b></font></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">SENIOR</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">JUNIOR</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">CONTRACT</font></b></td>

	

	</tr>
    <%
    	try
		{
    	String count=request.getParameter("count");
    	int cnt=Integer.parseInt(count);
    	String f1="", f2="", f3="", f4="", f5="", f6="", f7="", f8="", f9="", f10="",f11="", f12="", f13="", f14="", f15="", f16="", f17="", f18="", f19="", f20="",f21="", f22="", f23="", f24="";
    	out.println("<form action=\"spmbr1905_dircustomise.jsp\" method=\"post\">");
    	for(int i=1;i<=cn;i++) 
    	{
	    		Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from spmbr1910A where S_NO='"+i+"'");
			Statement stspmbr1910INST_TYPE =cnn.createStatement();
			ResultSet rsspmbr1910INST_TYPE = stspmbr1910INST_TYPE.executeQuery("select * from spmbr1910INST_TYPE");
			Statement st1910STATUS =cnn.createStatement();
			ResultSet rs1910STATUS = st1910STATUS.executeQuery("select * from spmbr1910STATUS");
			Statement st1910TYPE_U_R_F =cnn.createStatement();
			ResultSet rs1910TYPE_U_R_F = st1910TYPE_U_R_F.executeQuery("select * from spmbr1910TYPE_U_R_F");
			Statement st1910TYPE_OF_EXAMINATIONCBN =cnn.createStatement();
			ResultSet rs1910TYPE_OF_EXAMINATIONCBN = st1910TYPE_OF_EXAMINATIONCBN.executeQuery("select * from SpmbR1910TYPE_OF_EXAMINATIONCBN");


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
				f17=rs.getString(18);
				f18=rs.getString(19);
				f19=rs.getString(20);
				f20=rs.getString(21);
				f21=rs.getString(22);
				f22=rs.getString(23);
				f23=rs.getString(24);
				f24=rs.getString(25);

				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'}\"</td>");
 	   			out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
    				out.println("<td ><input type=\"text\" name=\"f1" +i+ "\" value=\""+f1+"\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f2" +i+ "\" value=\""+f2+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f3" +i+ "\" value=\""+f3+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f4" +i+ "\" value=\""+f4+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f5" +i+ "\" value=\""+f5+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f6" +i+ "\" value=\""+f6+"\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f7" +i+ "\" value=\""+f7+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f8" +i+ "\" value=\""+f8+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f9" +i+ "\" value=\""+f9+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f10" +i+ "\" value=\""+f10+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f11" +i+ "\" value=\""+f11+"\"></td >");
    				out.println("<td><input type=\"text\" name=\"f12" +i+ "\" value=\""+f12+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f13" +i+ "\" value=\""+f13+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f14" +i+ "\" value=\""+f14+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f15" +i+ "\" value=\""+f15+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f16" +i+ "\" value=\""+f16+"\"></td>");	
	    			out.println("<td><input type=\"text\" name=\"f17" +i+ "\" value=\""+f17+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f18" +i+ "\" value=\""+f18+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f19" +i+ "\" value=\""+f19+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f20" +i+ "\" value=\""+f20+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f21" +i+ "\" value=\""+f21+"\"></td>");
    				out.println("<td><input type=\"text\" name=\"f22" +i+ "\" value=\""+f22+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f23" +i+ "\" value=\""+f23+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f24" +i+ "\" value=\""+f24+"\"></td>");
    				out.println("</tr> ");

			}
    		
    	}
    	int ccn=cnt+cn;
    	int ccn2=ccn;
    	int cv=cn+1;
    	int cv2=ccn+1;
    	if(cn==0)
    	{
    		cn=1;
    		ccn=ccn+1;
    		ccn2=ccn2;
    		cv=1;
    		cv2=ccn;
    	}
    	for(int i=cv;i<cv2;i++) 
    	{
				Statement stspmbr1910INST_TYPE =cnn.createStatement();
				ResultSet rsspmbr1910INST_TYPE = stspmbr1910INST_TYPE.executeQuery("select * from spmbr1910INST_TYPE");
				Statement st1910STATUS =cnn.createStatement();
				ResultSet rs1910STATUS = st1910STATUS.executeQuery("select * from spmbr1910STATUS");
				Statement st1910TYPE_U_R_F =cnn.createStatement();
				ResultSet rs1910TYPE_U_R_F = st1910TYPE_U_R_F.executeQuery("select * from spmbr1910TYPE_U_R_F");
				Statement st1910TYPE_OF_EXAMINATIONCBN =cnn.createStatement();
				ResultSet rs1910TYPE_OF_EXAMINATIONCBN = st1910TYPE_OF_EXAMINATIONCBN.executeQuery("select * from SpmbR1910TYPE_OF_EXAMINATIONCBN");


				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'}\"</td>");
		    		out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
    				out.println("<td ><input type=\"text\" name=\"f1" +i+ "\"></td >");	
	    			out.println("<td ><input type=\"text\" name=\"f2" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f3" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f4" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f5" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f6" +i+ "\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f7" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f8" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f9" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f10" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f11" +i+ "\"></td >");
    				out.println("<td ><input type=\"text\" name=\"f12" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f13" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f14" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f15" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f16" +i+ "\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f17" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f18" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f19" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f20" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f21" +i+ "\"></td >");
	    			out.println("<td ><input type=\"text\" name=\"f22" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f23" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f24" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f25" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f26" +i+ "\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f27" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f28" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f29" +i+ "\"></td >");
			 	out.println("</tr> ");
    	}
		out.println("</table>");
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