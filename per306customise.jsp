<%@ page import="java.sql.*,cbnbas.per1.*" %>
<%
	String cntt=String.valueOf(request.getParameter("cnt"));
	int cnt=Integer.parseInt(cntt);
	int chenum=1;
	int anom=0;
	int anum=0;
	int num=0;
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
		response.sendRedirect("per306del.jsp");
	}
	
	try
	{
		connect c = new connect();
   		Connection cnn = c.connectMethod();
		PreparedStatement pss=cnn.prepareStatement("delete from per306");
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
			
			pss=cnn.prepareStatement("insert into per306 values(?,?,?,?,?,?,?,?,?)");		
			pss.setString(1,count);
			pss.setString(2,f1);
			pss.setString(3,f2);
			pss.setString(4,f3);
			pss.setString(5,f4);
			pss.setString(6,f5);
			pss.setString(7,f6);
			pss.setString(8,f7);
			pss.setString(9,f8);
			anom+=Integer.parseInt(f5);
			anum+=Integer.parseInt(f6);
			num+=Integer.parseInt(f7);
			pss.executeUpdate();
		
		}
		pss=cnn.prepareStatement("insert into per306 values(?,?,?,?,?,?,?,?,?)");	
		pss.setString(1,String.valueOf(request.getParameter("total1")));                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        	
		pss.setString(2,String.valueOf(request.getParameter("total2"))); 
		pss.setString(3,String.valueOf(request.getParameter("total3"))); 	
		pss.setString(4,String.valueOf(request.getParameter("total4"))); 
		pss.setString(5,String.valueOf(request.getParameter("total5"))); 	
		pss.setString(6,String.valueOf(anom)); 
		pss.setString(7,String.valueOf(anum)); 
		pss.setString(8,String.valueOf(num)); 
		pss.setString(9,String.valueOf(request.getParameter("total9"))); 
		pss.executeUpdate();
		cnn.close();
		%>
		<SCRIPT Language = "JavaScript">
		    alert("Data Successful saved");
		    window.location = 'per306.jsp';
	      </SCRIPT>
		<%
	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>