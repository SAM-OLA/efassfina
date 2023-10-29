<!--
@author D & T Solutions
-->
<head>
<script>
function openValidate()
{
	history.go(-1);
	window.open("mpmbr364Validate.jsp",null, "height=300,width=320,status=no,toolbar=no,menubar=no,location=no,resizable=yes,scrollbars=yes");
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
		out.println("mpmbr364 Error: "+e.toString());
	}

	PreparedStatement pst=null;

	String t1="";
	String t2="";
	String t3="";
	String t4="";
	String t5="";
	String t6="";
	String t7="";
	String t8="";
	String t9="";

	int rowCnt=Integer.parseInt(request.getParameter("rowcount"));

	for(int cnt=0;cnt<rowCnt;cnt++)
	{
		t1=request.getParameter("t1"+cnt);
		t2=request.getParameter("t2"+cnt);
		t3=request.getParameter("t3"+cnt);
		t4=request.getParameter("t4"+cnt);
		t5=request.getParameter("t5"+cnt);
		t6=request.getParameter("t6"+cnt);
		t7=request.getParameter("t7"+cnt);
		t8=request.getParameter("t8"+cnt);
		t9=request.getParameter("t9"+cnt);


		

		try
		{
			if(t1.equals("41500"))
			{
				

		
				//out.println("<hr>");
			}

			//out.println(code+"___"+source1+"___"+fed+"___"+source2+"___"+state+"___"+source3+"___"+local+"___"+source4+"___"+parafed+"___"+source5+"___"+parastate+"___"+source6+"___"+companies+"___"+source7+"___"+individuals+"___"+source8+"___"+othercustomers+"___"+totalcredit+"___"+source9+"___"+memo1+"___"+source10+"___"+memo2+"___"+source11+"___"+avgrate);

			pst=cn.prepareStatement("update MPMBR364 set [Demand]=?,[Savings]=?,[Up to 90 days N]=?,[91-180 days N]=?,[181-365DaysN]=?,[Over 365 days N]=?,[TotalN]=? where code=?");

			pst.setString(1,t3);
			pst.setString(2,t4);
			pst.setString(3,t5);
			pst.setString(4,t6);
			pst.setString(5,t7);
			pst.setString(6,t8);
			pst.setString(7,t9);
			pst.setString(8,t1);

			int affected=pst.executeUpdate();
			if(affected>0)
			{
		%>
			<SCRIPT Language = "JavaScript">
			    alert("Data Successful saved");
			    window.location = 'mpmbr364.jsp';
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
			out.println("mpmbr364 update error: "+e.toString());
		}
	}
	cn.close();
%>
</body>