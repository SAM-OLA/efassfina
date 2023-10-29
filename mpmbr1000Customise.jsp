<!--
@author D & T Solutions
-->
<head>
<script>
function openValidate()
{
	history.go(-1);
	window.open("mpmbr1000Validate.jsp",null, "height=300,width=320,status=no,toolbar=no,menubar=no,location=no,resizable=yes,scrollbars=yes");
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
		out.println("mpmbr1000 Error: "+e.toString());
	}

	PreparedStatement pst=null;

	String code="";
	String description="";
	String source="";
	String currentmonth="";
	String yeartodate="";

	int rowCnt=Integer.parseInt(request.getParameter("rowcount"));

	for(int cnt=0;cnt<rowCnt;cnt++)
	{
		code=request.getParameter("code"+cnt);
		description=request.getParameter("description"+cnt);
		source=request.getParameter("source"+cnt);
		currentmonth=request.getParameter("currentmonth"+cnt);
		yeartodate=request.getParameter("yeartodate"+cnt);


		try
		{
			if(code.equals("30120") || code.equals("30150") || code.equals("30167") || code.equals("30200") || code.equals("30230")|| code.equals("30310")|| code.equals("30320")|| code.equals("30340")|| code.equals("40130")|| code.equals("40180")|| code.equals("40230")|| code.equals("40250")|| code.equals("40260"))
			{
				source="2";
				//out.println("<hr>");
			}

			//out.println(code+"___"+desc+"___"+notes+"___"+source+"___"+amount);

			pst=cn.prepareStatement("update mpmbr1000 set source=?,[current month]=?,[Year to Date]=? where CODE=?");
			pst.setString(1,source);
			pst.setString(2,currentmonth);
			pst.setString(3,yeartodate);
			pst.setString(4,code);

			int affected=pst.executeUpdate();
			if(affected>0)
			{
				out.println("___inserted!<br>");
			}
			else
			{
				out.println("___not inserted!<br>");
			}
		}
		catch(Exception e)
		{
			out.println("mpmbr1000 update error: "+e.toString());
		}
		%>
		<SCRIPT Language = "JavaScript">
		    alert("Data Successful saved");
		    window.location = 'mpmbr1000.jsp';
	      </SCRIPT>
		<%

	}
	cn.close();
%>
</body>