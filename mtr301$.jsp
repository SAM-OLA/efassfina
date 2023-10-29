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
		ResultSet rs=st.executeQuery("select * from mtr301");
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
<title>Cube CBN EFASS System - MTR 301</title>
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
<p align="center"><b><font color="#336699" size="2">MTR 301 - EXPORT REGISTRATION</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>
    
    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
        <form action="mtr301$.jsp" method="post" name="form301">
     <td><b><font color="#336699" size="2">&nbsp;New_Entries</font></b></td>&nbsp; <td>
     <b><font color="#336699" size="2">
     <input type="text" name="count" value="0" size="20"> </font></b>
	 </td>
	 <td colspan=4>
     <b><font color="#336699" size="2">
     <input name="submit" value= "    OK    " type="submit" >------------------------------EXPORTER------------------------------</font></b> 
	</td>
	</form>
<td colspan=13 align=center><b>------------------------------SHIPMENT------------------------------</b></td>
  </tr>

 	<tr>
 	<form action="mtr301customise.jsp" method="post">
 	<td width="250" valign="bottom"><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All</font></b></td>
		<td valign="bottom"><p align="center"><b><font color="#336699" size="2">S_NO</font></b></td>
		<td valign="bottom"><p align="center"><b><font color="#336699" size="2">NXP NO</font></b></td>
		<td valign="bottom"><p align="center"><b><font color="#336699" size="2">NEPC NO</font></b></td>
		<td valign="bottom"><p align="center"><b><font color="#336699" size="2">RC_NO</font></b></td>
		<td valign="bottom"><p align="center"><b><font color="#336699" size="2">NAME</font></b></td>
		<td valign="bottom"><p align="center"><b><font color="#336699" size="2">NAME AND ADDRESS OF CONSIGNE</font></b></td>
		<td valign="bottom"><p align="center"><b><font color="#336699" size="2">EXPORT ITEMS CODE</font></b></td>
		<td valign="bottom"><p align="center"><b><font color="#336699" size="2">QUANTITY</font></b></td>
		<td valign="bottom"><p align="center"><b><font color="#336699" size="2">UNIT OF MEASURE CODE</font></b></td>
		<td valign="bottom"><p align="center"><b><font color="#336699" size="2">CURRENCY CODE</font></b></td>
		<td valign="bottom"><p align="center"><b><font color="#336699" size="2">AMOUNT IN ORIG<br> CURRENCY</font></b></td>
		<td valign="bottom"><p align="center"><b><font color="#336699" size="2">FOB VALUE</font></b></td>
		<td valign="bottom"><p align="center"><b><font color="#336699" size="2">MODE OF PAYMENT (CODE)</font></b></td>
		<td valign="bottom"><p align="center"><b><font color="#336699" size="2">COUNTRY OF SHIPMENT (CODE)</font></b></td>
		<td valign="bottom"><p align="center"><b><font color="#336699" size="2">EXPECTED DATE OF SHIPMENT</font></b></td>
		<td valign="bottom"><p align="center"><b><font color="#336699" size="2">EXPORT TYPE</font></b></td>
		<td valign="bottom"><p align="center"><b><font color="#336699" size="2">CCI NUMBER</font></b></td>
		<td valign="bottom"><p align="center"><b><font color="#336699" size="2">CCI DATE</font></b></td>


	</tr>
    <%
    	try
		{
    	String count=request.getParameter("count");
    	int cnt=Integer.parseInt(count);
    	String f1="", f2="", f3="", f4="", f5="", f6="", f7="", f8="",f9="", f10="", f11="", f12="", f13="", f14="", f15="", f16="", f17="";
    	out.println("<form action=\"sbr1905_dircustomise.jsp\" method=\"post\">");
    	for(int i=1;i<cn;i++) 
    	{
	    		Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from mtr301 where S_NO='"+i+"'");
			Statement stExportsItemCode =cnn.createStatement();
			ResultSet rsExportsItemCode = stExportsItemCode.executeQuery("select * from ExportsItemCode");
			Statement stUnitOfMeasure =cnn.createStatement();
			ResultSet rsUnitOfMeasure = stUnitOfMeasure.executeQuery("select * from UnitOfMeasure");
			Statement stPaymentMode =cnn.createStatement();
			ResultSet rsPaymentMode = stPaymentMode.executeQuery("select * from PaymentMode");
			Statement stCurrencyCodes =cnn.createStatement();
			ResultSet rsCurrencyCodes = stCurrencyCodes.executeQuery("select Code, Description from CurrencyCodes");
			Statement stCountry =cnn.createStatement();
			ResultSet rsCountry = stCountry.executeQuery("select * from CountryCodes");
			Statement stExportType =cnn.createStatement();
			ResultSet rsExportType = stExportType.executeQuery("select * from ExportType");

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
				while(rsExportsItemCode.next())
					{
						String str1 = rsExportsItemCode.getString(1);
						String str2 = rsExportsItemCode.getString(2);
        					if(f6.equals(str1))
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

				out.println("<td ><input type=\"text\" name=\"f7" +i+ "\" value=\""+f7+"\"></td >");
				out.println("<td ><select name=\"f8" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsUnitOfMeasure.next())
					{
						String str1 = rsUnitOfMeasure.getString(1);
						String str2 = rsUnitOfMeasure.getString(2);
        					if(f8.equals(str1))
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

				out.println("<td><select name=\"f9" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsCurrencyCodes.next())
					{
						String str1 = rsCurrencyCodes.getString(1);
						String str2 = rsCurrencyCodes.getString(2);
        					if(f9.equals(str1))
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
				out.println("<td><input type=\"text\" name=\"f10" +i+ "\" value=\""+f10+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f11" +i+ "\" value=\""+f11+"\"></td >");
				out.println("<td ><select name=\"f12" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsPaymentMode.next())
					{
						String str1 = rsPaymentMode.getString(1);
						String str2 = rsPaymentMode.getString(2);
        					if(f12.equals(str1))
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

				out.println("<td><select name=\"f13" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsCountry.next())
					{
						String str1 = rsCountry.getString(1);
						String str2 = rsCountry.getString(2);
        					if(f13.equals(str1))
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

				out.println("<td><input type=\"text\" name=\"f14" +i+ "\" value=\""+f14+"\"></td >");
				out.println("<td><select name=\"f15" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsExportType.next())
					{
						String str1 = rsExportType.getString(1);
						String str2 = rsExportType.getString(2);
        					if(f15.equals(str1))
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
				out.println("<td><input type=\"text\" name=\"f16" +i+ "\" value=\""+f16+"\"></td >");
				out.println("<td><input type=\"text\" name=\"f17" +i+ "\" value=\""+f17+"\"></td >");
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
				Statement stExportsItemCode =cnn.createStatement();
				ResultSet rsExportsItemCode = stExportsItemCode.executeQuery("select * from ExportsItemCode");
				Statement stUnitOfMeasure =cnn.createStatement();
				ResultSet rsUnitOfMeasure = stUnitOfMeasure.executeQuery("select * from UnitOfMeasure");
				Statement stPaymentMode =cnn.createStatement();
				ResultSet rsPaymentMode = stPaymentMode.executeQuery("select * from PaymentMode");
				Statement stCurrencyCodes =cnn.createStatement();
				ResultSet rsCurrencyCodes = stCurrencyCodes.executeQuery("select Code, Description from CurrencyCodes");
				Statement stCountry =cnn.createStatement();
				ResultSet rsCountry = stCountry.executeQuery("select Code, Description from CountryCodes");
				Statement stExportType =cnn.createStatement();
				ResultSet rsExportType = stExportType.executeQuery("select * from ExportType");

				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'}\"</td>");
    				out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
		    		out.println("<td ><input type=\"text\" name=\"f1" +i+ "\" value=\"0\"></td >");	
    				out.println("<td ><input type=\"text\" name=\"f2" +i+ "\" value=\"0\"></td >");
				out.println("<td ><input type=\"text\" name=\"f3" +i+ "\" value=\"0\"></td >");
				out.println("<td ><input type=\"text\" name=\"f4" +i+ "\" value=\"0\"></td >");
				out.println("<td ><input type=\"text\" name=\"f5" +i+ "\" value=\"0\"></td >");
				out.println("<td ><select name=\"f6" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsExportsItemCode.next())
					{
						String str1 = rsExportsItemCode.getString(1);
						String str2 = rsExportsItemCode.getString(2);
        					out.println("<option value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><input type=\"text\" name=\"f7" +i+ "\" value=\"0\"></td >");
				out.println("<td ><select name=\"f8" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsUnitOfMeasure.next())
					{
						String str1 = rsUnitOfMeasure.getString(1);
						String str2 = rsUnitOfMeasure.getString(2);
        					out.println("<option value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");
				out.println("<td><select name=\"f9" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsCurrencyCodes.next())
					{
						String str1 = rsCurrencyCodes.getString(1);
						String str2 = rsCurrencyCodes.getString(2);
        					out.println("<option selected value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");
				out.println("<td ><input type=\"text\" name=\"f10" +i+ "\" value=\"0.00\"></td >");
				out.println("<td ><input type=\"text\" name=\"f11" +i+ "\" value=\"0.00\"></td >");
				out.println("<td ><select name=\"f12" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsPaymentMode.next())
					{
						String str1 = rsPaymentMode.getString(1);
						String str2 = rsPaymentMode.getString(2);
        					out.println("<option value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td><select name=\"f13" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsCountry.next())
					{
						String str1 = rsCountry.getString(1);
						String str2 = rsCountry.getString(2);
        					out.println("<option value=\""+str1+"\">"+str1+" - "+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");

				out.println("<td ><input type=\"text\" name=\"f14" +i+ "\" value=\"0\"></td >");
				out.println("<td><select name=\"f15" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsExportType.next())
					{
						String str1 = rsExportType.getString(1);
						String str2 = rsExportType.getString(2);
        					out.println("<option value=\""+str1+"\">"+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");
				out.println("<td ><input type=\"text\" name=\"f16" +i+ "\" value=\"0\"></td >");
				out.println("<td ><input type=\"text\" name=\"f17" +i+ "\" value=\"0\"></td >");
				out.println("</tr> ");
    	}
    	String ss1="";
	String ss2="0";
	String ss3="01-01-1900";
	    	Statement st2=cnn.createStatement();
		ResultSet rs=st2.executeQuery("select FOB_VALUE from mtr301 where S_NO='T_99999'");
		while(rs.next())
		{
			ss1=String.valueOf(rs.getString(1));
		}
    		out.println("<tr >");	
	    	out.println("<td align=\"right\"><input type=\"text\" readonly ></td >");
		out.println("<td ><input type=\"text\" readonly value=\"T_99999\" name=\"total1\"></td >");
		out.println("<td ><input type=\"text\" name=\"total2\" value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total3\" value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total4\" value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total5\" value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total6\" value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total7\" value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total8\" value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total9\"  value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total10\"  value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total11\"  value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total12\" value="+ss1+"></td >");
		out.println("<td ><input type=\"text\" name=\"total13\" value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total14\" value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total15\" value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total16\" value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total17\" value="+ss2+"></td >");
		out.println("<td ><input type=\"text\" name=\"total18\" value="+ss3+"></td >");

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