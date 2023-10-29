<%@ page import="java.sql.*,cbnbas.per1.*" %>
<%
	String cntt=String.valueOf(request.getParameter("cnt"));
	int cnt=Integer.parseInt(cntt);
	int chenum=1;
	double anom1=0;
	int anom2=0;
	int anom3=0;
	int anom4=0;
	int anom5=0;

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
		response.sendRedirect("per501del.jsp");
	}
	
	try
	{
		connect c = new connect();
   		Connection cnn = c.connectMethod();
		PreparedStatement pss=cnn.prepareStatement("delete from per501");
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
			String f15=request.getParameter("f15"+i);
			String f16=request.getParameter("f16"+i);
			String f17=request.getParameter("f17"+i);
			String f18=request.getParameter("f18"+i);
			String f19=request.getParameter("f19"+i);
			String f20=request.getParameter("f20"+i);
			String f21=request.getParameter("f21"+i);
			String f22=request.getParameter("f22"+i);
			String f23=request.getParameter("f23"+i);
			String f24=request.getParameter("f24"+i);

			pss=cnn.prepareStatement("insert into per501 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");		
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
			pss.setString(25,f24);
			anom1+=Double.parseDouble(f9);
			anom2+=Integer.parseInt(f12);
			anom3+=Integer.parseInt(f17);
			anom4+=Integer.parseInt(f23);
			anom5+=Integer.parseInt(f24);

			pss.executeUpdate();
		
		}
		pss=cnn.prepareStatement("insert into per501 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");	
		pss.setString(1,String.valueOf(request.getParameter("total1")));                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        	
		pss.setString(2,String.valueOf(request.getParameter("total2"))); 
		pss.setString(3,String.valueOf(request.getParameter("total3"))); 	
		pss.setString(4,String.valueOf(request.getParameter("total4"))); 
		pss.setString(5,String.valueOf(request.getParameter("total5"))); 	
		pss.setString(6,String.valueOf(request.getParameter("total6"))); 
		pss.setString(7,String.valueOf(request.getParameter("total7")));
		pss.setString(8,String.valueOf(request.getParameter("total8")));
		pss.setString(9,String.valueOf(request.getParameter("total9")));
		pss.setString(10,String.valueOf(anom1));
		pss.setString(11,String.valueOf(request.getParameter("total11")));                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        	
		pss.setString(12,String.valueOf(request.getParameter("total12"))); 
		pss.setString(13,String.valueOf(anom2)); 	
		pss.setString(14,String.valueOf(request.getParameter("total14"))); 
		pss.setString(15,String.valueOf(request.getParameter("total15"))); 	
		pss.setString(16,String.valueOf(request.getParameter("total16"))); 
		pss.setString(17,String.valueOf(request.getParameter("total17")));
		pss.setString(18,String.valueOf(anom3)); 	
		pss.setString(19,String.valueOf(request.getParameter("total19")));
		pss.setString(20,String.valueOf(request.getParameter("total20")));
		pss.setString(21,String.valueOf(request.getParameter("total21")));	
		pss.setString(22,String.valueOf(request.getParameter("total22")));
		pss.setString(23,String.valueOf(request.getParameter("total23")));
		pss.setString(24,String.valueOf(anom4));
		pss.setString(25,String.valueOf(anom5));

		pss.executeUpdate();
		cnn.close();
		%>
		<SCRIPT Language = "JavaScript">
		    alert("Data Successful saved");
		    window.location = 'per501.jsp';
	      </SCRIPT>
		<%
	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>