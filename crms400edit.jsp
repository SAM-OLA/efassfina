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
<p align="center"><b><font color="#336699" size="2">CRMS 400 - MONTHLY UPDATE ON CREDIT PROFILE</font></b></p>     
    </td>
    <td><a href='crms400View.jsp'>View List</a></td>
  </tr>
</table>
<br>

<body>
<form method="POST" action="crms400update.jsp">
<div align="center">
    <center>
<%
	PreparedStatement pst=cnn.prepareStatement("select * from crms400 where S_NO = ?");
	pst.setString(1, code);
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
%>

    <table border="0" cellpadding="2" style="border-collapse: collapse">
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30013 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Credit Loan ID (to bve entered by F.I) : </font></b></td>
	<%
		out.print("<td><input type=text name='f1' size='30' value=\""+rs.getString(2)+"\"></td>");
	%>
      </tr>
      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">10003 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">CBN BORROWER CODE : </font></b></td>
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
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30004 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Outstanding Amount : </font></b></td>
	<%
		out.print("<td><input type=text name='f4' size='30' value=\""+rs.getString(5)+"\"></td>");
	%>

      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">30008 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Performance Repayment Status : </font></b></td>
        <%
		String f5 = rs.getString(6);
		Statement stRepaymentStatus2 =cnn.createStatement();
		ResultSet rsRepaymentStatus2 = stRepaymentStatus2.executeQuery("select * from CRMS300RepaymentStatus");
		out.println("<td ><select name=\"f5\">");
		out.println("<option value=''>------Select------</option>");
		while(rsRepaymentStatus2.next())
			{
				String str1 = rsRepaymentStatus2.getString(1);
				String str2 = rsRepaymentStatus2.getString(2);
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
		rsRepaymentStatus2.close();
		out.println("</select></td>");
	%>

      </tr>

      <tr>
        <td align="right"><b><font title="Allows you specify the corresponding values for each CBN item per report">40001 - </font></b></td>
        <td align="left"><b><font title="Allows you specify the corresponding values for each CBN item per report">Movement Type : </font></b></td>
	<%
		String f6 = rs.getString(7);
		Statement stMovementType =cnn.createStatement();
		ResultSet rsMovementType = stMovementType.executeQuery("select * from MovementType");
		out.println("<td ><select name=\"f6\">");
		out.println("<option value=''>------Select------</option>");
		while(rsMovementType.next())
			{
				String str1 = rsMovementType.getString(1);
				String str2 = rsMovementType.getString(2);
				if(f6.equals(str1))
        			{
					out.println("<option selected value=\""+str1+"\">"+str2+"</option>");
        			}
        			else
        			{
          				out.println("<option value=\""+str1+"\">"+str2+"</option>");
        			}
      			out.println("<br>");

			}
		rsMovementType.close();
		out.println("</select></td>");
	%>


      </tr>

<%}%>
	
      <tr>
  	 <td align="right"><input type="submit" value="Submit" name="B1" onclick="return validateEntry()"></td>
        <td><input type="reset" value="Reset" name="B2"></td>
      </tr>
    </table>
<br>
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