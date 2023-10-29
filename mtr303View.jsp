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
		ResultSet rs=st.executeQuery("select * from mtr303");
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
<title>Cube CBN EFASS System - MTR 303</title>
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
    <a href='mtrtocView.jsp'>MTR TOC</a> </font></b> </td>
    <td width="1063">
<p align="center"><b><font color="#336699" size="2">MTR 303 View - MONTHLY RETURN OF CAPITAL IMPORTATION</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>
    
    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    

 	<tr>
 	<form action="mtr303customise.jsp" method="post">
 	<td width="250" valign="bottom">
    <p align="left"><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">S_NO</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">RC NO</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">NAME AND ADDRESS OF INVESTOR<br>/COMPANY</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">COUNTRY OF ORIGIN</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">LOCATION OF INVESTMENT</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">NATURE OF BUSINESS</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">GESTATION PERIOD</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">DATE RECIEVED</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">AMOUNT IN US$</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">NAIRA EQUIVALENT</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">CERTIFICATE OF CAPITAL IMPORTATION NO</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">NATURE OF CAPITAL</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">REMARK STATES WHETHER CASH OR EQUIPMENT</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">MATURITY DATE</font></b></td>
	
	</tr>
    <%
    	try
		{
    	String f1="", f2="", f3="", f4="", f5="", f6="", f7="", f8="", f9="", f10="",f11="", f12="", f13="";
    	
    	int ccn=cn-1;
    	for(int i=1;i<cn;i++) 
    	{
    			Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from mtr303 where S_NO='"+i+"'");
			Statement stCurrencyCodes =cnn.createStatement();
			ResultSet rsCurrencyCodes = stCurrencyCodes.executeQuery("select Codes, Names from CurrencyCodes");
			Statement stStateCodes =cnn.createStatement();
			ResultSet rsStateCodes = stStateCodes.executeQuery("select * from StateCodes");
			Statement stNatureOfBusinessCodes =cnn.createStatement();
			ResultSet rsNatureOfBusinessCodes = stNatureOfBusinessCodes.executeQuery("select * from NatureOfBusinessCodes");
			Statement stGestationPeriod =cnn.createStatement();
			ResultSet rsGestationPeriod = stGestationPeriod.executeQuery("select * from GestationPeriod");
			Statement stNatureOfCapital =cnn.createStatement();
			ResultSet rsNatureOfCapital = stNatureOfCapital.executeQuery("select * from NatureOfCapital");

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
				
				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'} del()\"</td>");
				out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
	    			out.println("<td ><input type=\"text\" name=\"f1" +i+ "\" value=\""+f1+"\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f2" +i+ "\" value=\""+f2+"\"></td >");
				out.println("<td ><select name=\"f3" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsCurrencyCodes.next())
					{
						String str1 = rsCurrencyCodes.getString(1);
						String str2 = rsCurrencyCodes.getString(2);
        					if(f3.equals(str1))
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

				out.println("<td ><select name=\"f4" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsStateCodes.next())
					{
						String str1 = rsStateCodes.getString(1);
						String str2 = rsStateCodes.getString(2);
        					if(f4.equals(str1))
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

				out.println("<td ><select name=\"f5" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsNatureOfBusinessCodes.next())
					{
						String str1 = rsNatureOfBusinessCodes.getString(1);
						String str2 = rsNatureOfBusinessCodes.getString(2);
        					if(f5.equals(str1))
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

				out.println("<td ><select name=\"f6" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsGestationPeriod.next())
					{
						String str1 = rsGestationPeriod.getString(1);
						String str2 = rsGestationPeriod.getString(2);
        					if(f6.equals(str1))
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

    				out.println("<td ><input type=\"text\" name=\"f7" +i+ "\" value=\""+f7+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f8" +i+ "\" value=\""+f8+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f9" +i+ "\" value=\""+f9+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f10" +i+ "\" onBlur=\"return validate(this)\" value=\""+f10+"\"></td >");
				out.println("<td ><select name=\"f11" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsNatureOfCapital.next())
					{
						String str1 = rsNatureOfCapital.getString(1);
						String str2 = rsNatureOfCapital.getString(2);
        					if(f11.equals(str1))
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

    				out.println("<td ><input type=\"text\" name=\"f12" +i+ "\" value=\""+f12+"\"></td >");
    				out.println("<td ><input type=\"text\" name=\"f13" +i+ "\" value=\""+f13+"\"></td >");
				out.println("</tr> ");


				
			}
    		
    	}
    	String ss1="", ss2="";
	String ss3="0"; 
	    	Statement st2=cnn.createStatement();
		ResultSet rs=st2.executeQuery("select AMOUNT_IN_US$,NAIRA_EQUIVALENT from mtr303 where S_NO='T_99999'");
		while(rs.next())
		{
			ss1=String.valueOf(rs.getString(1));
			ss2=String.valueOf(rs.getString(2));
		}
	    	out.println("<tr >");	
    		out.println("<td align=\"right\"><input type=\"text\" readonly ></td >");
		out.println("<td ><input type=\"text\" readonly value=\"T_99999\" name=\"total1\"></td >");
		out.println("<td ><input type=\"text\" name=\"total2\" value="+ss3+"></td >");
		out.println("<td ><input type=\"text\" name=\"total3\" value="+ss3+"></td >");
		out.println("<td ><input type=\"text\" name=\"total4\" value="+ss3+"></td >");
		out.println("<td ><input type=\"text\" name=\"total5\" value="+ss3+"></td >");
		out.println("<td ><input type=\"text\" name=\"total6\" value="+ss3+"></td >");
		out.println("<td ><input type=\"text\" name=\"total7\" value="+ss3+"></td >");
		out.println("<td ><input type=\"text\" name=\"total8\" value="+ss3+"></td >");
		out.println("<td ><input type=\"text\" name=\"total9\" value="+ss1+"></td >");
		out.println("<td ><input type=\"text\" name=\"total10\" value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total11\" value="+ss3+"></td >");
		out.println("<td ><input type=\"text\" name=\"total12\" value="+ss3+"></td >");
		out.println("<td ><input type=\"text\" name=\"total13\" value="+ss3+"></td >");
		out.println("</tr>");
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