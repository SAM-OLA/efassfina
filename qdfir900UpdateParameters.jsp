<!--
@author D & T Solutions
-->
<%@ page import="java.sql.*, cbnbas.qdfir.connect" session="true"%>
<%
	try
	{
			String f1=request.getParameter("PaidUpCapital");
			String f2=request.getParameter("Reserves");
			String f3=request.getParameter("LendingLimit");
			long lendinglimit = 0;
			double lendinglimit1 = 0;
			long paidupcapital=0;
			long reserves = 0;
			paidupcapital = Long.parseLong(f1);
        		reserves = Long.parseLong(f2);

			lendinglimit1 = (paidupcapital +reserves)*0.5; 
			lendinglimit = (long)lendinglimit1;     
			connect c = new connect();
	   		Connection cnn = c.connectMethod();
			PreparedStatement pss=cnn.prepareStatement("Update qdfir900Parameters set PaidUpCapital = ?, Reserves = ?, LendingLimit = ?");		
			pss.setString(1,f1);
			pss.setString(2,f2);
			pss.setString(3,""+lendinglimit);
			pss.executeUpdate();
			cnn.close();
		%>
		<SCRIPT Language = "JavaScript">
		    alert("Update Successful");
		    window.location = 'qdfir900.jsp';
	      </SCRIPT>
		<%

	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>