<%@ page import="java.sql.*,cbnbas.sdfir.connect"%>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from sdfir1910");
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
<title>Cube CBN EFASS System - SDFIR 1910</title>
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
    <td width="62">
    <b><font color="#336699" size="2">
    <a href="sdfirtocView.jsp">SDFIR TOC</a> </font></b> </td>
    <td width="1074">
<p align="center"><b><font color="#336699" size="2">SEMI-ANNUAL RETURN ON CORPORATE PROFILE- SDFIR 1910</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
    

 	<tr>
 	<form action="sdfir1910customise.jsp" method="get">
 	<td align="center" valign="bottom"><b><font color="#336699" size="2"><input type="checkbox" name="CheckAll" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}" value="ON">Delete_All&nbsp;
    </font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">S_NO</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">ASSO_FIN_INST<br>CODE</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">ADDRESS</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">CITY</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">STATE CODE</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">TEL1</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">TEL2</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">TELEX1</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">FAX1</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">FAX2</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">EMAIL</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">LICENCE_NO</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">SHARE HOLDERS</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">NO OF DIRECTORS</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">NO OF BRANCHES</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">PRIVATE INDV PERCENT</font></b></td>
	<td align="center" valign="bottom"><font SIZE="2" color="#336699"><b>GOVT INT PERCENT</b></font></td>
	<td align="center" valign="bottom"><font SIZE="2" color="#336699"><b>INST INVEST PERCENT</b></font></td>
	<td align="center" valign="bottom"><font SIZE="2" color="#336699"><b>TOTAL ORDINARY SHARES ISSUED</b></font></td>
	<td align="center" valign="bottom"><font SIZE="2" color="#336699"><b>COMMISSIONED DATE</b></font></td>
	<td align="center" valign="bottom"><font SIZE="2" color="#336699"><b>LAST EXAM DATE (CBN)</b></font></td>
	<td align="center" valign="bottom"><font SIZE="2" color="#336699"><b>TYPE OF EXAMINATION (CBN)</b></font></td>
	<td align="center" valign="bottom"><font SIZE="2" color="#336699"><b>YEAR END</b></font></td>
	<td align="center" valign="bottom"><font SIZE="2" color="#336699"><b>AUDIT FIRM</b></font></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">NO OF AUDITORS</font></b></td>
	<td align="center" valign="bottom"><font SIZE="2" color="#336699"><b>AUDITORS ADDRESS</b></font></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">AUDITORS CITY</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">AUDITORS STATE CODE</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">NO OF SNRSTAFF</font></b></td>
	<td align="center" valign="bottom"><b><font color="#336699" size="2">NO OF JNRSTAFF</font></b></td>

	

	</tr>
    <%
    	try
		{
    	String f1="", f2="", f3="", f4="", f5="", f6="", f7="", f8="", f9="", f10="",f11="", f12="", f13="", f14="", f15="", f16="", f17="", f18="", f19="", f20="",f21="", f22="", f23="", f24="", f25="", f26="", f27="", f28="", f29="";
    	
    	int ccn=cn;
    	for(int i=1;i<=cn;i++) 
    	{
    			Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from sdfir1910 where S_NO='"+i+"'");
			Statement stsdfir1910INST_TYPE =cnn.createStatement();
			ResultSet rssdfir1910INST_TYPE = stsdfir1910INST_TYPE.executeQuery("select * from sdfir1910INST_TYPE");
			Statement st1910STATUS =cnn.createStatement();
			ResultSet rs1910STATUS = st1910STATUS.executeQuery("select * from sdfir1910STATUS");
			Statement st1910TYPE_OF_EXAMINATIONCBN =cnn.createStatement();
			ResultSet rs1910TYPE_OF_EXAMINATIONCBN = st1910TYPE_OF_EXAMINATIONCBN.executeQuery("select * from sdfir1910TYPE_OF_EXAMINATIONCBN");
			Statement st1910TYPE_OF_EXAMINATIONNDIC =cnn.createStatement();
			ResultSet rs1910TYPE_OF_EXAMINATIONNDIC = st1910TYPE_OF_EXAMINATIONNDIC.executeQuery("select * from sdfir1910TYPE_OF_EXAMINATIONNDIC");
			Statement st1910TYPE_U_R_F =cnn.createStatement();
			ResultSet rs1910TYPE_U_R_F = st1910TYPE_U_R_F.executeQuery("select * from sdfir1910TYPE_U_R_F");
			


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

				out.println("<tr> ");
				out.println("<td><input type=\"checkbox\" readonly name=\"chec" +i+ "\" onClick=\"if (this.checked) {this.form.chec"+i+".value='1'} else {this.form.chec"+i+".value='0'} del()\"</td>");
				out.println("<td><input type=\"text\" readonly name=\"count" +i+ "\" value="+i+ "></td >");
	    			out.println("<td><input type=\"text\" name=\"f1" +i+ "\" value=\""+f1+"\"></td>");	
    				out.println("<td><input type=\"text\" name=\"f2" +i+ "\" value=\""+f2+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f3" +i+ "\" value=\""+f3+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f4" +i+ "\" value=\""+f4+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f5" +i+ "\" value=\""+f5+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f6" +i+ "\" value=\""+f6+"\"></td>");	
    				out.println("<td><input type=\"text\" name=\"f7" +i+ "\" value=\""+f7+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f8" +i+ "\" value=\""+f8+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f9" +i+ "\" value=\""+f9+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f10" +i+ "\" value=\""+f10+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f11" +i+ "\" value=\""+f11+"\"></td>");
 				out.println("<td><input type=\"text\" name=\"f12" +i+ "\" value=\""+f12+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f13" +i+ "\" value=\""+f13+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f14" +i+ "\" value=\""+f14+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f15" +i+ "\" value=\""+f15+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f16" +i+ "\" value=\""+f16+"\"></td>");	
	    			out.println("<td><input type=\"text\" name=\"f17" +i+ "\" value=\""+f17+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f18" +i+ "\" value=\""+f18+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f19" +i+ "\" value=\""+f19+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f20" +i+ "\" value=\""+f20+"\"></td>");
				out.println("<td ><select name=\"f21" +i+ "\">");
				out.println("<option value=''>------Select------</option>");
				while(rs1910TYPE_OF_EXAMINATIONCBN.next())
					{
						String str1 = rs1910TYPE_OF_EXAMINATIONCBN.getString(1);
						String str2 = rs1910TYPE_OF_EXAMINATIONCBN.getString(2);
        					if(f21.equals(str1))
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
    				out.println("<td><input type=\"text\" name=\"f22" +i+ "\" value=\""+f22+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f23" +i+ "\" value=\""+f23+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f24" +i+ "\" value=\""+f24+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f25" +i+ "\" value=\""+f25+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f26" +i+ "\" value=\""+f26+"\"></td>");	
    				out.println("<td><input type=\"text\" name=\"f27" +i+ "\" value=\""+f27+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f28" +i+ "\" value=\""+f28+"\"></td>");
				out.println("<td><input type=\"text\" name=\"f29" +i+ "\" value=\""+f29+"\"></td>");
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