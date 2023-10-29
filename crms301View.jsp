<%@ page import="java.sql.*, cbnbas.crms.connect" session="true"%>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from crms301");
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
<title>Cube CBN EFASS System - CRMS 301</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">



<!--mstheme--><link rel="stylesheet" href="file:///C:/DOCUME~1/FAVOUR~1/LOCALS~1/Temp/FrontPageTempDir/mstheme/poetic/poet1111.css">



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
<p align="center"><b><font color="#336699" size="2">RETURN ON RESTRUCTURED CREDIT PROFILE -RETURN - CRMS 301</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>
  
    <table width=1000 border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <!--<tr>-->
    <!--<form action="crms301$.jsp" method="post">-->
     <!--<td width=250>&nbsp;<b><font color="#336699" size="2">New_Entries</font></b></td>&nbsp; <td>-->
     <!--<input type="text" name="count" value="0" size="20">-->
	 <!--</td>-->
	 <!--<td>-->
     <!--<input name="submit" disabled value= "    OK    " type="submit" > -->
	<!--</td>-->
	<!--</form>-->
  <!--</tr>-->

 	<tr>
 	<form action="crms301customise.jsp" method="post">
 	<td width="250" align="center"><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All</font></b></td>
	<td align="center"><b><font color="#336699" size="2">S_NO</font></b></td>
	<td align="center"><b><font color="#336699" size="2">30013Credit Loan ID (to be entered by FI) (M)</font></b></td>
	<td align="center"><b><font color="#336699" size="2">10003CBN BORROWER CODE</font></b></td>
	<td align="center"><b><font color="#336699" size="2">10001Borrowers Name</font></b></td>
	<td align="center"><b><font color="#336699" size="2">10002Short Name</font></b></td>
	<td align="center"><b><font color="#336699" size="2">30001Credit type </font></b> </td>
	<td align="center"><b><font color="#336699" size="2">30002Credit purpose</font></b> </td>
	<td align="center"><b><font color="#336699" size="2">30003Credit limit</font></b> </td>
	<td align="center"><b><font color="#336699" size="2">30004Outstanding Amount</font></b></td>
	<td align="center"><b><font color="#336699" size="2">30007Repayment agreement mode</font></b></td>
	<td align="center"><b><font color="#336699" size="2">30008Performance repayment status</font></b></td>
	<td align="center"><b><font color="#336699" size="2">30009Interest rate</font></b></td>
	<td align="center"><b><font color="#336699" size="2">30010Financial Institution rating</font></b></td>
	<td align="center"><b><font color="#336699" size="2">30014Security type</font></b></td>
	<td align="center"><b><font color="#336699" size="2">30015Details of security</font></b></td>
	<td align="center"><b><font color="#336699" size="2">30016Owner of security</font></b></td>
	<td align="center"><b><font color="#336699" size="2">30017Borrower code of  security owner</font></b></td>
	<td align="center"><b><font color="#336699" size="2">30018Security value</font></b></td>
	<td align="center"><b><font color="#336699" size="2">30019Valuer</font></b></td>
	<td align="center"><b><font color="#336699" size="2">30020Valuation date</font></b></td>
	<td align="center"><b><font color="#336699" size="2">30021Expiry date</font></b></td>
	<td align="center"><b><font color="#336699" size="2">30022Charged Amount</font></b></td>
	<td align="center"><b><font color="#336699" size="2">30301Date of restructure (M)</font></b></td>
	<td align="center"><b><font color="#336699" size="2">30302Previous limit  (M)</font></b></td>
	<td align="center"><b><font color="#336699" size="2">30303Restructured limit (M)</font></b></td>
	<td align="center"><b><font color="#336699" size="2">30304Outstanding Amount (M)</font></b></td>
	<td align="center"><b><font color="#336699" size="2">30305Expiry date (M)</font></b></td>
	<td align="center"><b><font color="#336699" size="2">30306Repayment agreement / mode After(M)</font></b></td>
	<td align="center"><b><font color="#336699" size="2">30307Performance/repayment status(M) After</font></b></td>
	<td align="center"><b><font color="#336699" size="2">30308Interest rate(M)</font></b></td>
	<td align="center"><b><font color="#336699" size="2">30309Reason(s) for restructuring (M)</font></b></td>
	<td align="center"><b><font color="#336699" size="2">Edit</font></b></td>
	
	</tr>
    <%
    	try
		{
    	String f1="", f2="", f3="", f4="", f5="", f6="", f7="", f8="", f9="", f10="",f11="", f12="", f13="", f14="", f15="", f16="", f17="", f18="", f19="", f20="",f21="", f22="", f23="", f24="", f25="", f26="", f27="", f28="", f29="", f30="";
    	
    	int ccn=cn;
    	for(int i=1;i<=cn;i++) 
    	{
    			Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from crms301 where S_NO='"+i+"'");
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
				f25=rs.getString(26);
				f26=rs.getString(27);
				f27=rs.getString(28);
				f28=rs.getString(29);
				f29=rs.getString(30);
				f30=rs.getString(31);
				
				
				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'} del()\"</td>");
				out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
    				out.println("<td ><input type=\"text\" readonly name=\"f1" +i+ "\" value=\""+f1+"\"></td >");	
    				out.println("<td ><input type=\"text\" readonly name=\"f2" +i+ "\" value=\""+f2+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"f3" +i+ "\" value=\""+f3+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"f4" +i+ "\" value=\""+f4+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"f5" +i+ "\" value=\""+f5+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"f6" +i+ "\" value=\""+f6+"\"></td >");	
	    			out.println("<td ><input type=\"text\" readonly name=\"f7" +i+ "\" value=\""+f7+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"f8" +i+ "\" value=\""+f8+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"f9" +i+ "\" value=\""+f9+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"f10" +i+ "\" value=\""+f10+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"af11" +i+ "\" value=\""+f11+"\"></td >");	
	    			out.println("<td ><input type=\"text\" readonly name=\"af12" +i+ "\" value=\""+f12+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"af13" +i+ "\" value=\""+f13+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"af14" +i+ "\" value=\""+f14+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"af15" +i+ "\" value=\""+f15+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"af16" +i+ "\" value=\""+f16+"\"></td >");	
	    			out.println("<td ><input type=\"text\" readonly name=\"af17" +i+ "\" value=\""+f17+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"af18" +i+ "\" value=\""+f18+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"af19" +i+ "\" value=\""+f19+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"af20" +i+ "\" value=\""+f20+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"bf21" +i+ "\" value=\""+f21+"\"></td >");	
	    			out.println("<td ><input type=\"text\" readonly name=\"bf22" +i+ "\" value=\""+f22+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"bf23" +i+ "\" value=\""+f23+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"bf24" +i+ "\" value=\""+f24+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"bf25" +i+ "\" value=\""+f25+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"bf26" +i+ "\" value=\""+f26+"\"></td >");	
	    			out.println("<td ><input type=\"text\" readonly name=\"bf27" +i+ "\" value=\""+f27+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"bf28" +i+ "\" value=\""+f28+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"bf29" +i+ "\" value=\""+f29+"\"></td >");
				out.println("<td ><input type=\"text\" readonly name=\"bf30" +i+ "\" value=\""+f30+"\"></td >");
				out.println("<td><a href=crms301edit.jsp?target="+i+" style='color:pink;'>Data</a></td>");
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
