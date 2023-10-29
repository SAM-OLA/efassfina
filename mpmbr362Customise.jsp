<!--
@author D & T Solutions
-->
<head>
<script>
function openValidate()
{
	history.go(-1);
	window.open("mpmbr362Validate.jsp",null, "height=300,width=320,status=no,toolbar=no,menubar=no,location=no,resizable=yes,scrollbars=yes");
	return false;
}
</script>

<meta name="Microsoft Theme" content="poetic 1111, default">
</head>

<body>

<%@ page import="java.sql.*, cbnbas.mpmbr.connect"%>
<%!
	Connection cn=null;
%>
<%
	try
	{
		connect c = new connect();
   		cn = c.connectMethod();
	}
	catch(Exception e)
	{
		out.println("mpmbr362 Error: "+e.toString());
	}

	PreparedStatement pst=null;

	String code="";
	String deposittype="";
	String depositsizeN1N100000="";
	String depositsizeN100001N200000="";
	String depositsizeN200001N500000="";
	String depositsizeN500001Above="";
	String total="";

	int rowCnt=Integer.parseInt(request.getParameter("rowcount"));

	for(int cnt=0;cnt<rowCnt;cnt++)
	{
		code=request.getParameter("code"+cnt);
		deposittype=request.getParameter("deposittype"+cnt);
		depositsizeN1N100000=request.getParameter("deposittypeA"+cnt);
		depositsizeN100001N200000=request.getParameter("deposittypeB"+cnt);
		depositsizeN200001N500000=request.getParameter("deposittypeC"+cnt);
		depositsizeN500001Above=request.getParameter("deposittypeD"+cnt);
		total=request.getParameter("deposittypeE"+cnt);
		


		try
		{

			pst=cn.prepareStatement("update MPMBR362 set [DEPOSITSIZEN1N100,000]=?,[DEPOSITSIZEN100001N200000]=?,[DEPOSITSIZEN200001N500000]=?,[DEPOSITSIZE500001Above]=?,TOTAL=? where CODE=?");
			pst.setString(1,depositsizeN1N100000);
			pst.setString(2,depositsizeN100001N200000);
			pst.setString(3,depositsizeN200001N500000);
			pst.setString(4,depositsizeN500001Above);
			pst.setString(5,total);
			pst.setString(6,code);

			int affected=pst.executeUpdate();
			if(affected>0)
			{
				//out.println("___inserted!<br>");
			}
			else
			{
				//out.println("___not inserted!<br>");
			}
		}
		catch(Exception e)
		{
			out.println("mpmbr362 update error: "+e.toString());
		}
	}
	cn.close();
%>
<SCRIPT Language = "JavaScript">
    alert("Data Successful saved");
    window.location = 'mpmbr362.jsp';
</SCRIPT>

