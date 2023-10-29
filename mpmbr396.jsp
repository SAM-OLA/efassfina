<!--
@author D & T Solutions

-->
<%@ page import="java.sql.*, cbnbas.mpmbr.connect"%>
<%!
	Connection cn=null;
	PreparedStatement pst=null;
	int recCnt=0;
	int cnt=0;
	String source="";
	String code="";
%>
<%
		connect c = new connect();
   		cn = c.connectMethod();
//get expected correspondin data from 300Data

	pst=cn.prepareStatement("select [Value] from mpmbr300Data where Code = '20200'");
	ResultSet rs1=pst.executeQuery();
	rs1.next();
%>
<html>

<head>
<title>Cube CBN EFASS System - MPMBR 396</title>







<meta name="Microsoft Theme" content="poetic 1111, default">
</head>

<center>
<jsp:include flush="true" page="header.jsp"/>
<body>

<p class="MsoNormal"><b><font color="#336699" size="2">FUND SOURCES AND INTEREST 
COSTS - MPMBR - 396</font></b></p>
<form method="POST" action="mpmbr396Customise.jsp">
<pre><b>Note:-</b> Total [OUTSTANDING_AT_ENDOFMONTH] value at Code(s): [70160,70260,70310] must be: <b><%=rs1.getInt(1)%></b> at 70400</pre>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="AutoNumber1" width="30%">
    <tr>
      <td valign="bottom"><b><font color="#336699" size="2">Code</font></b></td>
      <td valign="bottom"><b><font color="#336699" size="2">Sources of Funds</font></b></td>
      <td valign="bottom"><b><font color="#336699" size="2">Outstanding at Beginning of the Month</font></b></td>
      <td valign="bottom"><b><font color="#336699" size="2">Outstanding at End of the Month</font></b></td>
      <td valign="bottom"><b><font color="#336699" size="2">Average Opening &amp; Closing Balances
      </font> </b></td>
      <td valign="bottom"><b><font color="#336699" size="2">Interest Paid/Payable During the Month</font></b></td>
    </tr>
<%
	try
	{
		pst=cn.prepareStatement("select * from mpmbr396");
		ResultSet rs=pst.executeQuery();

		cnt=0;
		while(rs.next())
		{
			code=rs.getString(1);
			if(code.equals("70160") || code.equals("70260") || code.equals("70400"))
			{
%>
    <tr bgcolor="blue">
      <td><input type="text" name="code<%=cnt%>" size="10" value="<%=code%>" readonly></td>
      <td><input type="text" name="desc<%=cnt%>" size="50" value="<%=rs.getString(2)%>" readonly></td>
      <td><input type="text" name="bom<%=cnt%>" size="15" value="<%=rs.getString(3)%>" readonly></td>
      <td><input type="text" name="eom<%=cnt%>" size="15" value="<%=rs.getString(4)%>" readonly></td>
      <td><input type="text" name="avgbal<%=cnt%>" size="15" value="<%=rs.getString(5)%>" readonly></td>
      <td>
      <input type="text" name="interestrate<%=cnt%>" size="15" value="<%=rs.getString(6)%>" readonly></td>
    </tr>
<%
			}
			else
			{
%>
    <tr>
      <td><input type="text" name="code<%=cnt%>" size="10" value="<%=code%>"></td>
      <td><input type="text" name="desc<%=cnt%>" size="50" value="<%=rs.getString(2)%>"></td>
      <td><input type="text" name="bom<%=cnt%>" size="15" value="<%=rs.getString(3)%>"></td>
      <td><input type="text" name="eom<%=cnt%>" size="15" value="<%=rs.getString(4)%>"></td>
      <td bgcolor="blue"><input type="text" name="avgbal<%=cnt%>" size="15" value="<%=rs.getString(5)%>" readonly></td>
      <td>
      <input type="text" name="interestrate<%=cnt%>" size="15" value="<%=rs.getString(6)%>"></td>
    </tr>
<%
			}
			cnt++;
		}
	}
	catch(Exception e)
	{
		out.println("Error: "+e.toString());
	}
	cn.close();
%>
  </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
<input type="hidden" name="rowcount" value="<%=cnt%>" size="20">
</form>
<p>&nbsp;</p>

</body>

</html>
