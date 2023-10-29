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
<p align="center"><b><font color="#336699" size="2">CRMS 301 - RESTRUCTURED CREDIT PROFILE</font></b></p>     
    </td>
    <td><a href='crms301View.jsp'>View List</a></td>
  </tr>
</table>
<br>

<body>
<form method="POST" action="crms301acustomise.jsp">
<div align="center">
    <center>
    <table border="0" cellpadding="2" style="border-collapse: collapse">
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30013 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Credit Loan ID (to bve entered by F.I) : </font></b></td>
        <td><input type="text" name="f1" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">10003 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">CBN BORROWER CODE : </font></b></td>
        <td><input type="text" name="f2" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">10001 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Borrowers Name : </font></b></td>
        <td><input type="text" name="f3" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">10002 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Short Name : </font></b></td>
	  <td><input type="text" name="f4" size="30"></td>
   	</tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30001 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Credit Type : </font></b></td>
        <%
		Statement stCreditType =cnn.createStatement();
		ResultSet rsCreditType = stCreditType.executeQuery("select * from CRMS300CreditType");
		out.println("<td ><select name=\"f5\">");
		out.println("<option value=''>------Select------</option>");
		while(rsCreditType.next())
			{
				String str1 = rsCreditType.getString(1);
				String str2 = rsCreditType.getString(2);
				out.println("<option value="+str1+">"+str2+"</option>");
      			out.println("<br>");
			}
		rsCreditType.close();
		out.println("</select></td>");
	%>
	</tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30002 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Credit Purpose : </font></b></td>
        <%
		Statement stCreditPurpose =cnn.createStatement();
		ResultSet rsCreditPurpose = stCreditPurpose.executeQuery("select * from CRMS300CreditPurpose");
		out.println("<td ><select name=\"f6\">");
		out.println("<option value=''>------Select------</option>");
		while(rsCreditPurpose.next())
			{
				String str1 = rsCreditPurpose.getString(1);
				String str2 = rsCreditPurpose.getString(2);
				out.println("<option value="+str1+">"+str2+"</option>");
      			out.println("<br>");
			}
		rsCreditPurpose.close();
		out.println("</select></td>");
	%>

      </tr>
       <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30003 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Credit Limit : </font></b></td>
        <td><input type="text" name="f7" size="30"></td>
      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30004 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Outstanding Amount : </font></b></td>
        <td><input type="text" name="f8" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30007 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Repayment Agreement Mode : </font></b></td>
        <td><input type="text" name="f9" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30008 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Performance Repayment Status : </font></b></td>
        <%
		Statement stRepaymentStatus2 =cnn.createStatement();
		ResultSet rsRepaymentStatus2 = stRepaymentStatus2.executeQuery("select * from CRMS300RepaymentStatus");
		out.println("<td ><select name=\"f10\">");
		out.println("<option value=''>------Select------</option>");
		while(rsRepaymentStatus2.next())
			{
				String str1 = rsRepaymentStatus2.getString(1);
				String str2 = rsRepaymentStatus2.getString(2);
				out.println("<option value="+str1+">"+str2+"</option>");
      			out.println("<br>");
			}
		rsRepaymentStatus2.close();
		out.println("</select></td>");
	%>

      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30009 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Interest rate : </font></b></td>
        <td><input type="text" name="af11" size="30"></td>
      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30010 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Financial Institution Rating : </font></b></td>
        <%
		Statement stFinInstRating =cnn.createStatement();
		ResultSet rsFinInstRating = stFinInstRating.executeQuery("select * from CRMS400FinInstRating");
		out.println("<td ><select name=\"af12\">");
		out.println("<option value=''>------Select------</option>");
		while(rsFinInstRating.next())
			{
				String str1 = rsFinInstRating.getString(1);
				String str2 = rsFinInstRating.getString(2);
				out.println("<option value="+str1+">"+str2+"</option>");
      			out.println("<br>");
			}
		rsFinInstRating.close();
		out.println("</select></td>");
	%>

      </tr>

       <tr>
       <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30014 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Security Type : </font></b></td>
        <td><input type="text" name="af13" size="30"></td>
      </tr>
     <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30015 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Details of Security : </font></b></td>
        <td><input type="text" name="af14" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30016 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Owner of Security : </font></b></td>
        <td><input type="text" name="af15" size="30"></td>
      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30017 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Borrower Code of Security Owner : </font></b></td>
        <td><input type="text" name="af16" size="30"></td>
      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30018 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Security Value : </font></b></td>
        <td><input type="text" name="af17" size="30"></td>
      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30019 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Valuer : </font></b></td>
        <td><input type="text" name="af18" size="30"></td>
      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30020 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Valuation Date : </font></b></td>
        <td><input type="text" name="af19" size="30"></td>
      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30021 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Expiry Date : </font></b></td>
        <td><input type="text" name="af20" size="30"></td>
      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30022 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Charged Amount : </font></b></td>
        <td><input type="text" name="bf21" size="30"></td>
      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30301 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Date of restructure : </font></b></td>
        <td><input type="text" name="bf22" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30302 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Previous Limit : </font></b></td>
        <td><input type="text" name="bf23" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30303 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Restructure Limit : </font></b></td>
        <td><input type="text" name="bf24" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30304 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Outstanding Amount : </font></b></td>
        <td><input type="text" name="bf25" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30305 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Expiry Date : </font></b></td>
        <td><input type="text" name="bf26" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30306 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Repayment Agreement / Mode After: </font></b></td>
        <td><input type="text" name="bf27" size="30"></td>
      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30307 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Performance / Repayment Status After: </font></b></td>
        <%
		Statement stRepaymentStatus3 =cnn.createStatement();
		ResultSet rsRepaymentStatus3 = stRepaymentStatus3.executeQuery("select * from CRMS300RepaymentStatus");
		out.println("<td ><select name=\"bf28\">");
		out.println("<option value=''>------Select------</option>");
		while(rsRepaymentStatus3.next())
			{
				String str1 = rsRepaymentStatus3.getString(1);
				String str2 = rsRepaymentStatus3.getString(2);
				out.println("<option value="+str1+">"+str2+"</option>");
      			out.println("<br>");
			}
		rsRepaymentStatus3.close();
		stRepaymentStatus3.close();
		out.println("</select></td>");
	%>

      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30308 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Interest Rate : </font></b></td>
        <td><input type="text" name="bf29" size="30"></td>
      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30309 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Reason(s) for restucturing : </font></b></td>
        <td><input type="text" name="bf30" size="30"></td>
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