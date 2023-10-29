<%@ page import="java.sql.*, cbnbas.crms.connect" session="true"%>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from crms201");
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
<p align="center"><b><font color="#336699" size="2">CRMS 201 - REQUEST FOR DIRECTORS CODE</font></b></p>     
    </td>
    <td><a href='crms201View.jsp'>View List</a></td>
  </tr>
</table>
<br>

<body>
<form method="POST" action="crms201acustomise.jsp">
<div align="center">
    <center>
    <table border="0" cellpadding="2" style="border-collapse: collapse">
     <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">10000 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">CORPORATE BORROWERS CODE : </font></b></td>
	  <td><input type="text" name="f1" size="30"></td>
      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20000 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">DIRECTORS CODE IF EXISTS : </font></b></td>
	  <td><input type="text" name="f2" size="30"></td>
      </tr>
     <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20101 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">DIRECTORS FULLNAME (surname first) : </font></b></td>
	  <td><input type="text" name="f3" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">10002 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Short Name : </font></b></td>
        <td><input type="text" name="f4" size="30"></td>
   	</tr>
	<tr>
       <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">11111 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">ID Type : </font></b></td>
        <%
		Statement stIDType =cnn.createStatement();
		ResultSet rsIDType = stIDType.executeQuery("select * from CRMS201IDType");
		out.println("<td ><select name=\"f5\">");
		out.println("<option value=''>------------Select------------</option>");
		while(rsIDType.next())
			{
				String str1 = rsIDType.getString(1);
				String str2 = rsIDType.getString(2);
				out.println("<option value="+str1+">"+str2+"</option>");
      			out.println("<br>");
			}
		rsIDType.close();
		out.println("</select></td>");
	%>
      </tr>
	<tr>
       <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20113 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">ID Details (International Passport) : </font></b></td>
	  <td><input type="text" name="f6" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20103 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Equity Ownership (%) : </font></b></td>
        <td><input type="text" name="f7" size="30"></td>
	</tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20104 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Position Held / Status : </font></b></td>
        <%
		Statement stPositionHeld =cnn.createStatement();
		ResultSet rsPositionHeld = stPositionHeld.executeQuery("select * from PositionHeldCode");
		out.println("<td ><select name=\"f8\">");
		out.println("<option value=''>------------Select------------</option>");
		while(rsPositionHeld.next())
			{
				String str1 = rsPositionHeld.getString(1);
				String str2 = rsPositionHeld.getString(2);
				out.println("<option value="+str1+">"+str2+"</option>");
      			out.println("<br>");
			}
		rsPositionHeld.close();
		out.println("</select></td>");
	%>


      </tr>
       <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20105 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Liability as guarantor (=N= '000) : </font></b></td>
 	  <td><input type="text" name="f9" size="30"></td>

      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20106 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Nationality (Nigerian/ Foreigner) : </font></b></td>
  	  <%
		Statement stNationality =cnn.createStatement();
		ResultSet rsNationality = stNationality.executeQuery("select * from CRMS201Nationality");
		out.println("<td ><select name=\"f10\">");
		out.println("<option value=''>------------Select------------</option>");
		while(rsNationality.next())
			{
				String str1 = rsNationality.getString(1);
				String str2 = rsNationality.getString(2);
				out.println("<option value="+str1+">"+str2+"</option>");
      			out.println("<br>");
			}
		rsNationality.close();
		out.println("</select></td>");
	%>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20107 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Residential Address : </font></b></td>
 	  <td><input type="text" name="af11" size="30"></td>
      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20108 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Permanent Home Address : </font></b></td>
	  <td><input type="text" name="af12" size="30"></td>
      </tr>
       <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20109 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Postal Address : </font></b></td>
        <td><input type="text" name="af13" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20110 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Date of Birth : </font></b></td>
        <td><input type="text" name="af14" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20111 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">State of Origin : </font></b></td>
	  <%
		Statement stSTATECODES =cnn.createStatement();
		ResultSet rsSTATECODES = stSTATECODES.executeQuery("select * from CRMS100STATECODES");
		out.println("<td ><select name=\"af15\">");
		out.println("<option value=''>------Select------</option>");
		while(rsSTATECODES.next())
			{
				String str1 = rsSTATECODES.getString(1);
				String str2 = rsSTATECODES.getString(2);
				out.println("<option value=\""+str2+"\">"+str2+"</option>");
        			out.println("<br>");

			}
		rsSTATECODES.close();
		out.println("</select></td>");
	%>

      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20112 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Local Govt Area : </font></b></td>
	  <td><input type="text" name="af16" size="30"></td>
      </tr>
	<tr>
       <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20114 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Telephone Number : </font></b></td>
	  <td><input type="text" name="af17" size="30"></td>
      </tr>
     <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20115 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">E - mail Address : </font></b></td>
	  <td><input type="text" name="af18" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">20116 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Profession / Occupation : </font></b></td>
	  <%
		Statement stProfession =cnn.createStatement();
		ResultSet rsProfession = stProfession.executeQuery("select * from CRMS201Profession");
		out.println("<td ><select name=\"af19\">");
		out.println("<option value=''>------------Select------------</option>");
		while(rsProfession.next())
			{
				String str1 = rsProfession.getString(1);
				String str2 = rsProfession.getString(2);
				out.println("<option value="+str1+">"+str2+"</option>");
      			out.println("<br>");
			}
		rsProfession.close();
		out.println("</select></td>");
	%>

      </tr>
	
      <tr>
	  <td align="right">&nbsp;</td>
        <td align="right"><input type="submit" value="Submit" name="B1" onclick="return validateEntry()"></td>
        <td><input type="reset" value="Reset" name="B2"></td>
      </tr>
    </table>
<%
int ccn=cn;
out.println("<input type=\"text\" name=\"cnt\" value="+ccn+">");
%>
    </center>
  </div>
<hr>
  <p>&nbsp;</p>
</form>
<p>&nbsp;</p>

</body>

</html>