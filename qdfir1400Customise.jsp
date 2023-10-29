<%@ page import="java.sql.*, cbnbas.qdfir.connect"%>
<%
	String cntt=String.valueOf(request.getParameter("cnt"));
	int cnt=Integer.parseInt(cntt);
	int anom1=0;
	int anom2=0;
	int anom3=0;
	int anom4=0;
	int anom5=0;
	long anom6=0;
	long dfi = 0;
	int totalnonperformingotherassets = 0;
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
		response.sendRedirect("qdfir1400del.jsp");
	}
	try
	{
		connect c = new connect();
   		Connection cnn = c.connectMethod();
		PreparedStatement pss=cnn.prepareStatement("delete from qdfir1400");
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

			
			pss=cnn.prepareStatement("insert into qdfir1400 values(?,?,?,?,?,?,?,?,?,?)");		
			pss.setString(1,count);
			pss.setString(2,f1);
			pss.setString(3,f2);
			pss.setString(4,f3);
			totalnonperformingotherassets = Integer.parseInt(f5)+Integer.parseInt(f6)+Integer.parseInt(f7);
			pss.setString(5,""+totalnonperformingotherassets);
			pss.setString(6,f5);
			pss.setString(7,f6);
			pss.setString(8,f7);
			dfi = Math.round((0.1 * Integer.parseInt(f5)) + (0.5 * Integer.parseInt(f6)) + (1 * Integer.parseInt(f7)));
			pss.setString(9,""+dfi);
			pss.setString(10,f9);
			anom1+=Integer.parseInt(f3);
			anom3+=Integer.parseInt(f5);
			anom4+=Integer.parseInt(f6);
			anom5+=Integer.parseInt(f7);
			anom6+=dfi;
			anom2=anom3+anom4+anom5;

			pss.executeUpdate();
		
		}
		pss=cnn.prepareStatement("insert into qdfir1400 values(?,?,?,?,?,?,?,?,?,?)");	
		pss.setString(1,String.valueOf(request.getParameter("total1")));
		pss.setString(2,String.valueOf(request.getParameter("total2")));
		pss.setString(3,String.valueOf(request.getParameter("total3")));
		pss.setString(4,String.valueOf(anom1));
		pss.setString(5,String.valueOf(anom2));
		pss.setString(6,String.valueOf(anom3));
		pss.setString(7,String.valueOf(anom4));
		pss.setString(8,String.valueOf(anom5));
		pss.setString(9,String.valueOf(anom6));
		pss.setString(10,String.valueOf(request.getParameter("total10")));
		pss.executeUpdate();
		cnn.close();
		%>
		<SCRIPT Language = "JavaScript">
		    alert("Data Successful saved");
		    window.location = 'qdfir1400.jsp';
	      </SCRIPT>
		<%

	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>