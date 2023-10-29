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
<title>Cube CBN EFASS System - MPMBR 410</title>

<meta name="Microsoft Theme" content="poetic 1111, default">
</head>

<center>
<jsp:include flush="true" page="header.jsp"/>
<body>

<p class="MsoNormal"><b><font color="#336699" size="2">MPMBR - 410 Schedule of Memorandum Items</font></b></p>
<form method="POST" action="mpmbr410Customise.jsp">
</center>
	<pre>
	
</pre><center>	
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" id="AutoNumber1" height="110">
    <tr>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Code</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">States</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Up to 2 yrs <br>(TERM LOAN)</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">2-5 yrs <br>(TERM LOAN)</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">5-10 yrs <br>(TERM LOAN)</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Over 10 yrs <br>(TERM LOAN)</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Sub-Total <br>(TERM LOAN)</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">OVERDRAFT</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">OTHERS</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">TOTAL</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Up to 2 yrs <br>(TERM LOAN)</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">2-5 yrs <br>(TERM LOAN)</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">5-10 yrs <br>(TERM LOAN)</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Over 10 yrs <br>(TERM LOAN)</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Sub-Total <br>(TERM LOAN)</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">OVERDRAFT</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">OTHERS</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">TOTAL</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Up to 2 yrs <br>(OUTSTANDING BONDS)</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">2-5 yrs <br>(OUTSTANDING BONDS)</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">5-10 yrs <br>(OUTSTANDING BONDS)</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">Over 10 yrs <br>(OUTSTANDING BONDS)</font></b></td>
      <td width="4%" height="47" valign="bottom"><p class="MsoNormal"><b><font color="#336699" size="2">TOTAL</font></b></td>
    </tr>
<%
	try
	{
		pst=cn.prepareStatement("select * from MPMBR410 order by sno");
		ResultSet rs=pst.executeQuery();

		cnt=0;
		while(rs.next())
		{
			code=rs.getString(2);
			if(code.equals("41500"))
			{
%>
    <tr bgcolor="blue">
      <td width="4%" height="22"><input type="text" name="t2<%=cnt%>" size="10" value="<%=code%>"></td>
      <td width="4%" height="22"><input type="text" name="t3<%=cnt%>" size="20" value="<%=rs.getString(3)%>"></td>
      <td width="4%" height="22"><input type="text" name="t4<%=cnt%>" size="20" value="<%=rs.getString(4)%>"></td>
      <td width="4%" height="22"><input type="text" name="t5<%=cnt%>" size="20" value="<%=rs.getString(5)%>"></td>
      <td width="4%" height="22"><input type="text" name="t6<%=cnt%>" size="20" value="<%=rs.getString(6)%>"></td>
      <td width="4%" height="22"><input type="text" name="t7<%=cnt%>" size="20" value="<%=rs.getString(7)%>"></td>
      <td width="4%" height="22"><input type="text" name="t8<%=cnt%>" size="20" value="<%=rs.getString(8)%>"></td>
      <td width="4%" height="22"><input type="text" name="t9<%=cnt%>" size="20" value="<%=rs.getString(9)%>"></td>
      <td width="4%" height="22"><input type="text" name="t10<%=cnt%>" size="20" value="<%=rs.getString(10)%>"></td>
      <td width="4%" height="22"><input type="text" name="t11a<%=cnt%>" size="20" value="<%=rs.getString(11)%>"></td>
      <td width="4%" height="22"><input type="text" name="t12a<%=cnt%>" size="20" value="<%=rs.getString(12)%>"></td>
      <td width="4%" height="22"><input type="text" name="t13a<%=cnt%>" size="20" value="<%=rs.getString(13)%>"></td>
      <td width="4%" height="22"><input type="text" name="t14a<%=cnt%>" size="20" value="<%=rs.getString(14)%>"></td>
      <td width="4%" height="22"><input type="text" name="t15a<%=cnt%>" size="20" value="<%=rs.getString(15)%>"></td>
      <td width="4%" height="22"><input type="text" name="t16a<%=cnt%>" size="20" value="<%=rs.getString(16)%>"></td>
      <td width="4%" height="22"><input type="text" name="t17a<%=cnt%>" size="20" value="<%=rs.getString(17)%>"></td>
      <td width="4%" height="22"><input type="text" name="t18a<%=cnt%>" size="20" value="<%=rs.getString(18)%>"></td>
      <td width="4%" height="22"><input type="text" name="t19a<%=cnt%>" size="20" value="<%=rs.getString(19)%>"></td>
      <td width="4%" height="22"><input type="text" name="t20a<%=cnt%>" size="20" value="<%=rs.getString(20)%>"></td>
      <td width="4%" height="22"><input type="text" name="t21b<%=cnt%>" size="20" value="<%=rs.getString(21)%>"></td>
      <td width="4%" height="22"><input type="text" name="t22b<%=cnt%>" size="20" value="<%=rs.getString(22)%>"></td>
      <td width="4%" height="22"><input type="text" name="t23b<%=cnt%>" size="20" value="<%=rs.getString(23)%>"></td>
      <td width="4%" height="22"><input type="text" name="t24b<%=cnt%>" size="20" value="<%=rs.getString(24)%>"></td>
    </tr>
<%
			}
			else
			{
%>
    <tr>
      <td width="4%" height="22"><input type="text" name="t2<%=cnt%>" size="10" value="<%=code%>"></td>
      <td width="4%" height="22"><input type="text" name="t3<%=cnt%>" size="20" value="<%=rs.getString(3)%>"></td>
      <td width="4%" height="22"><input type="text" name="t4<%=cnt%>" size="20" value="<%=rs.getString(4)%>"></td>
      <td width="4%" height="22"><input type="text" name="t5<%=cnt%>" size="20" value="<%=rs.getString(5)%>"></td>
      <td width="4%" height="22"><input type="text" name="t6<%=cnt%>" size="20" value="<%=rs.getString(6)%>"></td>
      <td width="4%" height="22"><input type="text" name="t7<%=cnt%>" size="20" value="<%=rs.getString(7)%>"></td>
      <td width="4%" height="22"><input type="text" name="t8<%=cnt%>" size="20" value="<%=rs.getString(8)%>"></td>
      <td width="4%" height="22"><input type="text" name="t9<%=cnt%>" size="20" value="<%=rs.getString(9)%>"></td>
      <td width="4%" height="22"><input type="text" name="t10<%=cnt%>" size="20" value="<%=rs.getString(10)%>"></td>
      <td width="4%" height="22"><input type="text" name="t11a<%=cnt%>" size="20" value="<%=rs.getString(11)%>"></td>
      <td width="4%" height="22"><input type="text" name="t12a<%=cnt%>" size="20" value="<%=rs.getString(12)%>"></td>
      <td width="4%" height="22"><input type="text" name="t13a<%=cnt%>" size="20" value="<%=rs.getString(13)%>"></td>
      <td width="4%" height="22"><input type="text" name="t14a<%=cnt%>" size="20" value="<%=rs.getString(14)%>"></td>
      <td width="4%" height="22"><input type="text" name="t15a<%=cnt%>" size="20" value="<%=rs.getString(15)%>"></td>
      <td width="4%" height="22"><input type="text" name="t16a<%=cnt%>" size="20" value="<%=rs.getString(16)%>"></td>
      <td width="4%" height="22"><input type="text" name="t17a<%=cnt%>" size="20" value="<%=rs.getString(17)%>"></td>
      <td width="4%" height="22"><input type="text" name="t18a<%=cnt%>" size="20" value="<%=rs.getString(18)%>"></td>
      <td width="4%" height="22"><input type="text" name="t19a<%=cnt%>" size="20" value="<%=rs.getString(19)%>"></td>
      <td width="4%" height="22"><input type="text" name="t20a<%=cnt%>" size="20" value="<%=rs.getString(20)%>"></td>
      <td width="4%" height="22"><input type="text" name="t21b<%=cnt%>" size="20" value="<%=rs.getString(21)%>"></td>
      <td width="4%" height="22"><input type="text" name="t22b<%=cnt%>" size="20" value="<%=rs.getString(22)%>"></td>
      <td width="4%" height="22"><input type="text" name="t23b<%=cnt%>" size="20" value="<%=rs.getString(23)%>"></td>
      <td width="4%" height="22"><input type="text" name="t24b<%=cnt%>" size="20" value="<%=rs.getString(24)%>"></td>

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
<tr><td colspan="19">
  <p class="MsoNormal"><b><font color="#336699" size="2">Total column will be updated automatically on submission!</font></b></td>
    </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
<input type="hidden" name="rowcount" value="<%=cnt%>" size="20">
</form>
<p>&nbsp;</p>

</body>

</html>
