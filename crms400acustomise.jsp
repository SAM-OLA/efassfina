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
		//PreparedStatement pss1=cnn.prepareStatement("Select * from crms400");
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
			
			PreparedStatement pss=cnn.prepareStatement("insert into crms400 values(?,?,?,?,?,?,?)");		
			pss.setString(1,""+cnt);
			pss.setString(2,f1);
			pss.setString(3,f2);
			pss.setString(4,f3);
			pss.setString(5,f4);
			pss.setString(6,f5);
			pss.setString(7,f6);

			pss.executeUpdate();
		
			cnn.close();
		%>
		<SCRIPT Language = "JavaScript">
		    alert("Data Successful saved");
		    window.location = 'crms400a.jsp';
	      </SCRIPT>
		<%
	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>