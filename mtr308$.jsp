<%@ page import="java.sql.*, cbnbas.mtr.connect"%>
<%!
	Connection cnn=null;
%>
<%
	connect c = new connect();
   		cnn = c.connectMethod();
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from mtr308");
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
<title>Cube CBN EFASS System - MTR 308</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
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
  function validate(obj)
{
x=document.myForm
at=obj.value.indexOf(".")
if (at != -1)
	{
	alert("this field can't contain a decimal number")
	obj.select()
	obj.focus()
	return false
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
    <a href='mtrtoc.jsp'>MTR TOC</a> </font></b> </td>
    <td width="1063">
<p align="center"><b><font color="#336699" size="2">MTR 308 - MONTHLY RETURN ON TRANSFER OF PROFIT, DIVIDEND AND CAPITAL</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>
    
    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
        <form action="mtr308$.jsp" method="post" name="form308">
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
 	<form action="mtr308customise.jsp" method="post">
 	<td valign="bottom"><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">S_NO</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">RC NO</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">NAME OF INVESTOR / COMPANY</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">NATURE OF BUSINESS</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">DATE OF TRANSFER</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">AMOUNT IN NAIRA</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">FOREX EQUIVALENT IN US$</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">REMARKS (indicate profit, dividend, capital transfer or repayment</font></b></td>
	
	</tr>
    <%
    	try
		{
    	String count=request.getParameter("count");
    	int cnt=Integer.parseInt(count);
    	String f1="", f2="", f3="", f4="", f5="", f6="", f7="";
    	out.println("<form action=\"sbr1905_dircustomise.jsp\" method=\"post\">");
    	for(int i=1;i<cn;i++) 
    	{
	    		Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from mtr308 where S_NO='"+i+"'");
			Statement stNatureOfBusinessCodes =cnn.createStatement();
			ResultSet rsNatureOfBusinessCodes = stNatureOfBusinessCodes.executeQuery("select * from NatureOfBusinessCodes");
			Statement stMTR308REMARKS =cnn.createStatement();
			ResultSet rsMTR308REMARKS = stMTR308REMARKS.executeQuery("select * from MTR308REMARKS");

			while(rs.next())
			{
				f1=rs.getString(2);
				f2=rs.getString(3);
				f3=rs.getString(4);
				f4=rs.getString(5);
				f5=rs.getString(6);
				f6=rs.getString(7);
				f7=rs.getString(8);
				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'}\"</td>");
	    			out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
    				out.println("<td ><input type=\"text\" name=\"f1" +i+ "\" value=\""+f1+"\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f2" +i+ "\" value=\""+f2+"\"></td >");
				out.println("<td ><select name=\"f3" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsNatureOfBusinessCodes.next())
					{
						String str1 = rsNatureOfBusinessCodes.getString(1);
						String str2 = rsNatureOfBusinessCodes.getString(2);
        					if(f3.equals(str1))
        					{
							out.println("<option selected value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					}
        						out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><input type=\"text\" name=\"f4" +i+ "\" value=\""+f4+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f5" +i+ "\" value=\""+f5+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f6" +i+ "\" value=\""+f6+"\"></td >");	
    				out.println("<td ><select name=\"f7" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsMTR308REMARKS.next())
					{
						String str1 = rsMTR308REMARKS.getString(1);
						String str2 = rsMTR308REMARKS.getString(2);
        					if(f7.equals(str1))
        					{
							out.println("<option selected value=\""+str1+"\">"+str2+"</option>");
        					}
        					else
        					{
          						out.println("<option value=\""+str1+"\">"+str2+"</option>");
        					}
        						out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("</tr> ");

			}
    		
    	}
    	int ccn=cnt+cn;
    	int ccn2=ccn-1;
    	if(cn==0)
    	{
    		cn=1;
    		ccn=ccn+1;
    		ccn2=ccn2+1;
    	}
    	for(int i=cn;i<ccn;i++) 
    	{
				Statement stNatureOfBusinessCodes =cnn.createStatement();
				ResultSet rsNatureOfBusinessCodes = stNatureOfBusinessCodes.executeQuery("select * from NatureOfBusinessCodes");
				Statement stMTR308REMARKS =cnn.createStatement();
				ResultSet rsMTR308REMARKS = stMTR308REMARKS.executeQuery("select * from MTR308REMARKS");

				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'}\"</td>");
		    		out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
    				out.println("<td ><input type=\"text\" name=\"f1" +i+ "\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f2" +i+ "\"></td >");
				out.println("<td ><select name=\"f3" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsNatureOfBusinessCodes.next())
					{
						String str1 = rsNatureOfBusinessCodes.getString(1);
						String str2 = rsNatureOfBusinessCodes.getString(2);
        					out.println("<option value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><input type=\"text\" name=\"f4" +i+ "\"></td >");
				out.println("<td ><input type=\"text\" name=\"f5" +i+ "\" value=\"0\"></td >");
				out.println("<td ><input type=\"text\" name=\"f6" +i+ "\" value=\"0.00\"></td >");	
	    			out.println("<td ><select name=\"f7" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsMTR308REMARKS.next())
					{
						String str1 = rsMTR308REMARKS.getString(1);
						String str2 = rsMTR308REMARKS.getString(2);
        					out.println("<option value=\""+str1+"\">"+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("</tr> ");
    	}
    	String ss1="", ss2="";
    	Statement st2=cnn.createStatement();
		ResultSet rs=st2.executeQuery("select AMOUNT_IN_NAIRA,FOREX_EQUIVALENT_IN_US$ from mtr308 where S_NO='T_99999'");
		while(rs.next())
		{
			ss1=String.valueOf(rs.getString(1));
			ss2=String.valueOf(rs.getString(2));
		}
    	out.println("<tr >");	
    	out.println("<td align=\"right\"><input type=\"text\" readonly ></td >");
		out.println("<td ><input type=\"text\" readonly value=\"T_99999\" name=\"total1\"></td >");
		out.println("<td ><input type=\"text\" name=\"total2\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total3\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total4\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total5\" value=\"0\"></td >");
		out.println("<td ><input type=\"text\" name=\"total6\" value="+ss1+"></td >");
		out.println("<td ><input type=\"text\" name=\"total7\" value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total8\" value=\"0\"></td >");
		out.println("</tr>");
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