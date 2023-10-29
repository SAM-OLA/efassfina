<%@ page import="java.sql.*, cbnbas.crms.connect" session="true"%>
<%
	String cntt=String.valueOf(request.getParameter("cnt"));
	int cnt=Integer.parseInt(cntt);
	try
	{
		connect c = new connect();
   		Connection cnn = c.connectMethod();
		cnt = cnt+1;
			String f1=request.getParameter("f1");
			String f2=request.getParameter("f2");
			String f3=request.getParameter("f3");
			String f4=request.getParameter("f4");
			String f5=request.getParameter("f5");
			String f6=request.getParameter("f6");
			String f7=request.getParameter("f7");
			String f8=request.getParameter("f8");
			String f9=request.getParameter("f9");
			String f10=request.getParameter("f10");
			String f11=request.getParameter("af11");
			String f12=request.getParameter("af12");
			String f13=request.getParameter("af13");
			String f14=request.getParameter("af14");
			String f15=request.getParameter("af15");
			String f16=request.getParameter("af16");
			String f17=request.getParameter("af17");
			String f18=request.getParameter("af18");
			String f19=request.getParameter("af19");



			PreparedStatement pss=cnn.prepareStatement("insert into crms201 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pss.setString(1,""+cnt);
			pss.setString(2,f1);
			pss.setString(3,f2);
			pss.setString(4,f3);
			pss.setString(5,f4);
			pss.setString(6,f5);
			pss.setString(7,f6);
			pss.setString(8,f7);
			pss.setString(9,f8);
			pss.setString(10,f9);
			pss.setString(11,f10);
			pss.setString(12,f11);
			pss.setString(13,f12);
			pss.setString(14,f13);
			pss.setString(15,f14);
			pss.setString(16,f15);
			pss.setString(17,f16);
			pss.setString(18,f17);
			pss.setString(19,f18);
			pss.setString(20,f19);
			pss.executeUpdate();
			cnn.close();
		%>
		<SCRIPT Language = "JavaScript">
		    alert("Data Successful saved");
		    window.location = 'crms201a.jsp';
	      </SCRIPT>
		<%
	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>
