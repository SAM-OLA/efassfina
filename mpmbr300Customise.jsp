<!--
@author D & T Solutions
-->
<a href="mpmbr300CustomiseForm.jsp">Back</a>
<hr>
<%@ page import="java.sql.*, cbnbas.mpmbr.connect"%>
<%!
	Connection cn=null;
%>
<%
		connect c = new connect();
   		cn = c.connectMethod();
%>
<%
	String code="", desc="", source="", value="";

	int count=Integer.parseInt(request.getParameter("rowcount"));

	for(int cnt=0;cnt<count;cnt++)
	{
		try
		{
			code=request.getParameter("code"+cnt);
//			desc=request.getParameter("desc"+cnt);
			source=request.getParameter("source"+cnt);
			value=request.getParameter("value"+cnt);

			if(code.equals("10130") || code.equals("10260") || code.equals("10300") || code.equals("10330") || code.equals("10360") || code.equals("10370") || code.equals("10450") || code.equals("10520") || code.equals("10540") || code.equals("10630") || code.equals("10650") || code.equals("10750") || code.equals("10845") || code.equals("10860") || code.equals("10890") || code.equals("10902") || code.equals("10910") || code.equals("11013") || code.equals("11053") || code.equals("11063") || code.equals("11073") || code.equals("11093") || code.equals("11100") || code.equals("11230") || code.equals("11320") || code.equals("11380") || code.equals("11390") || code.equals("11400") || code.equals("11550") || code.equals("20160") || code.equals("20290") || code.equals("20350") || code.equals("20440") || code.equals("20670") || code.equals("20750") || code.equals("20830") || code.equals("20900") || code.equals("20910") || code.equals("20950") || code.equals("21050") || code.equals("21130"))
			{
				source="2";
			}

			//out.print(code+"____"+source+"____"+value);


//			PreparedStatement pst=cn.prepareStatement("update mpmbr300 set mpmbr300.description=?,mpmbr300.source=?,mpmbr300.value=? where mpmbr300.code=?");
			PreparedStatement pst=cn.prepareStatement("update mpmbr300 set [source]=?,[value]=? where [code]=?");
			pst.setString(1,source);
			pst.setString(2,value);
			pst.setString(3,code);

			int affected=pst.executeUpdate();
			if(affected>0)
			{
				//out.println(" inserted! <br>");
			}
			else
			{
				//out.println(" not inserted! <br>");
			}
			
		}
		catch(Exception ex)
		{
			out.println("mpmbr - 300 Customise: "+ex.toString());
		}

	}
	cn.close();
%>