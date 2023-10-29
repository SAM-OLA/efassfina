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
		ResultSet rs=st.executeQuery("select * from mtr302");
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
<title>Cube CBN EFASS System - MTR 302</title>
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
    <a href='mtrtocView.jsp'>MTR TOC</a> </font></b> </td>
    <td width="1063">
<p align="center"><b><font color="#336699" size="2">MTR 302 - EXPORT PROCEEDS</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>
    
    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    

 	<tr>
 	<form action="mtr302customise.jsp" method="post">
 	<td width="250" valign="bottom">
    <p align="left"><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All</font></b></td>
	<td valign="bottom"><p align="center"><b><font color="#336699" size="2">S_NO</font></b></td>
	<td valign="bottom"><p align="center"><b><font color="#336699" size="2">NXP No</font></b></td>
	<td valign="bottom"><p align="center"><b><font color="#336699" size="2">NEPC No</font></b></td>
	<td valign="bottom"><p align="center"><b><font color="#336699" size="2">NAME</font></b></td>
	<td valign="bottom"><p align="center"><b><font color="#336699" size="2">NAME & ADDRESS OF CONSIGNE</font></b></td>
	<td valign="bottom"><p align="center"><b><font color="#336699" size="2">EXPORT ITEM CODE</font></b></td>
	<td valign="bottom"><p align="center"><b><font color="#336699" size="2">QUANTITY</font></b></td>
	<td valign="bottom"><p align="center"><b><font color="#336699" size="2">UNIT OF MEASURE CODE</font></b></td>
	<td valign="bottom"><p align="center"><b><font color="#336699" size="2">CURRENCY CODE</font></b></td>
	<td valign="bottom"><p align="center"><b><font color="#336699" size="2">AMOUNT IN ORIG CURRENCY</font></b></td>
	<td valign="bottom"><p align="center"><b><font color="#336699" size="2">AMOUNT RECEIVED IN NAIRA</font></b></td>
	<td valign="bottom"><p align="center"><b><font color="#336699" size="2">AMOUNT RECEIVED IN DOLLAR</font></b></td>
	<td valign="bottom"><p align="center"><b><font color="#336699" size="2">DATE RECEIVED</font></b></td>
	<td valign="bottom"><p align="center"><b><font color="#336699" size="2">DOM A/C NUMBER</font></b></td>
	<td valign="bottom"><p align="center"><b><font color="#336699" size="2">CCI NUMBER</font></b></td>
	<td valign="bottom"><p align="center"><b><font color="#336699" size="2">CCI DATE</font></b></td>
	<td valign="bottom"><p align="center"><b><font color="#336699" size="2">COUNTRY CODE</font></b></td>
	
	</tr>
    <%
    	try
		{
    	String f1="", f2="", f3="", f4="", f5="", f6="", f7="", f8="", f9="", f10="",f11="",f12="", f13="", f14="", f15="", f16="";;

    	int ccn=cn;
//int ccn=cn;
    	for(int i=1;i<=cn;i++) 
    	{
    			Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from mtr302 where S_NO='"+i+"'");
			Statement stExportsItemCode =cnn.createStatement();
			ResultSet rsExportsItemCode = stExportsItemCode.executeQuery("select * from ExportsItemCode");
			Statement stUnitOfMeasure =cnn.createStatement();
			ResultSet rsUnitOfMeasure = stUnitOfMeasure.executeQuery("select * from UnitOfMeasure");
			Statement stCurrencyCodes =cnn.createStatement();
			ResultSet rsCurrencyCodes = stCurrencyCodes.executeQuery("select Codes, Names+' : '+LocalUnit from CurrencyCodes");
			Statement stCountry =cnn.createStatement();
			ResultSet rsCountry = stCountry.executeQuery("select Codes, Names from CurrencyCodes");

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
				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'} del()\"</td>");
				out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
	    			out.println("<td ><input type=\"text\" name=\"f1" +i+ "\" value=\""+f1+"\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f2" +i+ "\" value=\""+f2+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f3" +i+ "\" value=\""+f3+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f4" +i+ "\" value=\""+f4+"\"></td >");
				out.println("<td ><select name=\"f5" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsExportsItemCode.next())
					{
						String str1 = rsExportsItemCode.getString(1);
						String str2 = rsExportsItemCode.getString(2);
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

				out.println("<td ><input type=\"text\" name=\"f6" +i+ "\" value=\""+f6+"\"></td >");	
    				out.println("<td ><select name=\"f7" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsUnitOfMeasure.next())
					{
						String str1 = rsUnitOfMeasure.getString(1);
						String str2 = rsUnitOfMeasure.getString(2);
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

				out.println("<td><select name=\"f8" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsCurrencyCodes.next())
					{
						String str1 = rsCurrencyCodes.getString(1);
						String str2 = rsCurrencyCodes.getString(2);
        					if(f8.equals(str1))
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

				out.println("<td ><input type=\"text\" name=\"f9" +i+ "\" value=\""+f9+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f10" +i+ "\" value=\""+f10+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f11" +i+ "\" value=\""+f11+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f12" +i+ "\" value=\""+f12+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f13" +i+ "\" value=\""+f13+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f14" +i+ "\" value=\""+f14+"\"></td >");
				out.println("<td ><input type=\"text\" name=\"f15" +i+ "\" value=\""+f15+"\"></td >");
				out.println("<td><select name=\"f16" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsCountry.next())
					{
						String str1 = rsCountry.getString(1);
						String str2 = rsCountry.getString(2);
        					if(f16.equals(str1))
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