<!--
@author D & T Solutions
-->

<%@ page import="java.sql.*, cbnbas.mpmbr.connect"%>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
	int cn=0;
	try
	{
		PreparedStatement pss = cnn.prepareStatement("delete * from MPMBR354Data");
            pss.executeUpdate();
            pss.close();
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from MPMBR354");
		while(rs.next())
		{
			cn++;
			PreparedStatement pstInsert = cnn.prepareStatement("Insert into MPMBR354Data Values(?,?,?,?,?,?,?,?,?,?,?)");
                  pstInsert.setString(1, rs.getString(1));
                  pstInsert.setString(2, rs.getString(2));
                  pstInsert.setString(3, rs.getString(3));
                  pstInsert.setString(4, rs.getString(4));
                  pstInsert.setString(5, rs.getString(5));
                  pstInsert.setString(6, rs.getString(6));
                  pstInsert.setString(7, rs.getString(7));
                  pstInsert.setString(8, rs.getString(8));
                  pstInsert.setString(9, rs.getString(9));
                  pstInsert.setString(10, rs.getString(10));
                  pstInsert.setString(11, rs.getString(11));
                  pstInsert.executeUpdate();
                  pstInsert.close();

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
<title>Cube CBN EFASS System - MPMBR 354</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
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
    <a href='mpmbrtoc.jsp'>MPMBR TOC</a> </font></b> </td>
    <td width="1063">
<p align="center"><b><font color="#336699" size="2">MPMBR 354 - SCHEDULE OF NON-CURRENT ASSETS HELD FOR SALES / DISPOSAL GROUP</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>
    
    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
        <form action="mpmbr354$.jsp" method="post" name="form354">
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
 	<form action="mpmbr354Customise.jsp" method="post">
 	<td><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All</font></b></td>
	<td align="center"><b><font color="#336699" size="2">S_NO</font></b></td>
	<td align="center"><b><font color="#336699" size="2">TYPE</font></b></td>
	<td align="center"><b><font color="#336699" size="2">DISCRIPTION(Give adequate description)</font></b></td>	
	<td align="center"><b><font color="#336699" size="2">LOCATION</font></b></td>
	<td align="center"><b><font color="#336699" size="2">DATE OF PURCHASE</font></b></td>
	<td align="center"><b><font color="#336699" size="2">DATE TRANSFERED TO HELD FOR SALE</font></b></td>
	<td align="center"><b><font color="#336699" size="2">PURCHASE COST</font></b></td>
	<td align="center"><b><font color="#336699" size="2">CURRENT BOOK VALUE</font></b></td>
	<td align="center"><b><font color="#336699" size="2">CURRENT MARKET VALUE</font></b></td>
	<td align="center"><b><font color="#336699" size="2">REVALUATION GAIN / LOSS</font></b></td>
	<td align="center"><b><font color="#336699" size="2">REMARKS</font></b></td>

	
	
	
	</tr>
    <%
    	try
		{
    	String f1="", f2="", f3="", f4="", f5="", f6="", f7="", f8="", f9="", f10="";    	
    	int ccn=cn-1;
    	for(int i=1;i<cn;i++) 
    	{
    			Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("SELECT * FROM MPMBR354Data where S_NO='"+i+"'");
			Statement stBanks =cnn.createStatement();
			ResultSet rsBanks = stBanks.executeQuery("select * from BANKS order by BankName");
			

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

		



				out.println("<tr> ");
				out.println("<td ><input type=\"checkbox\" name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'} del()\"</td>");
				out.println("<td ><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
				out.println("<td ><input type=\"text\" name=\"f1" +i+ "\" value=\""+f1+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f2" +i+ "\" value=\""+f2+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f3" +i+ "\" value=\""+f3+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f4" +i+ "\" value=\""+f4+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f5" +i+ "\" value=\""+f5+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f6" +i+ "\" value=\""+f6+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f7" +i+ "\" value=\""+f7+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f8" +i+ "\" value=\""+f8+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f9" +i+ "\" value=\""+f9+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"f10" +i+ "\" value=\""+f10+"\"></td >");	
		
				out.println("</tr> ");

				
			}
    		
    	}
    		String ss1="";
    		Statement st2=cnn.createStatement();
		ResultSet rs=st2.executeQuery("select * from MPMBR354Data where S_NO='T_99999'");
		while(rs.next())
		{
			ss1=String.valueOf(rs.getString(8).trim());
			
		}
	    	out.println("<tr >");	
	    	out.println("<td align=\"left\"><input type=\"text\" readonly ></td >");
			out.println("<td><input type=\"text\" readonly value=\"T_99999\" name=\"total1\"></td >");
			out.println("<td><input type=\"text\" name=\"total2\" value=\"0\"></td >");
			out.println("<td><input type=\"text\" name=\"total3\" value=\"0\"></td >");
			out.println("<td><input type=\"text\" name=\"total4\" value=\"0\"></td >");
			out.println("<td><input type=\"text\" name=\"total5\" value=\"0\"></td >");
			out.println("<td><input type=\"text\" name=\"total6\" value=\"0\"></td >");
			out.println("<td><input type=\"text\" name=\"total7\" value=\"0\"></td >");
			out.println("<td><input type=\"text\" name=\"total8\" value=\"0\"></td >");
			out.println("<td><input type=\"text\" name=\"total9\" value=\"0\"></td >");
			out.println("<td><input type=\"text\" name=\"total10\" value=\"0\"></td >");
			out.println("<td><input type=\"text\" name=\"total11\" value=\"0\"></td >");									
			out.println("</tr>");
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