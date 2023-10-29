<!--
@author D & T Solutions
-->
<%@ page import="java.sql.*, cbnbas.mtr.connect"%>
<%!
	Connection cn=null;
%>
<%
		connect c = new connect();
   		cn = c.connectMethod();
%>
<%
	String code="", source="", value="", description="";

	int count=Integer.parseInt(request.getParameter("rowcount"));

	for(int cnt=0;cnt<count;cnt++)
	{
		try
		{
			code=request.getParameter("Code"+cnt);
			source=request.getParameter("source"+cnt);
			value=request.getParameter("usd"+cnt);
			description=request.getParameter("desc"+cnt);
			if(code.equals("10100") || code.equals("10310") || code.equals("10400") || code.equals("104014") || code.equals("10417") || code.equals("10700") || code.equals("20000") || code.equals("20200") || code.equals("20300") || code.equals("20500") || code.equals("20900") || code.equals("30000"))

			{
				source="2";
			}



			PreparedStatement pst=cn.prepareStatement("update mtr202 set [DESCRIPTION]=?,[Source]=?,[Value]=? where [CODE]=?");
			pst.setString(1,description);
			pst.setString(2,source);
			pst.setString(3,value);
			pst.setString(4,code);

			int affected=pst.executeUpdate();
			if(affected>0)
			{
				//out.println(" inserted! <br>");
			}
			else
			{
				//out.println(" not inserted! <br>");
			}
			
		}
		catch(Exception ex)
		{
			out.println("mtr - 202 Customise: "+ex.toString());
		}

	}
	cn.close();
	%>
	<SCRIPT Language = "JavaScript">
	    alert("Data Successful saved");
	    window.location = 'mtr202.jsp';
	</SCRIPT>
	<%

%>

