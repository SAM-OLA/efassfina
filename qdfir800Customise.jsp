<!--
@author D & T Solutions
-->
<head>
<script>
function openValidate()
{
	history.go(-1);
	window.open("qdfir800Validate.jsp",null, "height=300,width=320,status=no,toolbar=no,menubar=no,location=no,resizable=yes,scrollbars=yes");
	return false;
}
</script>

<!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
</head>
<body>

<%@ page import="java.sql.*, cbnbas.qdfir.connect"%>
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
		out.println("qdfir800 Error: "+e.toString());
	}

	PreparedStatement pst=null;

	String code="";
	String source1="";
	String demand="";
	String source2="";
	String savings="";
	String source3="";
	String day1="";
	String source4="";
	String day2="";
	String source5="";
	String day3="";
	String source6="";
	String day4="";
	String total="";

	int rowCnt=Integer.parseInt(request.getParameter("rowcount"));

	for(int cnt=0;cnt<rowCnt;cnt++)
	{
		code=request.getParameter("code"+cnt);
		source1=request.getParameter("source1"+cnt);
		demand=request.getParameter("demand"+cnt);
		source2=request.getParameter("source2"+cnt);
		savings=request.getParameter("savings"+cnt);
		source3=request.getParameter("source3"+cnt);
		day1=request.getParameter("days1"+cnt);
		source4=request.getParameter("source4"+cnt);
		day2=request.getParameter("days2"+cnt);
		source5=request.getParameter("source5"+cnt);
		day3=request.getParameter("days3"+cnt);
		source6=request.getParameter("source6"+cnt);
		day4=request.getParameter("days4"+cnt);
//		total=String.valueOf(Float.parseFloat(demand)+Float.parseFloat(savings)+Float.parseFloat(day1)+Float.parseFloat(day2)+Float.parseFloat(day3)+Float.parseFloat(day4)+Float.parseFloat(epurse)+Float.parseFloat(domacc)+Float.parseFloat(deposits));
		total=request.getParameter("total"+cnt);

		try
		{
			if(code.equals("61600"))
			{
				source1="2";				//set default source value for total field
				source2="2";
				source3="2";
				source4="2";
				source5="2";
				source6="2";
				//out.println("<hr>");
			}

			//out.println(code+"___"+source1+"___"+demand+"___"+source2+"___"+savings+"___"+source3+"___"+day1+"___"+source4+"___"+day2+"___"+source5+"___"+day3+"___"+source6+"___"+day4+"___"+source7+"___"+epurse+"___"+source8+"___"+domacc+"___"+source9+"___"+deposits+"___"+total);

			pst=cn.prepareStatement("update qdfir800 set [source1]=?,[DEMAND]=?,[source2]=?,[SAVINGS]=?,[source3]=?,[Time Up to 90 days]=?,[source4]=?,[Time 91-180 days]=?,[source5]=?,[Time 181-365 days]=?,[source6]=?,[Time Over 365 days]=?,[Total Dep]=? where [code]=?");
			pst.setString(1,source1);
			pst.setString(2,demand);
			pst.setString(3,source2);
			pst.setString(4,savings);
			pst.setString(5,source3);
			pst.setString(6,day1);
			pst.setString(7,source4);
			pst.setString(8,day2);
			pst.setString(9,source5);
			pst.setString(10,day3);
			pst.setString(11,source6);
			pst.setString(12,day4);
			pst.setString(13,total);
			pst.setString(14,code);

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
			out.println("qdfir800 update error: "+e.toString());
		}
	}
	cn.close();
%>
<hr>
<a href="qdfir800.jsp">Back</a> |
<a href="" onclick="return openValidate()">Validate now!</a></body>