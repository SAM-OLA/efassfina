<%@ page import="java.sql.*, cbnbas.crms.connect" session="true" %>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from crms201");
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
<title>Cube CBN EFASS System - CRMS 201</title>
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
    <td width="73">
    <b><font color="#336699" size="2">
    <a href='crmstoc.jsp'>CRMS TOC</a> </font></b> </td>
    <td width="1063">
<p align="center"><b><font color="#336699" size="2">RETURN FOR DIRECTORS OF CORPORATE BORROWER-FORM - CRMS 201</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

    <table width=1000 border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
    <form action="crms201$.jsp" method="post">
     <td width=250>&nbsp;<b><font color="#336699" size="2">New_Entries</font></b></td>&nbsp; <td>
     <input type="text" name="count" value="0" size="20">
	 </td>
	 <td>
     <input name="submit" value= "    OK    " type="submit" > 
	</td>
	</form>
  </tr>

 	<tr>
 	<form action="crms201customise.jsp" method="post">
 	<td width="250" align="center"><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All</font></b></td>
	<td align="center"><b><font color="#336699" size="2">S_NO</font></b></td>
	<td align="center"><b><font color="#336699" size="2">20101Directors Name (surname first) (M)</font></b></td>
	<td align="center"><b><font color="#336699" size="2">10002Short name (M)</font></b></td>
	<td align="center"><b><font color="#336699" size="2">20103Equity ownership (%) (M)</font></b></td>
	<td align="center"><b><font color="#336699" size="2">20104Position held/status (M)</font></b></td>
	<td align="center"><b><font color="#336699" size="2">20105Liability as guarantor (N000 (M)</font></b></td>
	<td align="center"><b><font color="#336699" size="2">20106Nationality (Nigerian/Foreigner) (M)</font></b></td>
	<td align="center"><b><font color="#336699" size="2">20107Residential address (M)</font></b></td>
	<td align="center"><b><font color="#336699" size="2">20108Permanent  home address (M)</font></b></td>
	<td align="center"><b><font color="#336699" size="2">20109Postal address (O)</font></b></td>
	<td align="center"><b><font color="#336699" size="2">20110Date of birth  (M)</font></b></td>
	<td align="center"><b><font color="#336699" size="2">20111State of origin  (M)</font></b></td>
	<td align="center"><b><font color="#336699" size="2">20112Local Govt Area (O)</font></b></td>
	<td align="center"><b><font color="#336699" size="2">11111ID Type</font></b></td>
	<td align="center"><b><font color="#336699" size="2">20113ID DETAILS: International passport number , etc (M)</font></b></td>
	<td align="center"><b><font color="#336699" size="2">20114Telephone number (O)</font></b></td>
	<td align="center"><b><font color="#336699" size="2">20115E-mail address (O)</font></b></td>
	<td align="center"><b><font color="#336699" size="2">20116Profession/Occupation (M)</font></b></td>
	</tr>
    <%
    	try
		{
    	String f1="", f2="", f3="", f4="", f5="", f6="", f7="", f8="", f9="", f10="",f11="", f12="", f13="", f14="", f15="", f16="", f17="",f18="";
    	
    	int ccn=cn;
    	for(int i=1;i<=cn;i++) 
    	{
    			Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from crms201 where S_NO='"+i+"'");
			Statement stIDType =cnn.createStatement();
			ResultSet rsIDType = stIDType.executeQuery("select * from CRMS201IDType");
			Statement stNationality =cnn.createStatement();
			ResultSet rsNationality = stNationality.executeQuery("select * from CRMS201Nationality");
			Statement stProfession =cnn.createStatement();
			ResultSet rsProfession = stProfession.executeQuery("select * from CRMS201Profession");
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
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'} del()\"</td>");
				out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
	    			out.println("<td ><input type=\"text\" name=\"f1" +i+ "\" value=\""+f1+"\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f2" +i+ "\" value=\""+f2+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f3" +i+ "\" value=\""+f3+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f4" +i+ "\" value=\""+f4+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f5" +i+ "\" value=\""+f5+"\"></td >");
				out.println("<td ><select name=\"f6" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsNationality.next())
					{
						String str1 = rsNationality.getString(1);
						String str2 = rsNationality.getString(2);
        					if(f6.equals(str1))
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

    				out.println("<td ><input type=\"text\" name=\"f7" +i+ "\" value=\""+f7+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f8" +i+ "\" value=\""+f8+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f9" +i+ "\" value=\""+f9+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f10" +i+ "\" value=\""+f10+"\"></td >");
				out.println("<td ><select name=\"af11" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsState.next())
					{
						String str1 = rsState.getString(1);
						String str2 = rsState.getString(2);
        					if(f11.equals(str2))
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

    				out.println("<td ><input type=\"text\" name=\"af12" +i+ "\" value=\""+f12+"\"></td >");
				out.println("<td ><select name=\"af13" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsIDType.next())
					{
						String str1 = rsIDType.getString(1);
						String str2 = rsIDType.getString(2);
        					if(f13.equals(str1))
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

				out.println("<td ><input type=\"text\" name=\"af14" +i+ "\" value=\""+f14+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"af15" +i+ "\" value=\""+f15+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"af16" +i+ "\" value=\""+f16+"\"></td >");	
    				out.println("<td ><select name=\"af17" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsProfession.next())
					{
						String str1 = rsProfession.getString(1);
						String str2 = rsProfession.getString(2);
        					if(f17.equals(str2))
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