<!--
@author D & T Solutions
-->
<%@ page import="java.sql.*, cbnbas.qdfir.connect" session="true"%>
<%
	String cntt=String.valueOf(request.getParameter("cnt"));
	int cnt=Integer.parseInt(cntt);
	int sum1=0;
	int sum2=0;
	int sum3=0;
	int sum4=0;
	int sum5=0;
	int sum6=0;

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
		response.sendRedirect("qdfir900del.jsp");
	}
	
	try
	{
		connect c = new connect();
   		Connection cnn = c.connectMethod();
		PreparedStatement pss=cnn.prepareStatement("delete from qdfir900");
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
			
			
			pss=cnn.prepareStatement("insert into qdfir900 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");		
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
			pss.executeUpdate();
			sum1+=Integer.parseInt(f5);
			sum2+=Integer.parseInt(f7);
			sum3+=Integer.parseInt(f10);
			sum4+=Integer.parseInt(f11);		
			sum5+=Integer.parseInt(f12);		
			sum6+=Integer.parseInt(f13);		

		
		}
		pss=cnn.prepareStatement("insert into qdfir900 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");		
		pss.setString(1,String.valueOf(request.getParameter("total1")));
		pss.setString(2,String.valueOf(request.getParameter("total2")));
		pss.setString(3,String.valueOf(request.getParameter("total3")));
		pss.setString(4,String.valueOf(request.getParameter("total4")));
		pss.setString(5,String.valueOf(request.getParameter("total5")));
		pss.setString(6,""+sum1);
		pss.setString(7,String.valueOf(request.getParameter("total7")));
		pss.setString(8,""+sum2);
		pss.setString(9,String.valueOf(request.getParameter("total9")));
		pss.setString(10,String.valueOf(request.getParameter("total10")));
		pss.setString(11,""+sum3);
		pss.setString(12,""+sum4);
		pss.setString(13,""+sum5);
		pss.setString(14,""+sum6);
		pss.setString(15,String.valueOf(request.getParameter("total15")));
		pss.setString(16,String.valueOf(request.getParameter("total16")));
		pss.setString(17,String.valueOf(request.getParameter("total17")));
		pss.setString(18,String.valueOf(request.getParameter("total18")));
		
		pss.executeUpdate();
		cnn.close();

		cnn.close();
		%>
		<SCRIPT Language = "JavaScript">
		    alert("Data Successful saved");
		    window.location = 'qdfir900.jsp';
	      </SCRIPT>
		<%

	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>