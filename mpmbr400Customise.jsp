<%@ page import="java.sql.*, cbnbas.mpmbr.connect"%>
<%
	String cntt=String.valueOf(request.getParameter("cnt"));
	int cnt=Integer.parseInt(cntt);
	
	double anom1=0.0;


	int chenum=1;
	boolean flag=false;
	int hmph=0;
	for(int ii=1;ii<=cnt;ii++)
	{
		String che=request.getParameter("chec"+ii);
		//out.println(che);
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
		response.sendRedirect("mpmbr400del.jsp");
	}
	try
	{
		connect c = new connect();
   		Connection cnn = c.connectMethod();
		PreparedStatement pss=cnn.prepareStatement("delete from mpmbr400");
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
			String af11=request.getParameter("af11"+i);
			String af12=request.getParameter("af12"+i);
			String af13=request.getParameter("af13"+i);
			String af14=request.getParameter("af14"+i);
			String af15=request.getParameter("af15"+i);
			String af16=request.getParameter("af16"+i);
			String af17=request.getParameter("af17"+i);
			String af18=request.getParameter("af18"+i);
			String af19=request.getParameter("af19"+i);			
			
			pss=cnn.prepareStatement("insert into mpmbr400 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");		
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
			pss.setString(12,af11);
			pss.setString(13,af12);
			pss.setString(14,af13);
			pss.setString(15,af14);
			pss.setString(16,af15);
			pss.setString(17,af16);
			pss.setString(18,af17);
			pss.setString(19,af18);
			pss.setString(20,af19);
			
			//anom1+=Double.parseDouble(af19);
			pss.executeUpdate();
		
		}
		pss=cnn.prepareStatement("insert into mpmbr400 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");			
		pss.setString(1,String.valueOf(request.getParameter("total1")));
		pss.setString(2,String.valueOf(request.getParameter("total2")));
		pss.setString(3,String.valueOf(request.getParameter("total3")));
		pss.setString(4,String.valueOf(request.getParameter("total4")));
		pss.setString(5,String.valueOf(request.getParameter("total5")));
		pss.setString(6,String.valueOf(request.getParameter("total6")));
		pss.setString(7,String.valueOf(request.getParameter("total7")));
		pss.setString(8,String.valueOf(request.getParameter("total8")));
		pss.setString(9,String.valueOf(request.getParameter("total9")));
		pss.setString(10,String.valueOf(request.getParameter("total10")));
		pss.setString(11,String.valueOf(request.getParameter("total11")));
		pss.setString(12,String.valueOf(request.getParameter("total12")));
		pss.setString(13,String.valueOf(request.getParameter("total13")));
		pss.setString(14,String.valueOf(request.getParameter("total14")));
		pss.setString(15,String.valueOf(request.getParameter("total15")));
		pss.setString(16,String.valueOf(request.getParameter("total16")));
		pss.setString(17,String.valueOf(request.getParameter("total17")));
		pss.setString(18,String.valueOf(request.getParameter("total18")));
		pss.setString(19,String.valueOf(request.getParameter("total19")));
		pss.setString(20,String.valueOf(request.getParameter("total20")));

		pss.executeUpdate();
		cnn.close();
		%>
		<SCRIPT Language = "JavaScript">
		    alert("Data Successful saved");
		    window.location = 'mpmbr400.jsp';
	      </SCRIPT>
		<%

	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>