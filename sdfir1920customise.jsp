<%@ page import="java.sql.*,cbnbas.sdfir.connect"%>
<%
	String cntt=String.valueOf(request.getParameter("cnt"));
	int cnt=Integer.parseInt(cntt);
	int chenum=1;
	boolean flag=false;
	int hmph=0;
	for(int ii=1;ii<=cnt;ii++)
	{
		String che=request.getParameter("chec"+ii);
		if(che!=null)
		{
			flag=true;
			hmph++;
			session.setAttribute("val"+hmph,String.valueOf(ii));
			chenum++;
		}
	}
	session.setAttribute("no",String.valueOf(chenum));
	if(flag==true)
	{
		response.sendRedirect("sdfir1920del.jsp");
	}
	
	try
	{
		connect c = new connect();
   		Connection cnn = c.connectMethod();
		PreparedStatement pss=cnn.prepareStatement("delete from sdfir1920");
		pss.executeUpdate();
		for(int ii=1;ii<=cnt;ii++)
		{
			String i=String.valueOf(ii);
			String checkval=request.getParameter("chec"+i);
			String count=request.getParameter("count"+i);
			String f1=request.getParameter("f1"+i);
			String f2=request.getParameter("f2"+i);
			String f3=request.getParameter("f3"+i);
			String f4=request.getParameter("f4"+i);
			String f5=request.getParameter("f5"+i);
			String f6=request.getParameter("f6"+i);
			String f7=request.getParameter("f7"+i);
			String f8=request.getParameter("f8"+i);
			String f9=request.getParameter("f9"+i);
			String f10=request.getParameter("f10"+i);
			String f11=request.getParameter("af11"+i);
			String f12=request.getParameter("af12"+i);
			String f13=request.getParameter("af13"+i);
			String f14=request.getParameter("af14"+i);
			String f15=request.getParameter("af15"+i);
			String f16=request.getParameter("af16"+i);
			String f17=request.getParameter("af17"+i);
			String f18=request.getParameter("af18"+i);
			String f19=request.getParameter("af19"+i);
			String f20=request.getParameter("af20"+i);
			String f21=request.getParameter("bf21"+i);
			String f22=request.getParameter("bf22"+i);
			String f23=request.getParameter("bf23"+i);
			
			pss=cnn.prepareStatement("insert into sdfir1920 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");		
			pss.setString(1,count);
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
			pss.setString(21,f20);
			pss.setString(22,f21);
			pss.setString(23,f22);
			pss.setString(24,f23);
			pss.executeUpdate();
		
		}
		cnn.close();
		%>
		<SCRIPT Language = "JavaScript">
		    alert("Data Successful saved");
		    window.location = 'sdfir1920.jsp';
	      </SCRIPT>
		<%

	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>