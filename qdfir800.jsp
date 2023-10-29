<!--
@author D & T Solutions
-->
<%@ page import="java.sql.*, cbnbas.qdfir.connect"%>
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

	pst=cn.prepareStatement("select [Value] from qdfir300Data where Code='10710'");
	ResultSet rs1=pst.executeQuery();
	rs1.next();
%>
<html>
<head>
<title>Cube CBN EFASS System - qdfir 800</title>







<!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
</head>

<center>
<jsp:include flush="true" page="header.jsp"/>
<body>

<p class="MsoNormal"><b><font color="#336699" size="2">MONTHLY RETURN ON DEPOSIT OWNERSHIP - qdfir 800</font></b></p>
<form method="POST" action="qdfir800Customise.jsp">
<pre><b>Note:-</b> Total [TOTAL_DEPOSITS] must be: <b><%=rs1.getInt(1)%></b> at Code: 61600</pre>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" id="AutoNumber1" height="45">
    <tr>
      <td width="4%" height="22" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Code</font></b></td>
      <td width="4%" height="22" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Customers</font></b></td>
      <td width="4%" height="22" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Source</font></b></td>
      <td width="4%" height="22" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Demand</font></b></td>
      <td width="4%" height="22" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Source</font></b></td>
      <td width="4%" height="22" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Savings</font></b></td>
      <td width="4%" height="22" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Source</font></b></td>
      <td width="4%" height="22" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Up to 90 Days</font></b></td>
      <td width="4%" height="22" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Source</font></b></td>
      <td width="4%" height="22" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">91 - 180 Days</font></b></td>
      <td width="5%" height="22" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Source</font></b></td>
      <td width="5%" height="22" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">181 - 365 Days</font></b></td>
      <td width="5%" height="22" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Source</font></b></td>
      <td width="5%" height="22" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Over 365 Days</font></b></td>

      <td width="5%" height="22" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Total Deposits</font></b></td>
    </tr>
<%
	try
	{
		pst=cn.prepareStatement("select * from qdfir800");
		ResultSet rs=pst.executeQuery();

		cnt=0;
		while(rs.next())
		{
			code=rs.getString(1);
			if(code.equals("61600"))
			{
%>
    <tr bgcolor="blue">
      <td width="4%" height="22"><input type="text" name="code<%=cnt%>" size="10" value="<%=code%>" readonly></td>
      <td width="4%" height="22"><input type="text" name="customers<%=cnt%>" size="50" value="<%=rs.getString(2)%>" readonly></td>
      <td width="4%" height="22"><select size="1" name="source1" disabled>
      <option value="1">GL Code</option>
      <option selected value="2">Compute</option>
      <option value="3">Direct</option>
      </select></td>
      <td width="4%" height="22"><input type="text" name="demand<%=cnt%>" size="10" value="<%=rs.getString(4)%>" readonly></td>
      <td width="4%" height="22"><select size="1" name="source2" disabled>
      <option value="1">GL Code</option>
      <option selected value="2">Compute</option>
      <option value="3">Direct</option>
      </select></td>
      <td width="4%" height="22"><input type="text" name="savings<%=cnt%>" size="10" value="<%=rs.getString(6)%>" readonly></td>
      <td width="4%" height="22"><select size="1" name="source3" disabled>
      <option value="1">GL Code</option>
      <option selected value="2">Compute</option>
      <option value="3">Direct</option>
      </select></td>
      <td width="4%" height="22"><input type="text" name="days1<%=cnt%>" size="10" value="<%=rs.getString(8)%>" readonly></td>
      <td width="4%" height="22"><select size="1" name="source4" disabled>
      <option value="1">GL Code</option>
      <option selected value="2">Compute</option>
      <option value="3">Direct</option>
      </select></td>
      <td width="4%" height="22"><input type="text" name="days2<%=cnt%>" size="10" value="<%=rs.getString(10)%>" readonly></td>
      <td width="5%" height="22"><select size="1" name="source5" disabled>
      <option value="1">GL Code</option>
      <option selected value="2">Compute</option>
      <option value="3">Direct</option>
      </select></td>
      <td width="5%" height="22"><input type="text" name="days3<%=cnt%>" size="10" value="<%=rs.getString(12)%>" readonly></td>
      <td width="5%" height="22"><select size="1" name="source6" disabled>
      <option value="1">GL Code</option>
      <option selected value="2">Compute</option>
      <option value="3">Direct</option>
      </select></td>
      <td width="5%" height="22"><input type="text" name="days4<%=cnt%>" size="10" value="<%=rs.getString(14)%>" readonly></td>
      <td width="5%" height="22"><select size="1" name="source7" disabled>
      <option value="1">GL Code</option>
      <option selected value="2">Compute</option>
      <option value="3">Direct</option>
      </select></td>
      <td width="5%" height="22" bgcolor="blue"><input type="text" name="total<%=cnt%>" size="20" value="<%=rs.getString(16)%>"></td>
    </tr>
<%
			}
			else
			{
%>
    <tr>
      <td width="4%" height="22"><input type="text" name="code<%=cnt%>" size="10" value="<%=code%>"></td>
      <td width="4%" height="22"><input type="text" name="customers<%=cnt%>" size="50" value="<%=rs.getString(2)%>"></td>
<%
				source=rs.getString(3);
				if(source.equals("1"))
				{
%>
      <td><select size="1" name="source1<%=cnt%>"><option selected value="1">GL Code</option><option value="2">Compute</option><option value="3">Direct</option></select></td>
<%
				}
				else if(source.equals("2"))
				{
%>
      <td><select size="1" name="source1<%=cnt%>"><option value="1">GL Code</option><option selected value="2">Compute</option><option value="3">Direct</option></select></td>
<%
				}
				else
				{
%>
      <td><select size="1" name="source1<%=cnt%>"><option value="1">GL Code</option><option value="2">Compute</option><option selected value="3">Direct</option></select></td>
<%
				}
%>
      <td width="4%" height="22"><input type="text" name="demand<%=cnt%>" size="10" value="<%=rs.getString(4)%>"></td>
<%
				source=rs.getString(5);
				if(source.equals("1"))
				{
%>
      <td><select size="1" name="source2<%=cnt%>"><option selected value="1">GL Code</option><option value="2">Compute</option><option value="3">Direct</option></select></td>
<%
				}
				else if(source.equals("2"))
				{
%>
      <td><select size="1" name="source2<%=cnt%>"><option value="1">GL Code</option><option selected value="2">Compute</option><option value="3">Direct</option></select></td>
<%
				}
				else
				{
%>
      <td><select size="1" name="source2<%=cnt%>"><option value="1">GL Code</option><option value="2">Compute</option><option selected value="3">Direct</option></select></td>
<%
				}
%>
      <td width="4%" height="22"><input type="text" name="savings<%=cnt%>" size="10" value="<%=rs.getString(6)%>"></td>
<%
				source=rs.getString(7);
				if(source.equals("1"))
				{
%>
      <td><select size="1" name="source3<%=cnt%>"><option selected value="1">GL Code</option><option value="2">Compute</option><option value="3">Direct</option></select></td>
<%
				}
				else if(source.equals("2"))
				{
%>
      <td><select size="1" name="source3<%=cnt%>"><option value="1">GL Code</option><option selected value="2">Compute</option><option value="3">Direct</option></select></td>
<%
				}
				else
				{
%>
      <td><select size="1" name="source3<%=cnt%>"><option value="1">GL Code</option><option value="2">Compute</option><option selected value="3">Direct</option></select></td>
<%
				}
%>
      <td width="4%" height="22"><input type="text" name="days1<%=cnt%>" size="10" value="<%=rs.getString(8)%>"></td>
<%
				source=rs.getString(9);
				if(source.equals("1"))
				{
%>
      <td><select size="1" name="source4<%=cnt%>"><option selected value="1">GL Code</option><option value="2">Compute</option><option value="3">Direct</option></select></td>
<%
				}
				else if(source.equals("2"))
				{
%>
      <td><select size="1" name="source4<%=cnt%>"><option value="1">GL Code</option><option selected value="2">Compute</option><option value="3">Direct</option></select></td>
<%
				}
				else
				{
%>
      <td><select size="1" name="source4<%=cnt%>"><option value="1">GL Code</option><option value="2">Compute</option><option selected value="3">Direct</option></select></td>
<%
				}
%>
      <td width="4%" height="22"><input type="text" name="days2<%=cnt%>" size="10" value="<%=rs.getString(10)%>"></td>
<%
				source=rs.getString(11);
				if(source.equals("1"))
				{
%>
      <td><select size="1" name="source5<%=cnt%>"><option selected value="1">GL Code</option><option value="2">Compute</option><option value="3">Direct</option></select></td>
<%
				}
				else if(source.equals("2"))
				{
%>
      <td><select size="1" name="source5<%=cnt%>"><option value="1">GL Code</option><option selected value="2">Compute</option><option value="3">Direct</option></select></td>
<%
				}
				else
				{
%>
      <td><select size="1" name="source5<%=cnt%>"><option value="1">GL Code</option><option value="2">Compute</option><option selected value="3">Direct</option></select></td>
<%
				}
%>
      <td width="5%" height="22"><input type="text" name="days3<%=cnt%>" size="10" value="<%=rs.getString(12)%>"></td>
<%
				source=rs.getString(13);
				if(source.equals("1"))
				{
%>
      <td><select size="1" name="source6<%=cnt%>"><option selected value="1">GL Code</option><option value="2">Compute</option><option value="3">Direct</option></select></td>
<%
				}
				else if(source.equals("2"))
				{
%>
      <td><select size="1" name="source6<%=cnt%>"><option value="1">GL Code</option><option selected value="2">Compute</option><option value="3">Direct</option></select></td>
<%
				}
				else
				{
%>
      <td><select size="1" name="source6<%=cnt%>"><option value="1">GL Code</option><option value="2">Compute</option><option selected value="3">Direct</option></select></td>
<%
				}
%>
      <td width="5%" height="22"><input type="text" name="days4<%=cnt%>" size="10" value="<%=rs.getString(14)%>"></td>
<%
				source=rs.getString(15);
				if(source.equals("1"))
				{
%>
      <td><select size="1" name="source7<%=cnt%>"><option selected value="1">GL Code</option><option value="2">Compute</option><option value="3">Direct</option></select></td>
<%
				}
				else if(source.equals("2"))
				{
%>
      <td><select size="1" name="source7<%=cnt%>"><option value="1">GL Code</option><option selected value="2">Compute</option><option value="3">Direct</option></select></td>
<%
				}
				else
				{
%>
      <td><select size="1" name="source7<%=cnt%>"><option value="1">GL Code</option><option value="2">Compute</option><option selected value="3">Direct</option></select></td>
<%
				}
%>
      <td width="5%" height="22" bgcolor="blue"><input type="text" name="total<%=cnt%>" size="20" value="<%=rs.getString(16)%>"></td>
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