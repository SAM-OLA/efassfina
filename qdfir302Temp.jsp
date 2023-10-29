<!--
@author Abu Taoheed
-->

<%@ page import="java.sql.*, cbnbas.qdfir.connect"%>
<%!
	Connection cn=null;
	PreparedStatement pst=null;
	ResultSet rs=null;

	int recCnt=0;
	int cnt=0;
%>
<%
		connect c = new connect();
   		cn = c.connectMethod();
%>
<html>

<head>
<title>Cube CBN EFASS System - QDFIR 302</title>
<script language="javascript">
var gRowId = 2;
var cnt=1;
function delRow()
{
var tbl = document.getElementById('table1');
var lastRow = tbl.rows.length;
if (lastRow > 2) tbl.deleteRow(lastRow - 1);
gRowId--;
cnt--;
}

function addRow()
{

var tbody = document.getElementById('table1').getElementsByTagName('tbody')[0];
gRowId=tbody.rows.length;
cnt=gRowId-1;
var row = document.createElement('TR');

var cell1 = document.createElement('TD');
var cell2 = document.createElement('TD');
var cell3 = document.createElement('TD');
var cell4 = document.createElement('TD');

var code =  document.createElement('INPUT');
var desc = document.createElement('INPUT');
var amt = document.createElement('INPUT');
var anothercode = document.createElement('INPUT');

code.setAttribute('type','text');
code.setAttribute('name','code'+cnt);
code.setAttribute('size','20');
desc.setAttribute('type','text');
desc.setAttribute('name','desc'+cnt);
desc.setAttribute('size','50');
desc.setAttribute('value','-');
amt.setAttribute('type','text');
amt.setAttribute('name','amt'+cnt);
amt.setAttribute('size','30');
anothercode.setAttribute('value','-');
anothercode.setAttribute('name','anothercode'+cnt);
anothercode.setAttribute('size','30');
anothercode.setAttribute('value','-');

cell1.appendChild(code);
cell2.appendChild(desc);
cell3.appendChild(amt);
cell4.appendChild(anothercode);

row.appendChild(cell1);
row.appendChild(cell2);
row.appendChild(cell3);
row.appendChild(cell4);
tbody.appendChild(row);
document.forms[0].rowcount.value=cnt;

//cnt++;
}

</script>







<!--mstheme--><link rel="stylesheet" href="file:///C:/DOCUME~1/FAVOUR~1/LOCALS~1/Temp/FrontPageTempDir/mstheme/poetic/poet1111.css">







<meta name="Microsoft Theme" content="poetic 1111, default">
</head>
<body>
<center>
<jsp:include flush="true" page="header.jsp"/>
<br>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="1154">
  <tr>
    <td width="73">
    <b><font color="#336699" size="2">
    <a href='qdfirtoc.jsp'>QDFIR TOC</a> </font></b> </td>
    <td width="1063">
<p align="center"><b><font color="#336699" size="2">SCHEDULE OF CURRENT ACCOUNT BALANCES DUE TO OTHER BANKS - QDFIR 302</font></b></p>     
    </td>
    <td width="18">&nbsp;</td>
  </tr>
</table>
<br>

<form method="POST" action="qdfir302CustomiseTemp.jsp">
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="table1">
    <tr>
      <td>
      <p class="MsoNormal"><b><font color="#336699" size="2">Code</font></b></td>
      <td>
      <p class="MsoNormal"><b><font color="#336699" size="2">Description</font></b></td>
      <td>
      <p class="MsoNormal"><b><font color="#336699" size="2">Amount</font></b></td>
      <td>
      <p class="MsoNormal"><b><font color="#336699" size="2">Item GL Code</font></b></td>
    </tr>
<%
	try
	{

		pst=cn.prepareStatement("select * from qdfir302");
		rs=pst.executeQuery();

		cnt=0;
		while(rs.next())
		{
%>
    <tr>
      <td><input type="text" name="code<%=cnt%>" size="20" value="<%=rs.getString(1)%>"></td>
      <td><input type="text" name="desc<%=cnt%>" size="50" value="<%=rs.getString(2)%>"></td>
      <td><input type="text" name="amt<%=cnt%>" size="30" value="<%=rs.getString(3)%>"></td>
      <td><input type="text" name="anothercode<%=cnt%>" size="30" value="<%=rs.getString(4)%>"></td>
    </tr>
<%
			cnt++;
		}
	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
	cn.close();

%>
  </table>
  <p><input type="button" value="Add Row" onclick="addRow()"><input type="button" value="Del Row" name="B3" onclick="delRow()"><input type="submit" value="Submit" name="B1" onclick="addRow()"><input type="reset" value="Reset" name="B2"></p>
<input type="hidden" name="rowcount" value="<%=cnt%>" size="20">
</form>

</body>

</html>