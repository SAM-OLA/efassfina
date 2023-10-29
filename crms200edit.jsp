<%@ page import="java.sql.*, cbnbas.crms.connect" session="true"%>
<%!
	String code, source;
%>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
		code =request.getParameter("target");
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from crms200");
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
<title>Cube CBN EFASS System</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">


<!--mstheme--><link rel="stylesheet" href="file:///C:/DOCUME~1/FAVOUR~1/LOCALS~1/Temp/FrontPageTempDir/mstheme/poetic/poet1111.css">


<meta name="Microsoft Theme" content="poetic 1111, default">
<script>
function validateEntry()
{
	if(document.forms[0].T1.value.length<1 || document.forms[0].T2.value.length<1 || document.forms[0].T3.value.length<1)
	{
		alert("Please fill all entries!");
		return false;
	}
	else if(document.forms[0].T2.value!=document.forms[0].T3.value)
	{
		alert("Password and Re-password are not same\nPlease verify")
		document.forms[0].T2.value="";
		document.forms[0].T3.value="";
		return false;
	}
	else
		return true;
}
</script>
</head>
<jsp:include flush="true" page="header.jsp"/>
<br>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="1154">
  <tr>
    <td width="75">
    <b><font color="#336699" size="2">
    <a href='crmstoc.jsp'>CRMS TOC</a> </font></b> </td>
    <td width="985">
<p align="center"><b><font color="#336699" size="2">CRMS 200 - RETURN FOR CORPORATE BORROWER CODE</font></b></p>     
    </td>
    <td><a href='crms200View.jsp'>View List</a></td>
  </tr>
</table>
<br>

<body>
<form method="POST" action="crms200update.jsp">
<div align="center">
    <center>
<%
	PreparedStatement pst=cnn.prepareStatement("select * from crms200 where S_NO = ?");
	pst.setString(1, code);
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
%>


    <table border="0" cellpadding="2" style="border-collapse: collapse">
     <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20001 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Borrowers Business Name : </font></b></td>
	<%
		out.print("<td><input type=text name='f1' size='30' value=\""+rs.getString(2)+"\"></td>");
	%>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">10002 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Short Name : </font></b></td>
	<%
		out.print("<td><input type=text name='f2' size='30' value=\""+rs.getString(3)+"\"></td>");
	%>
   	</tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20004 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Business Status : </font></b></td>
        <%
		String f3 = rs.getString(4);
		Statement stBusinessStatus =cnn.createStatement();
		ResultSet rsBusinessStatus = stBusinessStatus.executeQuery("select * from CRMS200BusinessStatus");
		out.println("<td ><select name=\"f3\">");
		out.println("<option value=''>------------Select------------</option>");
		while(rsBusinessStatus.next())
			{
				String str1 = rsBusinessStatus.getString(1);
				String str2 = rsBusinessStatus.getString(2);
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
		rsBusinessStatus.close();
		out.println("</select></td>");
	%>
	</tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20005 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Business Occupation Type : </font></b></td>
        <%
		String f4 = rs.getString(5);
		Statement stBusinessOccupation =cnn.createStatement();
		ResultSet rsBusinessOccupation = stBusinessOccupation.executeQuery("select * from CRMS200BusinessOccupation");
		out.println("<td ><select name=\"f4\">");
		out.println("<option value=''>------------Select------------</option>");
		while(rsBusinessOccupation.next())
			{
				String str1 = rsBusinessOccupation.getString(1);
				String str2 = rsBusinessOccupation.getString(2);
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
		rsBusinessOccupation.close();
		out.println("</select></td>");
	%>
      </tr>
	<tr>
       <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">11111 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">ID Type : </font></b></td>
        <%
		String f5 = rs.getString(6);
		Statement stIDType =cnn.createStatement();
		ResultSet rsIDType = stIDType.executeQuery("select * from CRMS200IDType");
		out.println("<td ><select name=\"f5\">");
		out.println("<option value=''>------------Select------------</option>");
		while(rsIDType.next())
			{
				String str1 = rsIDType.getString(1);
				String str2 = rsIDType.getString(2);
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
		rsIDType.close();
		out.println("</select></td>");
	%>


      </tr>
       <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20006 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">ID Details : Regn Certificate No : </font></b></td>
	<%
		out.print("<td><input type=text name='f6' size='30' value=\""+rs.getString(7)+"\"></td>");
	%>

      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20007 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Date of Registration : </font></b></td>
	<%
		out.print("<td><input type=text name='f7' size='30' value=\""+rs.getString(8)+"\"></td>");
	%>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20008 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Registered Business Name : </font></b></td>
	<%
		out.print("<td><input type=text name='f8' size='30' value=\""+rs.getString(9)+"\"></td>");
	%>

      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20009 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Current Business Address : </font></b></td>
	<%
		out.print("<td><input type=text name='f9' size='30' value=\""+rs.getString(10)+"\"></td>");
	%>

      </tr>
       <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20010 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Postal Address : </font></b></td>
	<%
		out.print("<td><input type=text name='f10' size='30' value=\""+rs.getString(11)+"\"></td>");
	%>

      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20011 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Telephone Number : </font></b></td>
	<%
		out.print("<td><input type=text name='af11' size='30' value=\""+rs.getString(12)+"\"></td>");
	%>

      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20012 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">E - Mail Address : </font></b></td>
	<%
		out.print("<td><input type=text name='af12' size='30' value=\""+rs.getString(13)+"\"></td>");
	%>

      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20013 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Bankers : </font></b></td>
	<%
		out.print("<td><input type=text name='af13' size='30' value=\""+rs.getString(14)+"\"></td>");
	%>

      </tr>
	
	<tr>
       <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20014 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Referees : </font></b></td>
	<%
		out.print("<td><input type=text name='af14' size='30' value=\""+rs.getString(15)+"\"></td>");
	%>

      </tr>
       <tr>
       <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20015 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Financial Year End : </font></b></td>
	<%
		out.print("<td><input type=text name='af15' size='30' value=\""+rs.getString(16)+"\"></td>");
	%>

      </tr>
     <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20016 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Last audited unaudited account date : </font></b></td>
	<%
		out.print("<td><input type=text name='af16' size='30' value=\""+rs.getString(17)+"\"></td>");
	%>

      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20017 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Authorised Capital : </font></b></td>
	<%
		out.print("<td><input type=text name='af17' size='30' value=\""+rs.getString(18)+"\"></td>");
	%>

      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20018 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Paid-Up Capital (=N= '000) : </font></b></td>
	<%
		out.print("<td><input type=text name='af18' size='30' value=\""+rs.getString(19)+"\"></td>");
	%>

      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20019 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Reserves (=N= '000): </font></b></td>
	<%
		out.print("<td><input type=text name='af19' size='30' value=\""+rs.getString(20)+"\"></td>");
	%>

      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20020 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Unappropriated profit accumulated loss (=N= '000) : </font></b></td>
	<%
		out.print("<td><input type=text name='af20' size='30' value=\""+rs.getString(21)+"\"></td>");
	%>

      </tr>
<%}%>

      <tr>
	  <td align="right">&nbsp;</td>
        <td align="right"><input type="submit" value="Submit" name="B1" onclick="return validateEntry()"></td>
        <td><input type="reset" value="Reset" name="B2"></td>
      </tr>
    </table>
<%
int ccn=cn;
out.println("Record : <input type=\"text\" size=\"10\" name=\"cnt\" value="+code+">");
out.print("of : <input type=text size='10' value="+ccn+">");
%>
    </center>
  </div>
<hr>
  <p>&nbsp;</p>
</form>
<p>&nbsp;</p>

</body>

</html>