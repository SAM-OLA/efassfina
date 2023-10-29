<%@ page import="java.sql.*, cbnbas.crms.connect" session="true"%>
<%
	String cntt=String.valueOf(request.getParameter("cnt"));
	int cnt=Integer.parseInt(cntt);
	//int chenum=1;
	//boolean flag=false;
	//int hmph=0;
	//for(int ii=1;ii<=cnt;ii++)
	//{
	//	String che=request.getParameter("chec"+ii);
	//	out.println(che);
	//	if(che!=null)
	//	{
	//		flag=true;
	//		hmph++;
	//		session.setAttribute("val"+hmph,String.valueOf(ii));
	//		chenum++;
	//	}
	//}
	//session.setAttribute("no",String.valueOf(chenum));
	//if(flag==true)
	//{
	//	response.sendRedirect("crms400del.jsp");
	//}
	
	try
	{
		connect c = new connect();
   		Connection cnn = c.connectMethod();
		cnt = cnt+1;
		//PreparedStatement pss1=cnn.prepareStatement("Select * from crms300");
		//ResultSet rss = pss1.executeQuery();
		//rss.last();
		//out.println("okkkkkkkkkk");
		//int numb = Integer.parseInt(rss.getString(1));
		//numb = numb + 1;
		//for(int ii=1;ii<=cnt;ii++)
		//{
		//	String i=String.valueOf(ii);
		//	String checkval=request.getParameter("chec"+i);
		//	String count=request.getParameter("count"+i);
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
			String f11=request.getParameter("f11");
			String f12=request.getParameter("f12");
			String f13=request.getParameter("f13");
			String f14=request.getParameter("f14");
			String f15=request.getParameter("f15");
			String f16=request.getParameter("f16");
			String f17=request.getParameter("f17");
			String f18=request.getParameter("f18");
			String f19=request.getParameter("f19");
			String f20=request.getParameter("f20");
			String f21=request.getParameter("f21");
			String f22=request.getParameter("f22");
			String f23=request.getParameter("f23");
			String f24=request.getParameter("f24");
			String f25=request.getParameter("f25");
			String f26=request.getParameter("f26");
			String f27=request.getParameter("f27");
			String f28=request.getParameter("f28");
			String f29=request.getParameter("f29");
			String f30=request.getParameter("f30");
			String f31=request.getParameter("f31");
			String f32=request.getParameter("f32");
			String f33=request.getParameter("f33");

			
			PreparedStatement pss=cnn.prepareStatement("insert into crms300 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");		
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
			pss.setString(21,f20);
			pss.setString(22,f21);
			pss.setString(23,f22);
			pss.setString(24,f23);
			pss.setString(25,f24);
			pss.setString(26,f25);
			pss.setString(27,f26);
			pss.setString(28,f27);
			pss.setString(29,f28);
			pss.setString(30,f29);
			pss.setString(31,f30);
			pss.setString(32,f31);
			pss.setString(33,f32);
			pss.setString(34,f33);

			pss.executeUpdate();
		
			cnn.close();
		%>
		<SCRIPT Language = "JavaScript">
		    alert("Data Successful saved");
		    window.location = 'crms300a.jsp';
	      </SCRIPT>
		<%
	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>