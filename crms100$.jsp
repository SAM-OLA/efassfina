<%@ page import="java.sql.*, cbnbas.crms.connect" session="true" %>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from CRMS100");
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
<title>Cube CBN EFASS System - CRMS 100</title>
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
    <td width="73">
    <b><font color="#336699" size="2">
    <a href='crmstoc.jsp'>CRMS TOC</a> </font></b> </td>
    <td width="1063">
<p align="center"><b><font color="#336699" size="2">RETURN FOR INDIVIDUAL BORROWER CODE- CRMS 100</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

    <table width=1000 border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
    <form action="crms100$.jsp" method="post">
     <td width=250>&nbsp;<b><font color="#336699" size="2">New_Entries</font></b></td>&nbsp; <td>
     <input type="text" name="count" value="0" size="20">
	 </td>
	 <td>
     <input name="submit" value= "    OK    " type="submit" > 
	</form>
	</td>
  </tr>

 	<tr>
 	<form action="crms100customise.jsp" method="post">
 	<td width="250"><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All</font></b></td>
	<td ><b><font color="#336699" size="2">S_NO</font></b></td>
	<td ><b><font color="#336699" size="2">10001 Borrowers Full Name(M)</font></b></td>
	<td ><b><font color="#336699" size="2">10002 Short Name(M)</font></b></td>
	<td ><b><font color="#336699" size="2">10004 Nationality(Nigerian Foreigner)(M)</font></b></td>
	<td ><b><font color="#336699" size="2">10005 Residential address(M)</font></b></td>
	<td ><b><font color="#336699" size="2">10006 Permanent home address(M)</font></b></td>
	<td ><b><font color="#336699" size="2">10007 Postal address(O)</font></b></td>
	<td ><b><font color="#336699" size="2">10008 Date of birth(M)</font></b></td>
	<td ><b><font color="#336699" size="2">10009 State of origin(M)</font></b></td>
	<td ><b><font color="#336699" size="2">10010 Local Govt Area(O)</font></b></td>
	<td ><b><font color="#336699" size="2">11111 IDType</font></b></td>
	<td ><b><font color="#336699" size="2">10011 ID Details: International passport number Drivers License</font></b></td>
	<td ><b><font color="#336699" size="2">10012 Telephone number-OfficeResidential</font></b></td>
	<td ><b><font color="#336699" size="2">10013 e-mail address(O)</font></b></td>
	<td ><b><font color="#336699" size="2">10014 Profession/Occupation(M)</font></b></td>
	<td >10015 Qualification(s)(M)</td>
	<td >10016 Banker(s)(M)</td>
	<td >10017 Referee(s)(O)</td>
	</tr>
    <%
    	try
		{
    	String count=request.getParameter("count");
    	int cnt=Integer.parseInt(count);
    	String f1="", f2="", f3="", f4="", f5="", f6="", f7="", f8="", f9="", f10="",f11="", f12="", f13="", f14="", f15="", f16="", f17="";
    	out.println("<form action=\"sbr1905_dircustomise.jsp\" method=\"post\">");
    	for(int i=1;i<=cn;i++) 
    	{
    			Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from CRMS100 where S_NO='"+i+"'");
			Statement stIDType =cnn.createStatement();
			ResultSet rsIDType = stIDType.executeQuery("select * from CRMS100IDType");
			Statement stNationality =cnn.createStatement();
			ResultSet rsNationality = stNationality.executeQuery("select * from CRMS100Nationality");
			Statement stProfession =cnn.createStatement();
			ResultSet rsProfession = stProfession.executeQuery("select * from CRMS100Profession");
			Statement stState =cnn.createStatement();
			ResultSet rsState = stState.executeQuery("select * from CRMS100STATECODES");

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
				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'}\"</td>");
    				out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
    				out.println("<td ><input type=\"text\" name=\"f1" +i+ "\" value=\""+f1+"\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f2" +i+ "\" value=\""+f2+"\"></td >");
				out.println("<td ><select name=\"f3" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsNationality.next())
					{
						String str1 = rsNationality.getString(1);
						String str2 = rsNationality.getString(2);
        					if(f3.equals(str1))
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

				out.println("<td ><input type=\"text\" name=\"f4" +i+ "\" value=\""+f4+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f5" +i+ "\" value=\""+f5+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f6" +i+ "\" value=\""+f6+"\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f7" +i+ "\" value=\""+f7+"\"></td >");
				out.println("<td ><select name=\"f8" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsState.next())
					{
						String str1 = rsState.getString(1);
						String str2 = rsState.getString(2);
        					if(f8.equals(str2))
        					{
							out.println("<option selected value=\""+str2+"\">"+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value=\""+str2+"\">"+str2+"</option>");
        					}
        						out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><input type=\"text\" name=\"f9" +i+ "\" value=\""+f9+"\"></td >");
				out.println("<td ><select name=\"f10" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsIDType.next())
					{
						String str1 = rsIDType.getString(1);
						String str2 = rsIDType.getString(2);
        					if(f10.equals(str1))
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

				out.println("<td ><input type=\"text\" name=\"af11" +i+ "\" value=\""+f11+"\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"af12" +i+ "\" value=\""+f12+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"af13" +i+ "\" value=\""+f13+"\"></td >");
				out.println("<td ><select name=\"af14" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsProfession.next())
					{
						String str1 = rsProfession.getString(1);
						String str2 = rsProfession.getString(2);
        					if(f14.equals(str1))
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

				out.println("<td ><input type=\"text\" name=\"af15" +i+ "\" value=\""+f15+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"af16" +i+ "\" value=\""+f16+"\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"af17" +i+ "\" value=\""+f17+"\"></td >");
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
				Statement stIDType =cnn.createStatement();
				ResultSet rsIDType = stIDType.executeQuery("select * from CRMS100IDType");
				Statement stNationality =cnn.createStatement();
				ResultSet rsNationality = stNationality.executeQuery("select * from CRMS100Nationality");
				Statement stProfession =cnn.createStatement();
				ResultSet rsProfession = stProfession.executeQuery("select * from CRMS100Profession");
				Statement stState =cnn.createStatement();
				ResultSet rsState = stState.executeQuery("select * from CRMS100STATECODES");

				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'}\"</td>");
    				out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
    				out.println("<td ><input type=\"text\" name=\"f1" +i+ "\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f2" +i+ "\"></td >");
				out.println("<td ><select name=\"f3" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsNationality.next())
					{
						String str1 = rsNationality.getString(1);
						String str2 = rsNationality.getString(2);
        					out.println("<option value="+str1+">"+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><input type=\"text\" name=\"f4" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f5" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f6" +i+ "\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f7" +i+ "\"></td >");
				out.println("<td ><select name=\"f8" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsState.next())
					{
						String str1 = rsState.getString(1);
						String str2 = rsState.getString(2);
        					out.println("<option value=\""+str2+"\">"+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><input type=\"text\" name=\"f9" +i+ "\"></td >");
				out.println("<td ><select name=\"f10" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsIDType.next())
					{
						String str1 = rsIDType.getString(1);
						String str2 = rsIDType.getString(2);
        					out.println("<option value="+str1+">"+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");
				out.println("<td ><input type=\"text\" name=\"af11" +i+ "\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"af12" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"af13" +i+ "\"></td >");
				out.println("<td ><select name=\"af14" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsProfession.next())
					{
						String str1 = rsProfession.getString(1);
						String str2 = rsProfession.getString(2);
        					out.println("<option value="+str1+">"+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><input type=\"text\" name=\"af15" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"af16" +i+ "\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"af17" +i+ "\"></td >");
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