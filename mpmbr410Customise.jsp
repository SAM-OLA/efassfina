<!--
@author D & T Solutions
-->
<head>
<script>
function openValidate()
{
	history.go(-1);
	window.open("mpmbr410Validate.jsp",null, "height=300,width=320,status=no,toolbar=no,menubar=no,location=no,resizable=yes,scrollbars=yes");
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
		out.println("mpmbr410 Error: "+e.toString());
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
	String t10="";
	String t11a="";
	String t12a="";
	String t13a="";
	String t14a="";
	String t15a="";
	String t16a="";
	String t17a="";
	String t18a="";
	String t19a="";
	String t20a="";
	String t21b="";
	String t22b="";
	String t23b="";
	String t24b="";
	
	


	int rowCnt=Integer.parseInt(request.getParameter("rowcount"));

	for(int cnt=0;cnt<rowCnt;cnt++)
	{

		t2=request.getParameter("t2"+cnt);
		t3=request.getParameter("t3"+cnt);
		t4=request.getParameter("t4"+cnt);
		t5=request.getParameter("t5"+cnt);
		t6=request.getParameter("t6"+cnt);
		t7=request.getParameter("t7"+cnt);		
		t8=request.getParameter("t8"+cnt);		
		t9=request.getParameter("t9"+cnt);
		t10=request.getParameter("t10"+cnt);
		t11a=request.getParameter("t11a"+cnt);
		t12a=request.getParameter("t12a"+cnt);
		t13a=request.getParameter("t13a"+cnt);
		t14a=request.getParameter("t14a"+cnt);
		t15a=request.getParameter("t15a"+cnt);
		t16a=request.getParameter("t16a"+cnt);
		t17a=request.getParameter("t17a"+cnt);
		t18a=request.getParameter("t18a"+cnt);
		t19a=request.getParameter("t19a"+cnt);
		t20a=request.getParameter("t20a"+cnt);
		t21b=request.getParameter("t21b"+cnt);
		t22b=request.getParameter("t22b"+cnt);
		t23b=request.getParameter("t23b"+cnt);
		t24b=request.getParameter("t24b"+cnt);																												

		try
		{
			if(t1.equals("41500"))
			{
			
		

		
				//out.println("<hr>");
			}

			//out.println(code+"___"+source1+"___"+fed+"___"+source2+"___"+state+"___"+source3+"___"+local+"___"+source4+"___"+parafed+"___"+source5+"___"+parastate+"___"+source6+"___"+companies+"___"+source7+"___"+individuals+"___"+source8+"___"+othercustomers+"___"+totalcredit+"___"+source9+"___"+memo1+"___"+source10+"___"+memo2+"___"+source11+"___"+avgrate);

			pst=cn.prepareStatement("update MPMBR410 set [Up to 2 yrs (TERM LOAN) 1]=?, [2-5 yrs (TERM LOAN) 1]=?,[5-10 yrs (TERM LOAN) 1]=?,[Over 10 yrs (TERM LOAN) 1]=?,[Sub-Total (TERM LOAN) 1]=?,[OVERDRAFT 1]=?,[OTHERS 1]=?,[TOTAL 1]=?,[Up to 2 yrs (TERM LOAN) 2]=?,[2-5 yrs (TERM LOAN) 2]=?,[5-10 yrs (TERM LOAN) 2]=?,[Over 10 yrs (TERM LOAN) 2]=?,[Sub-Total (TERM LOAN) 2]=?,[OVERDRAFT 2]=?,[OTHERS 2]=?,[TOTAL 2]=?,[Up to 2 yrs (OUTSTANDING BONDS)]=?,[2-5 yrs (OUTSTANDING BONDS)]=?,[5-10 yrs (OUTSTANDING BONDS)]=?,[Over 10 yrs (OUTSTANDING BONDS)]=?,[TOTAL]=? where code=?");
			pst.setString(1,t4);
			pst.setString(2,t5);
			pst.setString(3,t6);
			pst.setString(4,t7);
			pst.setString(5,t8);
			pst.setString(6,t9);
			pst.setString(7,t10);
			pst.setString(8,t11a);
			pst.setString(9,t12a);
			pst.setString(10,t13a);
			pst.setString(11,t14a);
			pst.setString(12,t15a);
			pst.setString(13,t16a);
			pst.setString(14,t17a);
			pst.setString(15,t18a);
			pst.setString(16,t19a);
			pst.setString(17,t20a);
			pst.setString(18,t21b);
			pst.setString(19,t22b);
			pst.setString(20,t23b);
			pst.setString(21,t24b);		
			pst.setString(22,t2);

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
			out.println("mpmbr410 update error: "+e.toString());
		}
	}
	cn.close();
%>
<hr>
<a href="mpmbr410.jsp">Back</a> | <a href="" onclick="return openValidate()">Validate now!</a></body>