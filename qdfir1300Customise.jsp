<%@ page import="java.sql.*, cbnbas.qdfir.connect"%>
<%
	String cntt=String.valueOf(request.getParameter("cnt"));
	int cnt=Integer.parseInt(cntt);
	int anom1 = 0;
	int anom2 = 0;
	int anom3 = 0;
	int anom4 = 0;
	int anom5 = 0;
	int anom6 = 0;
	int anom7 = 0;
	int totalnonperformingcredits = 0;
	long anom8 = 0;
	long dfi = 0;
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
		response.sendRedirect("qdfir1300del.jsp");
	}
	try
	{
		connect c = new connect();
   		Connection cnn = c.connectMethod();
		PreparedStatement pss=cnn.prepareStatement("delete from qdfir1300");
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

			
			pss=cnn.prepareStatement("insert into qdfir1300 values(?,?,?,?,?,?,?,?,?,?,?,?)");		
			pss.setString(1,count);
			pss.setString(2,f1);
			pss.setString(3,f2);
			pss.setString(4,f3);
			pss.setString(5,f4);
			pss.setString(6,f5);
			totalnonperformingcredits = Integer.parseInt(f4)+Integer.parseInt(f5);
			pss.setString(7,""+totalnonperformingcredits);
			pss.setString(8,f7);
			pss.setString(9,f8);
			pss.setString(10,f9);
			dfi = Math.round(((Integer.parseInt(f3) - (Integer.parseInt(f7)+Integer.parseInt(f8)+Integer.parseInt(f9)))* 0.01) + ((0.1*Integer.parseInt(f7))+ (0.5*Integer.parseInt(f8))+ (1*Integer.parseInt(f9))));
			pss.setString(11,""+dfi);
			pss.setString(12,f11);
			anom1+=Integer.parseInt(f3);
			anom2+=Integer.parseInt(f4);
			anom3+=Integer.parseInt(f5);
			anom4=anom2+anom3;
			anom5+=Integer.parseInt(f7);
			anom6+=Integer.parseInt(f8);
			anom7+=Integer.parseInt(f9);
			anom8+=dfi;
			//anom8+=Integer.parseInt(f10);

			pss.executeUpdate();
		
		}
		pss=cnn.prepareStatement("insert into qdfir1300 values(?,?,?,?,?,?,?,?,?,?,?,?)");	
		pss.setString(1,String.valueOf(request.getParameter("total1")));
		pss.setString(2,String.valueOf(request.getParameter("total2")));
		pss.setString(3,String.valueOf(request.getParameter("total3")));
		pss.setString(4,String.valueOf(anom1));
		pss.setString(5,String.valueOf(anom2));
		pss.setString(6,String.valueOf(anom3));
		pss.setString(7,String.valueOf(anom4));
		pss.setString(8,String.valueOf(anom5));
		pss.setString(9,String.valueOf(anom6));
		pss.setString(10,String.valueOf(anom7));
		pss.setString(11,String.valueOf(anom8));
		pss.setString(12,String.valueOf(request.getParameter("total12")));
		pss.executeUpdate();
		cnn.close();
		%>
		<SCRIPT Language = "JavaScript">
		    alert("Data Successful saved");
		    window.location = 'qdfir1300.jsp';
	      </SCRIPT>
		<%

	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>