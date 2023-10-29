<!--
@author D & T Solutions
-->
<head>
<script>
function openValidate()
{
	history.go(-1);
	window.open("mpmbr356Validate.jsp",null, "height=300,width=320,status=no,toolbar=no,menubar=no,location=no,resizable=yes,scrollbars=yes");
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
	double anom1=0.0;
	double anom2=0.0;
	double anom3=0.0;
	double anom4=0.0;
	double anom5=0.0;
	try
	{
		connect c = new connect();
   		cn = c.connectMethod();
	}
	catch(Exception e)
	{
		out.println("mpmbr356 Error: "+e.toString());
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

	int rowCnt=Integer.parseInt(request.getParameter("rowcount"));

	for(int cnt=0;cnt<rowCnt;cnt++)
	{
		t1=request.getParameter("code"+cnt);
		t2=request.getParameter("desc"+cnt);
		t3=request.getParameter("source"+cnt);
		t4=request.getParameter("amount"+cnt);
		t5=request.getParameter("additions"+cnt);
		t6=request.getParameter("depreciation"+cnt);
		t7=request.getParameter("impairment"+cnt);
		t8=request.getParameter("carryingamount"+cnt);
		//t9=request.getParameter("t9"+cnt);
		//t10=request.getParameter("t10"+cnt);

		

		

		try
		{
			if(t1.equals("35655A"))
			{

		
				//out.println("<hr>");
			}
			else
			{
			//anom1+=Double.parseDouble(t3);
			//anom2+=Double.parseDouble(t4);
			//anom3+=Double.parseDouble(t5);
			//anom4+=Double.parseDouble(t6);
			//anom5+=Double.parseDouble(t7);
			//anom6+=Double.parseDouble(t8);
			pst=cn.prepareStatement("update MPMBR356 set SOURCE = ?, [Gross Amount]=?,[Additions / (Disposal)]=?,[Accumulated Depreciation]=?,[Impairment]=?,[Net Carrying Amount]=? where code=?");
			pst.setString(1,t3);
			pst.setString(2,t4);
			pst.setString(3,t5);
			pst.setString(4,t6);
			pst.setString(5,t7);
			pst.setString(6,t8);
			pst.setString(7,t1);

			int affected=pst.executeUpdate();
			if(affected>0)
			{
						%>
		<SCRIPT Language = "JavaScript">
		    alert("Data Successful saved");
		    window.location = 'mpmbr356.jsp';
	      </SCRIPT>
		<%
		
			}
			else
			{
				//out.println("___not inserted!<br>");
			}
			}
		}
		catch(Exception e)
		{
			out.println("mpmbr356 update error: "+e.toString());
		}
	}
/*	try
		{
			


			pst=cn.prepareStatement("update MPMBR356 set [Gross Amount]=?,[Additions / (Disposal)]=?,[Accumulated Depreciation]=?,[Impairment]=?,[Net Carrying Amount]=? where code=?");
			pst.setString(1,""+ls_format1.format(anom1));
			pst.setString(2,""+ls_format1.format(anom2));
			pst.setString(3,""+ls_format1.format(anom3));
			pst.setString(4,""+ls_format1.format(anom4));
			pst.setString(5,""+ls_format1.format(anom5));
			pst.setString(6,"35655");

			int affected=pst.executeUpdate();
			if(affected>0)
			{
				%>
		<SCRIPT Language = "JavaScript">
		    alert("Data Successful saved");
		    window.location = 'mpmbr356.jsp';
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
			out.println("mpmbr356 update error: "+e.toString());
		}

*/
	cn.close();
%>
</body>