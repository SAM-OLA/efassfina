<!--
@author D & T Solutions
-->
<%@ page import="java.sql.*, cbnbas.qdfir.connect" session="true"%>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from qdfir921");
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
<title>Cube CBN EFASS System - QDFIR 921</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">







<!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
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
    <a href='qdfirtoc.jsp'>QDFIR TOC</a> </font></b> </td>
    <td width="1063">
<p align="center"><b><font color="#336699" size="2">QDFIR 921 - RETURNS ON FRAUD AND FORGERIES</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

    <table width=1000 border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
    <form action="qdfir921$.jsp" method="post">
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
 	<form action="qdfir921Customise.jsp" method="post">
 	<td width="250" valign="bottom"><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All</font></b></td>
	<td valign="bottom" align="center" ><b><font color="#336699" size="2">S_NO</font></b></td>
	<td valign="bottom" align="center" ><b><font color="#336699" size="2">BRANCH<br>CODE</font></b></td>
	<td valign="bottom" align="center" ><b><font color="#336699" size="2">BRANCH<br>NAME</font></b></td>
	<td valign="bottom" align="center" ><b><font color="#336699" size="2">FRAUD<br>TYPE CODE</font></b></td>
	<td valign="bottom" align="center" ><b><font color="#336699" size="2">DATE FRAUD<br>WAS COMMITED</font></b></td>
	<td valign="bottom" align="center" ><b><font color="#336699" size="2">AMOUNT<br>INVOLVED</font></b></td>
	<td valign="bottom" align="center" ><b><font color="#336699" size="2">SUCCESSFUL</font></b></td>
	<td valign="bottom" align="center" ><b><font color="#336699" size="2">PARTIAL SUCCESSFUL</font></b></td>
	<td valign="bottom" align="center" ><b><font color="#336699" size="2">FRUSTRATED</font></b></td>
	<td align="center" valign="bottom" ><b><font color="#336699" size="2">ACTUAL LOSS<br>IN NAIRA</font></b></td>
	<td align="center" valign="bottom" ><b><font color="#336699" size="2">BRIEF<br>DESCRIPTION</font></b></td>
	<td align="center" valign="bottom" ><b><font color="#336699" size="2">ACTION<br>TAKEN</font></b></td>
	<td align="center" valign="bottom" ><b><font color="#336699" size="2">ACTION<br>DATE</font></b></td>
	<td align="center" valign="bottom" ><b><font color="#336699" size="2">FIRST NAME</font></b></td>
	<td align="center" valign="bottom" ><b><font color="#336699" size="2">MIDDLE<br>NAME</font></b></td>
	<td align="center" valign="bottom" ><b><font color="#336699" size="2">LAST NAME</font></b></td>
	<td align="center" valign="bottom" ><b><font color="#336699" size="2">CATEGORY</font></b></td>
	<td align="center" valign="bottom" ><b><font color="#336699" size="2">NATIONALITY</font></b></td>
	<td align="center" valign="bottom" ><b><font color="#336699" size="2">PASSPORT<br>NO</font></b></td>
	<td align="center" valign="bottom" ><b><font color="#336699" size="2">PERM HOME<br>ADDRESS</font></b></td>
	<td align="center" valign="bottom" ><b><font color="#336699" size="2">SEX</font></b></td>
	<td align="center" valign="bottom" ><b><font color="#336699" size="2">DATE OF<br>BIRTH</font></b></td>
	<td align="center" valign="bottom" ><b><font color="#336699" size="2">STATE OF<br>ORIGIN<br>CODE</font></b></td>

	</tr>
    <%
    	try
		{
    	String f1="", f2="", f3="", f4="", f5="", f6="", f7="", f8="", f9="", f10="",f11="", f12="", f13="", f14="", f15="", f16="", f17="", f18="", f19="", f20="",f21="", f22="";
    	
    	int ccn=cn;
    	for(int i=1;i<=cn;i++) 
    	{
	    		Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from qdfir921 where S_NO='"+i+"'");
			Statement stStates =cnn.createStatement();
			ResultSet rsStates = stStates.executeQuery("select * from qdfir338STATECODES");
			Statement stFraud =cnn.createStatement();
			ResultSet rsFraud = stFraud.executeQuery("select * from Fraud");

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

				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'} del()\"</td>");
				out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
	    			out.println("<td ><input type=\"text\" name=\"f1" +i+ "\" value=\""+f1+"\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f2" +i+ "\" value=\""+f2+"\"></td >");
				out.println("<td ><select name=\"f3" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsFraud.next())
					{
						String str1 = rsFraud.getString(1);
						String str2 = rsFraud.getString(2);
        					if(f3.equals(str1))
        					{
							out.println("<option selected value=\""+str1+"\">"+str1+" : "+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value=\""+str1+"\">"+str1+" : "+str2+"</option>");
        					}
        						out.println("<br>");
					}
        			out.println("</select></td>");
				out.println("<td ><input type=\"text\" name=\"f4" +i+ "\" value=\""+f4+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f5" +i+ "\" value=\""+f5+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f6" +i+ "\" value=\""+f6+"\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f7" +i+ "\" value=\""+f7+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f8" +i+ "\" value=\""+f8+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f9" +i+ "\" value=\""+f9+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f10" +i+ "\" value=\""+f10+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f11" +i+ "\" value=\""+f11+"\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f12" +i+ "\" value=\""+f12+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f13" +i+ "\" value=\""+f13+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f14" +i+ "\" value=\""+f14+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f15" +i+ "\" value=\""+f15+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f16" +i+ "\" value=\""+f16+"\"></td >");	
	    			out.println("<td ><input type=\"text\" name=\"f17" +i+ "\" value=\""+f17+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f18" +i+ "\" value=\""+f18+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f19" +i+ "\" value=\""+f19+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f20" +i+ "\" value=\""+f21+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f21" +i+ "\" value=\""+f21+"\"></td >");	
				out.println("<td ><select name=\"f22" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsStates.next())
					{
						String str1 = rsStates.getString(1);
						String str2 = rsStates.getString(2);
        					if(f22.equals(str1))
        					{
							out.println("<option selected value=\""+str1+"\">"+str1+" : "+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value=\""+str1+"\">"+str1+" : "+str2+"</option>");
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