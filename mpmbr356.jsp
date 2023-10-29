<!--
@author D & T Solutions
-->
<%@ page import="java.sql.*, cbnbas.mpmbr.connect"%>
<%!
	Connection cn=null;
	Connection cn1=null;
	ResultSet rs=null;
	PreparedStatement pst=null;
	int recCnt=0;
	int cnt=0;
	String source="";
	String code="";
	String description="";
%>
<%
		connect c = new connect();
		connect c1 = new connect();
   		cn = c.connectMethod();
   		cn1 = c1.connectMethod();

//get expected correspondin data from 300Data

/*
	pst=cn.prepareStatement("select [Value] from mpmbr300Data where Code = '10842'");
	ResultSet rs1=pst.executeQuery();
	rs1.next();
	pst=cn.prepareStatement("select [Value] from mpmbr300Data where Code = '10843'");
	ResultSet rs2=pst.executeQuery();
	rs2.next();
	pst=cn.prepareStatement("select sum(Value) from mpmbr300Data where Code in ('10650','10750','10890','11020','11030','11040','11073','11093','11063')");
	ResultSet rs3=pst.executeQuery();
	rs3.next();
*/
%>
<html>
<head>
<title>Cube CBN FINA System - MPMBR 356</title>

<meta name="Microsoft Theme" content="poetic 1111, default">
</head>

<center>
<jsp:include flush="true" page="header.jsp"/>
<body>

<p class="MsoNormal"><b><font color="#336699" size="2">MPMBR - 356 Schedule of Property Plant And Equipment</font></b></p>
<form method="POST" action="mpmbr356Customise.jsp">
</center>
	<!--<pre>
	<b>Note:-</b> Expected Total [STATE_GOVTS] value: rs1.getInt(1) at Code: 41500
	<b>Note:-</b> Expected Total [LOCAL_GOVTS] value: rs2.getInt(1) at Code: 41500
	<b>Note:-</b> Expected Total [TOTAL_CREDIT] value: rs3.getInt(1) at Code: 41500
</pre>
-->
<center>	
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" id="AutoNumber1" height="110">
    <tr>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Code</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Property, Plant, Equipment</font></b></td>
	  <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">SOURCE ?</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Gross Amount</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Additions / (Disposal)</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Accumulated Depreciation</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Impairment</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Net Carrying Amount</font></b></td>

    </tr>
<%
	try
	{
		PreparedStatement pst1=cn1.prepareStatement("select count(*) from mpmbr356");
		ResultSet rs1=pst1.executeQuery();
		rs1.next();
		recCnt=rs1.getInt(1);

		//PreparedStatement pst=cn.prepareStatement("select count(*) from mpmbr356");		
		PreparedStatement pst=cn.prepareStatement("select CODE,DESCRIPTION,SOURCE,[Gross Amount],[Additions / (Disposal)],[Accumulated Depreciation],[Impairment],[Net Carrying Amount] from mpmbr356");
		//CODE,DESCRIPTION,SOURCE,[Gross Amount],[Additions / (Disposal)],[Accumulated Depreciation],[Impairment],[Net Carrying Amount]
		rs=pst.executeQuery();

		cnt=0;
		while(rs.next() && cnt<(recCnt))
		{
		code=rs.getString(1).trim();
		description=rs.getString(2).trim();

%>
			<tr>
				<td><input type="text" name="code<%=cnt%>" size="10" value="<%=code%>"></td>
				<td><input type="text" name="desc<%=cnt%>" size="50" value="<%=description%>"></td>
<%
		source=rs.getString(3).trim();
		
		if(source.equals("1"))
		{
%>
      <td><select size="1" name="source<%=cnt%>"><option selected value="1">GL Code</option><option value="2">Compute</option><option value="3">Direct</option></select></td>
<%
		}
		else if(source.equals("2"))
		{
%>
      <td><select size="1" name="source<%=cnt%>"><option value="1">GL Code</option><option selected value="2">Compute</option><option value="3">Direct</option></select></td>
<%
		}
		else
		{
%>
      <td><select size="1" name="source<%=cnt%>"><option value="1">GL Code</option><option value="2">Compute</option><option selected value="3">Direct</option></select></td>
<%
		}
%>
				
      <td><textarea cols="31" rows="1" name="amount<%=cnt%>"><%=rs.getString(4).trim()%></textarea></td>
	  <td><textarea cols="31" rows="1" name="additions<%=cnt%>"><%=rs.getString(5).trim()%></textarea></td>
	  <td><textarea cols="31" rows="1" name="depreciation<%=cnt%>"><%=rs.getString(6).trim()%></textarea></td>
      <td><textarea cols="31" rows="1" name="impairment<%=cnt%>"><%=rs.getString(7).trim()%></textarea></td>
      <td><textarea cols="31" rows="1" name="carryingamount<%=cnt%>"><%=rs.getString(8).trim()%></textarea></td>            


			</tr>
<%
			cnt++;
		}

	}
	catch(Exception e)
	{
		out.println("Error: "+e.toString());
	}
	cn.close();
%>
<tr><td colspan="19">
  <p class="MsoNormal"><b><font color="#336699" size="2">Total column will be updated automatically on submission!</font></b></td>
    </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
<input type="hidden" name="rowcount" value="<%=cnt%>" size="20">
</form>
<p>&nbsp;</p>

</body>

</html>
