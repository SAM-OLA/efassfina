<%@ page import="java.sql.*,cbnbas.per1.*" %>
<%
	String cntt=String.valueOf(request.getParameter("cnt"));
	int cnt=Integer.parseInt(cntt);
	int chenum=1;
	double anom1=0.0;
	int anom2=0;
	double anom3=0.0;
	int anom4=0;
	double anom5=0.0;
	int anom6=0;
	int anum=0;
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
		response.sendRedirect("per406del.jsp");
	}
	
	try
	{
		connect c = new connect();
   		Connection cnn = c.connectMethod();
		PreparedStatement pss=cnn.prepareStatement("delete from per406");
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
			String f11=request.getParameter("f11"+i);
			String f12=request.getParameter("f12"+i);
			String f13=request.getParameter("f13"+i);
			String f14=request.getParameter("f14"+i);
			
			pss=cnn.prepareStatement("insert into per406 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");		
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

			anom1+=Double.parseDouble(f4);
			anom2+=Integer.parseInt(f5);
			anom3+=Double.parseDouble(f6);
			anom4+=Integer.parseInt(f7);
			anom5+=Double.parseDouble(f8);
			anom6+=Integer.parseInt(f9);
			pss.executeUpdate();
		
		}
		pss=cnn.prepareStatement("insert into per406 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");	
		pss.setString(1,String.valueOf(request.getParameter("total1")));                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        	
		pss.setString(2,String.valueOf(request.getParameter("total2"))); 
		pss.setString(3,String.valueOf(request.getParameter("total3"))); 	
		pss.setString(4,String.valueOf(request.getParameter("total4"))); 
		pss.setString(5,String.valueOf(anom1)); 
		pss.setString(6,String.valueOf(anom2)); 
		pss.setString(7,String.valueOf(anom3)); 
		pss.setString(8,String.valueOf(anom4)); 
		pss.setString(9,String.valueOf(anom5)); 
		pss.setString(10,String.valueOf(anom6)); 
		pss.setString(11,String.valueOf(request.getParameter("total11"))); 
		pss.setString(12,String.valueOf(request.getParameter("total12"))); 
		pss.setString(13,String.valueOf(request.getParameter("total13"))); 
		pss.setString(14,String.valueOf(request.getParameter("total14"))); 
		pss.setString(15,String.valueOf(request.getParameter("total15")));

		pss.executeUpdate();
		cnn.close();
		%>
		<SCRIPT Language = "JavaScript">
		    alert("Data Successful saved");
		    window.location = 'per406.jsp';
	      </SCRIPT>
		<%
	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>









