<%@ page import="java.sql.*, cbnbas.crms.connect" session="true"%>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from crms400");
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
<title>Cube CBN EFASS System - Admin Console Create User</title>
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
<p align="center"><b><font color="#336699" size="2">CRMS 400 - MONTHLY UPDATE ON CREDIT PROFILE</font></b></p>     
    </td>
    <td><a href='crms400View.jsp'>View List</a></td>
  </tr>
</table>
<br>

<body>
<form method="POST" action="crms400acustomise.jsp">
<div align="center">
    <center>
    <table border="0" cellpadding="2" style="border-collapse: collapse">
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30013 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Credit Loan ID (to be entered by F.I) : </font></b></td>
        <td><input type="text" name="f1" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">10003 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">CBN BORROWER CODE : </font></b></td>
        <td><input type="text" name="f2" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">10002 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Short Name : </font></b></td>
	  <td><input type="text" name="f3" size="30"></td>
   	</tr>
      
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30004 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Outstanding Amount : </font></b></td>
        <td><input type="text" name="f4" size="30"></td>
      </tr>

       <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30007 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Repayment Agreement Status : </font></b></td>
        <%
		Statement stRepaymentStatus1 =cnn.createStatement();
		ResultSet rsRepaymentStatus1 = stRepaymentStatus1.executeQuery("select * from CRMS300RepaymentStatus");
		out.println("<td ><select name=\"f5\">");
		out.println("<option value=''>------------Select------------</option>");
		while(rsRepaymentStatus1.next())
			{
				String str1 = rsRepaymentStatus1.getString(1);
				String str2 = rsRepaymentStatus1.getString(2);
				out.println("<option value="+str1+">"+str2+"</option>");
      			out.println("<br>");
			}
		rsRepaymentStatus1.close();
		out.println("</select></td>");
	%>

      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30008 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Movement Type : </font></b></td>
        <%
		Statement stMovementType =cnn.createStatement();
		ResultSet rsMovementType = stMovementType.executeQuery("select * from MovementType");
		out.println("<td ><select name=\"f6\">");
		out.println("<option value=''>------------Select------------</option>");
		while(rsMovementType.next())
			{
				String str1 = rsMovementType.getString(1);
				String str2 = rsMovementType.getString(2);
				out.println("<option value="+str1+">"+str2+"</option>");
      			out.println("<br>");
			}
		rsMovementType.close();
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