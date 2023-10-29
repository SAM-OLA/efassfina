<!--
@author D & T Solutions
-->
<head>
<script>
function openValidate()
{
	history.go(-1);
	window.open("mpmbr396Validate.jsp",null, "height=300,width=320,status=no,toolbar=no,menubar=no,location=no,resizable=yes,scrollbars=yes");
	return false;
}
</script>

<meta name="Microsoft Theme" content="poetic 1111, default">
</head>
<body>

<%@ page import="java.sql.*, cbnbas.mpmbr.connect"%>
<%!
	Connection cn=null;
	private java.text.DecimalFormat ls_format = new java.text.DecimalFormat("##0");
         private java.text.DecimalFormat ls_format1 = new java.text.DecimalFormat("##0.00");

%>
<%
	ls_format1.setMaximumFractionDigits(2);
	ls_format1.setMaximumIntegerDigits(25);
	try
	{
		connect c = new connect();
   		cn = c.connectMethod();
	}
	catch(Exception e)
	{
		out.println("mpmbr396 Error: "+e.toString());
	}

	PreparedStatement pst=null;

	String code="";
	String bom="";
	String eom="";
	String avgbal="";
	String avgbal1="";
	String interestrate="";

	int rowCnt=Integer.parseInt(request.getParameter("rowcount"));

	for(int cnt=0;cnt<rowCnt;cnt++)
	{
		code=request.getParameter("code"+cnt);
		bom=request.getParameter("bom"+cnt);
		eom=request.getParameter("eom"+cnt);
		avgbal=String.valueOf((Float.parseFloat(bom)+Float.parseFloat(eom))/2);
		avgbal1=ls_format1.format(Double.parseDouble(avgbal));
//		avgbal=request.getParameter("avgbal"+cnt);
		interestrate=request.getParameter("interestrate"+cnt);

		try
		{
			if(code.equals("70160") || code.equals("70260") || code.equals("70400"))
			{
				//source1=source2=source3=source4="2";
				//out.println("<hr>");
			}

			//out.println(code+"___"+source1+"___"+bom+"___"+source2+"___"+eom+"___"+source3+"___"+avgbal+"___"+source4+"___"+interestrate);

			pst=cn.prepareStatement("update mpmbr396 set [OUTSTANDING_AT_BEGINNINGOFMONTH]=?,[OUTSTANDING_AT_ENDOFMONTH]=?,[AVERAGE_OPENING_AND_CLOSING_BALANCE]=?,[INTEREST_PAID_PAYABLE_DURING_MONTHS]=? where [ITEM_CODE]=?");
			pst.setString(1,bom);
			pst.setString(2,eom);
			pst.setString(3,avgbal1);
			pst.setString(4,interestrate);
			pst.setString(5,code);

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
			out.println("mpmbr396 update error: "+e.toString());
		}
	}
	cn.close();
%>
<hr>
<a href="mpmbr396.jsp">Back</a> |
<a href="" onclick="return openValidate()">Validate now!</a></body>
