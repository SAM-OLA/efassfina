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
		PreparedStatement pss = cnn.prepareStatement("delete * from MPMBR388Data");
            pss.executeUpdate();
            pss.close();
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from MPMBR388");
		while(rs.next())
		{
			cn++;
			PreparedStatement pstInsert = cnn.prepareStatement("Insert into MPMBR388Data Values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
                  pstInsert.setString(12, rs.getString(12));
                  pstInsert.setString(13, rs.getString(13));
                  pstInsert.setString(14, rs.getString(14));
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
<title>Cube CBN EFASS System - MPMBR 388</title>
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
<p align="center"><b><font color="#336699" size="2">MPMBR 388 - SCHEDULE OF OTHER LOANS & ADVANCES</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>
    
    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    <tr>
        <form action="mpmbr388$.jsp" method="post" name="form388">
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
 	<form action="mpmbr388Customise.jsp" method="post">
 	<td><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All</font></b></td>
	<td align="center"><b><font color="#336699" size="2">S_NO</font></b></td>
	<td align="center"><b><font color="#336699" size="2">CUSTOMER CODE</font></b></td>
	<td align="center"><b><font color="#336699" size="2">CUSTOMER NAME</font></b></td>	
	<td align="center"><b><font color="#336699" size="2">PRINCIPAL GRANTED</font></b></td>
	<td align="center"><b><font color="#336699" size="2">PURPOSE</font></b></td>
	<td align="center"><b><font color="#336699" size="2">DATE GRANTED</font></b></td>
	<td align="center"><b><font color="#336699" size="2">DUE DATE</font></b></td>
	<td align="center"><b><font color="#336699" size="2">PRINCIPAL OUTSTANDING</font></b></td>
	<td align="center"><b><font color="#336699" size="2">INTEREST RATE</font></b></td>
	<td align="center"><b><font color="#336699" size="2">UPFRONT INTEREST</font></b></td>
	<td align="center"><b><font color="#336699" size="2">INTEREST PAYABLE</font></b></td>
	<td align="center"><b><font color="#336699" size="2">UNPAID PRINCIPAL / INT</font></b></td>
	<td align="center"><b><font color="#336699" size="2">TIMES ROLLED OVER</font></b></td>
	<td align="center"><b><font color="#336699" size="2">COLL / VALUE</font></b></td>


	
	
	
	</tr>
    <%
    	try
		{
    	String f1="", f2="", f3="", f4="", f5="", f6="", f7="", f8="", f9="", f10="", af11="", af12="", af13="";    	
    	int ccn=cn-1;
    	for(int i=1;i<cn;i++) 
    	{
    			Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("SELECT * FROM MPMBR388Data where S_NO='"+i+"'");
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
				af11=rs.getString(12);
				af12=rs.getString(13);
				af13=rs.getString(14);



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
				out.println("<td ><input type=\"text\" name=\"af11" +i+ "\" value=\""+af11+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"af12" +i+ "\" value=\""+af12+"\"></td >");	
				out.println("<td ><input type=\"text\" name=\"af13" +i+ "\" value=\""+af13+"\"></td >");	
				
				out.println("</tr> ");

				
			}
    		
    	}
    		String ss1="";
    		Statement st2=cnn.createStatement();
		ResultSet rs=st2.executeQuery("select * from MPMBR388Data where S_NO='T_99999'");
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
			out.println("<td><input type=\"text\" name=\"total12\" value=\"0\"></td >");									
			out.println("<td><input type=\"text\" name=\"total13\" value=\"0\"></td >");									
			out.println("<td><input type=\"text\" name=\"total14\" value=\"0\"></td >");																	
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