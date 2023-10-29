<%@ page import="java.sql.*, cbnbas.qpmbr.connect"%>
<%!
	Connection cn=null;
%>
<%
	try
	{
		connect c = new connect();

    		cn = c.connectMethod();

	}catch(Exception e)
	{
		out.println("Error in Config: "+e.toString());
	}
%>
<html>
<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<script language="javascript" type="text/javascript" src="datetimepicker.js">
</script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Cube Group - QPMBR Configuaration File</title>

<meta name="Microsoft Theme" content="poetic 1111, default">
</head>
<center>
<jsp:include flush="true" page="header.jsp"/>

<body>

<p><b><font color="#336699" size="2">&nbsp;QPMBR CONFIGURATION SETTINGS</font></b></p>
<form name="frm" method="POST" action="storeConfigurationQPMBR.jsp">
<table border=1 cellspacing="0" cellpadding="0" style="border-collapse: collapse">
	<th><b><font color="#336699" size="2">SNO</font></b></th>
      <th><b><font color="#336699" size="2">ITEM</font></b></th>
      <th><b><font color="#336699" size="2">VALUE</font></b></th>
      
<%
	PreparedStatement pst=cn.prepareStatement("select sno, Item, Value from Config order by sno");
	ResultSet rs=pst.executeQuery();
	String str="";
	String str1="";

	int cnt=0;
	while(rs.next())
	{
		str1=rs.getString(1);
		str=rs.getString(2);
		if(cnt==2 || cnt==3)
		{
%>
    <tr>
	<td><input type="text" name="<%=cnt%>sno" size="10" value="<%=str1%>" readonly></td>
      <td><input type="text" name="<%=cnt%>item" size="40" value="<%=str%>" readonly></td>
      <td><input id="demo1<%=cnt%>" type="text" name="<%=cnt%>value" size="40" readonly value="<%=rs.getString(3)%>"><a href="javascript:NewCal('demo1<%=cnt%>','ddmmyyyy')"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a  date"></a></td>
    </tr>
			
<%		
	}
	else
	{
%>

    <tr>
	<td><input type="text" name="<%=cnt%>sno" size="10" value="<%=str1%>" readonly></td>
      <td><input type="text" name="<%=cnt%>item" size="40" value="<%=str%>" readonly></td>
      <td><input type="text" name="<%=cnt%>value" size="40" value="<%=rs.getString(3)%>"></td>
    </tr>
<%
	}
		cnt++;
	
	
	}
		cn.close();
%>
<input type="hidden" value="<%=cnt%>" name="rowcount">
  </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
</form>
<p>&nbsp;</p>

</body>

</html>