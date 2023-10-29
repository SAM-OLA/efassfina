<!--
@author D & T Solutions
-->
<%@ page import="java.sql.*, cbnbas.qdfir.connect"%>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from qdfir681");
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
<title>Cube CBN EFASS System - QDFIR 681</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!--mstheme--><link rel="stylesheet" href="poet1111.css">
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
    <a href='qdfirtoc.jsp'>QDFIR TOC</a> </font></b> </td>
    <td width="1063">
<p align="center"><b><font color="#336699" size="2">QDFIR 681 - SCHEDULE OF OTHER PLACEMENTS</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<pre>
<%
		Statement st3=cnn.createStatement();
		ResultSet rs3=st3.executeQuery("select value from qdfir300Data where code='20680'");
		rs3.next();
%>
Note: Expected Total: <%=rs3.getString(1)%> 
</pre>    
    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
        <form action="qdfir681$.jsp" method="post" name="form681">
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
 	<form action="qdfir681Customise.jsp" method="post">
 	<td><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All</font></b></td>
	<td align="center"><b><font color="#336699" size="2">S_NO</font></b></td>
	<td align="center"><b><font color="#336699" size="2">BANK CODE</font></b></td>
	<td align="center"><b><font color="#336699" size="2">NAME OF BANK</font></b></td>
	<td align="center"><b><font color="#336699" size="2">ACCOUNT NO</font></b></td>
	<td align="center"><b><font color="#336699" size="2">AMOUNT</font></b></td>


	
	
	
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
			ResultSet rs=st2.executeQuery("SELECT QDFIR681.S_NO, QDFIR681.BANKCODE, Banks.BankName, QDFIR681.ACCTNo, QDFIR681.AMOUNT FROM Banks INNER JOIN QDFIR681 ON Banks.BankCode = QDFIR681.BANKCODE where S_NO='"+i+"'");
			Statement stBanks =cnn.createStatement();
			ResultSet rsBanks = stBanks.executeQuery("select * from BANKS order by BankName");


			while(rs.next())
			{
				f1=rs.getString(2);
				f2=rs.getString(3);
				f3=rs.getString(4);
				f4=rs.getString(5);				
						


				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'} del()\"</td>");
				out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
	    			out.println("<td ><select name=\"f1" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsBanks.next())
					{
						String str1 = rsBanks.getString(1);
						String str2 = rsBanks.getString(2);
        					if(f1.equals(str1))
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
				out.println("<td ><input type=\"text\" readonly name=\"f2" +i+ "\" size=\"62\" value=\""+f2+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f3" +i+ "\" value=\""+f3+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f4" +i+ "\" value=\""+f4+"\"></td >");	
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
				Statement stBanks =cnn.createStatement();
				ResultSet rsBanks = stBanks.executeQuery("select * from BANKS order by BankName");
				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'} del()\"</td>");
				out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
	    			out.println("<td ><select name=\"f1" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rsBanks.next())
					{
						String str1 = rsBanks.getString(1);
						String str2 = rsBanks.getString(2);
        					out.println("<option value=\""+str1+"\">"+str1+" : "+str2+"</option>");
        					out.println("<br>");
					}
        			out.println("</select></td>");
				out.println("<td ><input type=\"text\" readonly name=\"f2" +i+ "\" size=\"62\"  value=\"0\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f3" +i+ "\"  value=\"0\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f4" +i+ "\"  value=\"0\"></td >");	
				out.println("</tr> ");

    	}
	    	String ss1="";
    		Statement st2=cnn.createStatement();
		ResultSet rs=st2.executeQuery("select * from qdfir681 where S_NO='T_99999'");
		while(rs.next())
		{
			ss1=String.valueOf(rs.getString(5));
		}
	    	out.println("<tr >");	
	    	out.println("<td align=\"left\"><input type=\"text\" readonly ></td >");
		out.println("<td><input type=\"text\" readonly value=\"T_99999\" name=\"total1\"></td >");
		out.println("<td><input type=\"text\" name=\"total2\"  value=\"0\"></td >");
		out.println("<td><input type=\"text\" name=\"total3\" size=\"62\"  value=\"0\"></td >");
		out.println("<td><input type=\"text\" name=\"total4\" value=\"0\"></td >");
		out.println("<td><input type=\"text\" name=\"total5\" value="+ss1+"></td >");
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