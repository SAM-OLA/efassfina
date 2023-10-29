<%@ page import="java.sql.*,cbnbas.sdfir.connect"%>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from sdfir1920");
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
<title>CBN EFASS System - SDFIR 1920</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!--mstheme--><link rel="stylesheet" href="file:///C:/DOCUME~1/FAVOUR~1/LOCALS~1/Temp/FrontPageTempDir/mstheme/poetic/poet1111.css">
<meta name="Microsoft Theme" content="poetic 1111, default">
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
    <a href='sdfirtoc.jsp'>SDFIR TOC</a> </font></b> </td>
    <td width="1074">
<p align="center"><b><font color="#336699" size="2">SEMI-ANNUAL RETURN ON BRANCH NETWORK- SDFIR 1920</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

    <table width=1000 border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
    <form action="sdfir1920$.jsp" method="post">
     <td width=250><b><font color="#336699" size="2">&nbsp;New_Entries</font></b></td>&nbsp; <td>
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
 	<form action="sdfir1920customise.jsp" method="post">
 	<td width="250" align="center">
    <p align="left"><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">S_NO</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">BRANCH CODE</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">BRANCH NAME</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">BRANCH ADDRESS</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">CITY</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">STATE CODE</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">TEL NO</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">FAX</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">LOCAL GOVT</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">TYPE URF</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">DATE OPENED</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">TOTAL NO OF DEPOSITORS</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">TOTAL DEPOSITS</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">TOTAL CREDIT</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">TOTAL ASSETS</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">TOTAL NO OF DEBTORS</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">TOTAL NPA</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">LAST CBN EXAM DATE</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">CBN TYPE OF EXAMINATION</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">NDIC LAST EXAM DATE</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">TYPE OF EXAMINATION (NDIC)</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">NO OF SNRSTAFF</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">NO OF JNRSTAFF</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">DATE CLOSED</font></b></td>
	
	
	</tr>
    <%
    	try
		{
    	String count=request.getParameter("count");
    	int cnt=Integer.parseInt(count);
    	String f1="", f2="", f3="", f4="", f5="", f6="", f7="", f8="", f9="", f10="",f11="", f12="", f13="", f14="", f15="", f16="", f17="", f18="", f19="", f20="",f21="", f22="", f23="";
    	out.println("<form action=\"sdfir1920customise.jsp\" method=\"post\">");
    	for(int i=1;i<=cn;i++) 
    	{
    			Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from sdfir1920 where S_NO='"+i+"'");
			Statement st1910TYPE_U_R_F =cnn.createStatement();
			ResultSet rs1910TYPE_U_R_F = st1910TYPE_U_R_F.executeQuery("select * from sdfir1910TYPE_U_R_F");

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
				out.println("<tr> ");
				out.println("<td><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'}\"</td>");
	    			out.println("<td><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
    				out.println("<td><input type=\"text\" name=\"f1" +i+ "\" value=\""+f1+"\"></td >");	
    				out.println("<td><input type=\"text\" name=\"f2" +i+ "\" value=\""+f2+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f3" +i+ "\" value=\""+f3+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f4" +i+ "\" value=\""+f4+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f5" +i+ "\" value=\""+f5+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f6" +i+ "\" value=\""+f6+"\"></td >");	
    				out.println("<td><input type=\"text\" name=\"f7" +i+ "\" value=\""+f7+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f8" +i+ "\" value=\""+f8+"\"></td >");
				out.println("<td><select name=\"f9" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rs1910TYPE_U_R_F.next())
					{
						String str1 = rs1910TYPE_U_R_F.getString(1);
						String str2 = rs1910TYPE_U_R_F.getString(2);
        					if(f9.equals(str1))
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

				out.println("<td ><input type=\"text\" name=\"f10" +i+ "\" value=\""+f10+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"af11" +i+ "\" value=\""+f11+"\"></td >");	
	    			out.println("<td ><input type=\"text\" name=\"af12" +i+ "\" value=\""+f12+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"af13" +i+ "\" value=\""+f13+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"af14" +i+ "\" value=\""+f14+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"af15" +i+ "\" value=\""+f15+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"af16" +i+ "\" value=\""+f16+"\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"af17" +i+ "\" value=\""+f17+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"af18" +i+ "\" value=\""+f18+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"af19" +i+ "\" value=\""+f19+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"af20" +i+ "\" value=\""+f20+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"bf21" +i+ "\" value=\""+f21+"\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"bf22" +i+ "\" value=\""+f22+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"bf23" +i+ "\" value=\""+f23+"\"></td >");
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
				Statement st1910TYPE_U_R_F =cnn.createStatement();
				ResultSet rs1910TYPE_U_R_F = st1910TYPE_U_R_F.executeQuery("select * from sdfir1910TYPE_U_R_F");
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
				out.println("<td><select name=\"f9" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rs1910TYPE_U_R_F.next())
					{
						String str1 = rs1910TYPE_U_R_F.getString(1);
						String str2 = rs1910TYPE_U_R_F.getString(2);
        					out.println("<option value="+str1+">"+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><input type=\"text\" name=\"f10" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"af11" +i+ "\"></td >");	
	    			out.println("<td ><input type=\"text\" name=\"af12" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"af13" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"af14" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"af15" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"af16" +i+ "\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"af17" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"af18" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"af19" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"af20" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"bf21" +i+ "\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"bf22" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"bf23" +i+ "\"></td >");
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