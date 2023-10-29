<%@ page import="java.sql.*"%>
<%!
	Connection cn=null;
	String param="";
	String source="";
%>
<%
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	cn=DriverManager.getConnection("jdbc:odbc:mbrDB");
%>
<html>

<head>
<meta http-equiv="Content-Language" content="en-gb">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>

<!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
</head>

<body>

<p><u><b>MBR - 300 Customisation Form</b></u></p>
<form method="POST" action="customised.jsp" webbot-action="--WEBBOT-SELF--">
    <tr>
      <td width="79"><b>Code</b></td>
      <td width="359"><b>Description</b></td>
      <td width="102"><b>Source?</b></td>
      <td width="150"><b>Value</b></td>
    </tr>
<%
	PreparedStatement pst=cn.prepareStatement("select * from mbr300");
	ResultSet rs=pst.executeQuery();
	int cnt=0;
	while(rs.next())
	{
%>

    <tr>
      <td width="79"><input type="text" name="code<%=cnt%>" size="10" value="<%=rs.getString(1)%>"></td>
      <td width="359"><input type="text" name="desc<%=cnt%>" size="50" value="<%=rs.getString(2)%>"></td>
<%
		source=rs.getString(3);
		if(source.equals("1"))
		{	
%>
      <td width="102"><select size="1" name="source<%=cnt%>"><option selected value="1">GL Code</option><option value="2">Compute</option><option value="3">Direct</option></select></td>
<%
		}
		else if(source.equals("2"))
		{
%>
      <td width="102"><select size="1" name="source<%=cnt%>"><option value="1">GL Code</option><option selected value="2">Compute</option><option value="3">Direct</option></select></td>
<%
		}
		else
		{
%>
      <td width="102"><select size="1" name="source<%=cnt%>"><option selected value="1">GL Code</option><option value="2">Compute</option><option selected value="3">Direct</option></select></td>
<%
		}
%>
      <td width="150"><input type="text" name="value<%=cnt%>" size="40" value="<%=rs.getString(4)%>"></td>
<%
		cnt++;
	}
%>
    </tr>
  </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
<input name="rowcount" value="<%=cnt%>" size="20">
</form>

</body>

</html>