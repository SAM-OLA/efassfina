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
<form method="POST" action="crms300update.jsp">
<div align="center">
    <center>
<%
	PreparedStatement pst=cnn.prepareStatement("select * from crms300 where S_NO = ?");
	pst.setString(1, code);
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
%>

    <table border="0" cellpadding="2" style="border-collapse: collapse">
     <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">10003 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">CBN BORROWER CODE : </font></b></td>
	<%
		out.print("<td><input type=text name='f1' size='30' value=\""+rs.getString(2)+"\"></td>");
	%>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">10001 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Borrowers Name : </font></b></td>
	<%
		out.print("<td><input type=text name='f2' size='30' value=\""+rs.getString(3)+"\"></td>");
	%>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">10002 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Short Name : </font></b></td>
	<%
		out.print("<td><input type=text name='f3' size='30' value=\""+rs.getString(4)+"\"></td>");
	%>

   	</tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30001 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Credit Type : </font></b></td>
        <%
		String f4 = rs.getString(5);
		Statement stCreditType =cnn.createStatement();
		ResultSet rsCreditType = stCreditType.executeQuery("select * from CRMS300CreditType");
		out.println("<td ><select name=\"f4\">");
		out.println("<option value=''>------Select------</option>");
		while(rsCreditType.next())
			{
				String str1 = rsCreditType.getString(1);
				String str2 = rsCreditType.getString(2);
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
		rsCreditType.close();
		out.println("</select></td>");
	%>
	</tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30002 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Credit Purpose : </font></b></td>
        <%
		String f5 = rs.getString(6);
		Statement stCreditPurpose =cnn.createStatement();
		ResultSet rsCreditPurpose = stCreditPurpose.executeQuery("select * from CRMS300CreditPurpose");
		out.println("<td ><select name=\"f5\">");
		out.println("<option value=''>------Select------</option>");
		while(rsCreditPurpose.next())
			{
				String str1 = rsCreditPurpose.getString(1);
				String str2 = rsCreditPurpose.getString(2);
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
		rsCreditPurpose.close();
		out.println("</select></td>");
	%>

      </tr>
       <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30003 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Credit Limit : </font></b></td>
	<%
		out.print("<td><input type=text name='f6' size='30' value=\""+rs.getString(7)+"\"></td>");
	%>
      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30004 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Outstanding Amount : </font></b></td>
	<%
		out.print("<td><input type=text name='f7' size='30' value=\""+rs.getString(8)+"\"></td>");
	%>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30005 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Effective Date : </font></b></td>
	<%
		out.print("<td><input type=text name='f8' size='30' value=\""+rs.getString(9)+"\"></td>");
	%>

      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30006 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Expiry Date : </font></b></td>
	<%
		out.print("<td><input type=text name='f9' size='30' value=\""+rs.getString(10)+"\"></td>");
	%>

      </tr>

       <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30007 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Repayment Agreement Mode : </font></b></td>
        <%
		out.print("<td><input type=text name='f10' size='30' value=\""+rs.getString(11)+"\"></td>");
	%>



      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30008 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Performance Repayment Status : </font></b></td>
        <%
		String f11 = rs.getString(12);
		Statement stRepaymentStatus2 =cnn.createStatement();
		ResultSet rsRepaymentStatus2 = stRepaymentStatus2.executeQuery("select * from CRMS300RepaymentStatus");
		out.println("<td ><select name=\"af11\">");
		out.println("<option value=''>------Select------</option>");
		while(rsRepaymentStatus2.next())
			{
				String str1 = rsRepaymentStatus2.getString(1);
				String str2 = rsRepaymentStatus2.getString(2);
				if(f11.equals(str1))
        			{
					out.println("<option selected value=\""+str1+"\">"+str2+"</option>");
        			}
        			else
        			{
          				out.println("<option value=\""+str1+"\">"+str2+"</option>");
        			}
      			out.println("<br>");

			}
		rsRepaymentStatus2.close();
		out.println("</select></td>");
	%>

      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30009 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Interest rate : </font></b></td>
	<%
		out.print("<td><input type=text name='af12' size='30' value=\""+rs.getString(13)+"\"></td>");
	%>

      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30010 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Financial Institution Rating : </font></b></td>
        <%
		String f13 = rs.getString(14);
		Statement stFinInstRating =cnn.createStatement();
		ResultSet rsFinInstRating = stFinInstRating.executeQuery("select * from CRMS300FinInstRating");
		out.println("<td ><select name=\"af13\">");
		out.println("<option value=''>------Select------</option>");
		while(rsFinInstRating.next())
			{
				String str1 = rsFinInstRating.getString(1);
				String str2 = rsFinInstRating.getString(2);
				if(f13.equals(str1))
        			{
					out.println("<option selected value=\""+str1+"\">"+str2+"</option>");
        			}
        			else
        			{
          				out.println("<option value=\""+str1+"\">"+str2+"</option>");
        			}
      			out.println("<br>");

			}
		rsFinInstRating.close();
		out.println("</select></td>");
	%>

      </tr>
	<tr>
       <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30011 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Syndication Type : </font></b></td>
	  <%
		String f14 = rs.getString(15);
		Statement stSyndicationType =cnn.createStatement();
		ResultSet rsSyndicationType = stSyndicationType.executeQuery("select * from CRMS300SyndicationType2");
		out.println("<td ><select name=\"af14\">");
		out.println("<option value=''>------Select------</option>");
		while(rsSyndicationType.next())
			{
				String str1 = rsSyndicationType.getString(1);
				String str2 = rsSyndicationType.getString(2);
				if(f14.equals(str1))
        			{
					out.println("<option selected value=\""+str1+"\">"+str2+"</option>");
        			}
        			else
        			{
          				out.println("<option value=\""+str1+"\">"+str2+"</option>");
        			}
      			out.println("<br>");

			}
		rsSyndicationType.close();
		out.println("</select></td>");
	%>


      </tr>
	<tr>
       <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30012 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Syndication Status : </font></b></td>
    	 <%
		String f15 = rs.getString(16);
		Statement stSyndicationType1 =cnn.createStatement();
		ResultSet rsSyndicationType1 = stSyndicationType1.executeQuery("select * from CRMS300SyndicationType");
		out.println("<td ><select name=\"af15\">");
		out.println("<option value=''>------Select------</option>");
		while(rsSyndicationType1.next())
			{
				String str1 = rsSyndicationType1.getString(1);
				String str2 = rsSyndicationType1.getString(2);
				if(f15.equals(str1))
        			{
					out.println("<option selected value=\""+str1+"\">"+str2+"</option>");
        			}
        			else
        			{
          				out.println("<option value=\""+str1+"\">"+str2+"</option>");
        			}
      			out.println("<br>");

			}
		rsSyndicationType1.close();
		out.println("</select></td>");
	 %>


      </tr>
       <tr>
       <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30014 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Security Type : </font></b></td>
	<%
		String f16 = rs.getString(17);
		Statement stSecurityType =cnn.createStatement();
		ResultSet rsSecurityType = stSyndicationType.executeQuery("select * from CRMS300SecurityType");
		out.println("<td ><select name=\"af16\">");
		out.println("<option value=''>------Select------</option>");
		while(rsSecurityType.next())
			{
				String str1 = rsSecurityType.getString(1);
				String str2 = rsSecurityType.getString(2);
				if(f16.equals(str1))
        			{
					out.println("<option selected value=\""+str1+"\">"+str2+"</option>");
        			}
        			else
        			{
          				out.println("<option value=\""+str1+"\">"+str2+"</option>");
        			}
      			out.println("<br>");

			}
		rsSecurityType.close();
		out.println("</select></td>");
	%>


      </tr>
     <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30015 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Address of Security : </font></b></td>
	<%
		out.print("<td><textarea cols='31' rows='1' name='af17'>"+rs.getString(18)+"</textarea></td>");
	%>

      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30016 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Owner of Security : </font></b></td>
	<%
		out.print("<td><input type=text name='af18' size='30' value=\""+rs.getString(19)+"\"></td>");
	%>

      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30017 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Borrower Code of Security Owner : </font></b></td>
	<%
		out.print("<td><input type=text name='af19' size='30' value=\""+rs.getString(20)+"\"></td>");
	%>

      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30018 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Security Value : </font></b></td>
	<%
		out.print("<td><input type=text name='af20' size='30' value=\""+rs.getString(21)+"\"></td>");
	%>

      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30019 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Valuer : </font></b></td>
	<%
		String f21 = rs.getString(22);
		Statement stValuerCode =cnn.createStatement();
		ResultSet rsValuerCode = stValuerCode.executeQuery("select * from ValuerCode");
		out.println("<td ><select name=\"bf21\">");
		out.println("<option value=''>------Select------</option>");
		while(rsValuerCode.next())
			{
				String str1 = rsValuerCode.getString(1);
				String str2 = rsValuerCode.getString(2);
				if(f21.equals(str1))
        			{
					out.println("<option selected value=\""+str1+"\">"+str2+"</option>");
        			}
        			else
        			{
          				out.println("<option value=\""+str1+"\">"+str2+"</option>");
        			}
      			out.println("<br>");

			}
		rsValuerCode.close();
		out.println("</select></td>");
	%>


      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30020 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Valuation Date : </font></b></td>
	<%
		out.print("<td><input type=text name='bf22' size='30' value=\""+rs.getString(23)+"\"></td>");
	%>

      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30021 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Expiry Date : </font></b></td>
	<%
		out.print("<td><input type=text name='bf23' size='30' value=\""+rs.getString(24)+"\"></td>");
	%>
      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30022 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Charged Amount : </font></b></td>
	<%
		out.print("<td><input type=text name='bf24' size='30' value=\""+rs.getString(25)+"\"></td>");
	%>

      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30023 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Direct Liability - Guarantors Name : </font></b></td>
	<%
		out.print("<td><input type=text name='bf25' size='30' value=\""+rs.getString(26)+"\"></td>");
	%>

      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30024 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Guarantors ID Details : </font></b></td>
	<%
		out.print("<td><input type=text name='bf26' size='30' value=\""+rs.getString(27)+"\"></td>");
	%>

      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30025 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Guarantors Code - (If not available system should generate) : </font></b></td>
	<%
		out.print("<td><input type=text name='bf27' size='30' value=\""+rs.getString(28)+"\"></td>");
	%>

      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30026 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Amount Guaranteed : </font></b></td>
	<%
		out.print("<td><input type=text name='bf28' size='30' value=\""+rs.getString(29)+"\"></td>");
	%>

      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30027 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Location of Amount Guaranteed  : </font></b></td>
	<%
		out.print("<td><input type=text name='bf29' size='30' value=\""+rs.getString(30)+"\"></td>");
	%>

      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30028 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Type of Indirect Contingent Liability : </font></b></td>
	<%
		out.print("<td><input type=text name='bf30' size='30' value=\""+rs.getString(31)+"\"></td>");
	%>

      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30029 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Details of Contingent Liability : </font></b></td>
	<%
		out.print("<td><input type=text name='cf31' size='30' value=\""+rs.getString(32)+"\"></td>");
	%>

      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30030 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Value of Contingent Liability : </font></b></td>
	<%
		out.print("<td><input type=text name='cf32' size='30' value=\""+rs.getString(33)+"\"></td>");
	%>

      </tr>
	<tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30031 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Expiry Date : </font></b></td>
	<%
		out.print("<td><input type=text name='cf33' size='30' value=\""+rs.getString(34)+"\"></td>");
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