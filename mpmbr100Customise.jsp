<!--
@author D & T Solutions
-->
<head>
<script>
function openValidate()
{
	history.go(-1);
	window.open("mpmbr100Validate.jsp",null, "height=300,width=320,status=no,toolbar=no,menubar=no,location=no,resizable=yes,scrollbars=yes");
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
		out.println("mpmbr100 Error: "+e.toString());
	}

	PreparedStatement pst=null;

	String t1="";
	String t2="";
	String t3="";
	String t4="";
	String t5="";
	String t6="";
	String t7="";


	int rowCnt=Integer.parseInt(request.getParameter("rowcount"));

	for(int cnt=0;cnt<rowCnt;cnt++)
	{
		t1=request.getParameter("t1"+cnt);
		t2=request.getParameter("t2"+cnt);
		t3=request.getParameter("t3"+cnt);
		t4=request.getParameter("t4"+cnt);
		t5=request.getParameter("t5"+cnt);
		t6=request.getParameter("t6"+cnt);
		
		


		

		try
		{

			pst=cn.prepareStatement("update MPMBR100 set [Number 1]=?,[Value 1]=?,[Number 2]=?,[Value 2]=? where code=?");
			pst.setString(1,t3);
			pst.setString(2,t4);
			pst.setString(3,t5);
			pst.setString(4,t6);
			pst.setString(5,t1);

			int affected=pst.executeUpdate();
			if(affected>0)
			{
%>
				<SCRIPT Language = "JavaScript">
				    alert("Update Successful");
				    window.location = 'mpmbr100.jsp';
				</SCRIPT>
<%
			}
			else
			{
				//out.println("___not inserted!<br>");
			}
		}
		catch(Exception e)
		{
			out.println("mpmbr100 update error: "+e.toString());
		}
	}
	cn.close();
%>
<hr>
<a href="mpmbr100.jsp">Back</a> | <a href="" onclick="return openValidate()">Validate now!</a></body>