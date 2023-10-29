<%@ page import="java.sql.*, cbnbas.crms.connect" session="true"%>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
	int cn=0;
	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from crms300");
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
<p align="center"><b><font color="#336699" size="2">CRMS 300 - RETURN FOR CREDIT PROFILE</font></b></p>     
    </td>
    <td><a href='crms300View.jsp'>View List</a></td>
  </tr>
</table>
<br>

<body>
<form method="POST" action="crms300acustomise.jsp">
<div align="center">
    <center>
    <table border="0" cellpadding="2" style="border-collapse: collapse">
     <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">10003 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">CBN BORROWER CODE : </font></b></td>
	  <td><input type="text" name="f1" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">10001 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Borrowers Name : </font></b></td>
        <td><input type="text" name="f2" size="30"></td>

      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">10002 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Short Name : </font></b></td>
        <td><input type="text" name="f3" size="30"></td>


   	</tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30001 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Credit Type : </font></b></td>
        <%
		Statement stCreditType =cnn.createStatement();
		ResultSet rsCreditType = stCreditType.executeQuery("select * from CRMS300CreditType");
		out.println("<td ><select name=\"f4\">");
		out.println("<option value=''>------------Select-------------</option>");
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
		out.println("<td ><select name=\"f5\">");
		out.println("<option value=''>------------Select------------</option>");
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
 	  <td><input type="text" name="f6" size="30"></td>

      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30004 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Outstanding Amount : </font></b></td>
  	  <td><input type="text" name="f7" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30005 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Effective Date : </font></b></td>
 	  <td><input type="text" name="f8" size="30"></td>
      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30006 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Expiry Date : </font></b></td>
	  <td><input type="text" name="f9" size="30"></td>
      </tr>

       <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30007 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Repayment Agreement Mode : </font></b></td>
        <td><input type="text" name="f10" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30008 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Performance Repayment Status : </font></b></td>
        <%
		Statement stRepaymentStatus2 =cnn.createStatement();
		ResultSet rsRepaymentStatus2 = stRepaymentStatus2.executeQuery("select * from CRMS300RepaymentStatus");
		out.println("<td ><select name=\"f11\">");
		out.println("<option value=''>------------Select------------</option>");
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
	  <td><input type="text" name="f12" size="30"></td>
      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30010 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Financial Institution Rating : </font></b></td>
        <%
		Statement stFinInstRating =cnn.createStatement();
		ResultSet rsFinInstRating = stFinInstRating.executeQuery("select * from CRMS400FinInstRating");
		out.println("<td ><select name=\"f13\">");
		out.println("<option value=''>------------Select------------</option>");
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
       <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30011 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Syndication Type : </font></b></td>
        <td><input type="text" name="f14" size="30"></td>

      </tr>
	<tr>
       <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30012 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Syndication Status : </font></b></td>
	  <td><input type="text" name="f15" size="30"></td>
      </tr>
       <tr>
       <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30014 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Security Type : </font></b></td>
	  <td><input type="text" name="f16" size="30"></td>
      </tr>
     <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30015 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Address of Security : </font></b></td>
	  <td><textarea cols="31" rows="1" name="f17"></textarea></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30016 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Owner of Security : </font></b></td>
	  <td><input type="text" name="f18" size="30"></td>
      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30017 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Borrower Code of Security Owner : </font></b></td>
	 <td><input type="text" name="f19" size="30"></td>
      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30018 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Security Value : </font></b></td>
	  <td><input type="text" name="f20" size="30"></td>
      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30019 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Valuer : </font></b></td>
	  <td><input type="text" name="f21" size="30"></td>
      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30020 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Valuation Date : </font></b></td>
	  <td><input type="text" name="f22" size="30"></td>
      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30021 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Expiry Date : </font></b></td>
	  <td><input type="text" name="f23" size="30"></td>
      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30022 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Charged Amount : </font></b></td>
	  <td><input type="text" name="f24" size="30"></td>
      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30023 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Direct Liability - Guarantors Name : </font></b></td>
	  <td><input type="text" name="f25" size="30"></td>
      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30024 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Guarantors ID Details : </font></b></td>
	  <td><input type="text" name="f26" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30025 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Guarantors Code - (If not available system should generate) : </font></b></td>
	  <td><input type="text" name="f27" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30026 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Amount Guaranteed : </font></b></td>
	  <td><input type="text" name="f28" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30027 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Location of Amount Guaranteed  : </font></b></td>
	  <td><input type="text" name="f29" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30028 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Type of Indirect Contingent Liability : </font></b></td>
	  <td><input type="text" name="f30" size="30"></td>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30029 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Details of Contingent Liability : </font></b></td>
	  <td><input type="text" name="f31" size="30"></td>
      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30030 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Value of Contingent Liability : </font></b></td>
	  <td><input type="text" name="f32" size="30"></td>
      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30031 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Expiry Date : </font></b></td>
	 <td><input type="text" name="f33" size="30"></td>
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