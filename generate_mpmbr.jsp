<%@ page language="java" import="cbnbas.mpmbr.*, java.sql.*, java.io.*" %>
<html>
  <head>
    <title>Generating XML Files, Please Wait ...</title>
  	<meta name="Microsoft Theme" content="poetic 1111, default">
</head>
<body>
<%
  Connection con=null;
  Statement st = null;
  ResultSet rs = null;
  String odbcName = "MPMBR";
  String odbcprofile = "jdbc:odbc:"+odbcName;
  String bankname = "";
  String bankcode = "";
  String todate = "";
  String fromdate = "";
  String signatory1 = "";
  String signatory2 = "";
  String contactname = "";
  String telno = "";
  String extno = "";
  String FinDate = "";
  String CBN_NDIC_LAST_EXAM_DATE = "";

  boolean tester = true;

  try {

     connect c = new connect();

    con = c.connectMethod();

     st = con.createStatement();
     rs = st.executeQuery("Select * from CONFIG order by SNO");

     if ( rs.next() ) {
       bankcode = rs.getString(3);
     }

     if ( rs.next() ) {
       bankname = rs.getString(3);
     }

     if ( rs.next() ) {
       fromdate = rs.getString(3);
     }
     if ( rs.next() ) {
       todate = rs.getString(3);
     }

     if ( rs.next() ) {
       signatory1 = rs.getString(3);
     }

     if ( rs.next() ) {
       signatory2 = rs.getString(3);
     }

     if ( rs.next() ) {
       contactname = rs.getString(3);
     }

     if ( rs.next() ) {
       telno = rs.getString(3);
     }

     if ( rs.next() ) {
       extno = rs.getString(3);
     }
if ( rs.next() ) {
       FinDate = rs.getString(3);
     }
if ( rs.next() ) {
       CBN_NDIC_LAST_EXAM_DATE = rs.getString(3);
     }

//Handle errors for JDBC
   }
   catch (SQLException se) {
     se.printStackTrace();
//Handle other exceptions
   }
   catch (Exception e) {
     e.printStackTrace();
//finally block used to close connection
   }
   finally {
     try {
       if (con != null) {
         String msg = "Closing connection from finally block.";
         System.out.println(msg);
         rs.close();
         st.close();
         con.close();
       }
     }
     catch (SQLException se) {
       se.printStackTrace();
     } //end finally try
   } //end try
%>
<%
	String mp100 = request.getParameter("mp100");
    String mp300 = request.getParameter("mp300");
    String mp300DEM = request.getParameter("mp300DEM");
    String mp302 = request.getParameter("mp302");
    String mp304 = request.getParameter("mp304");
    String mp306 = request.getParameter("mp306");
    String mp308 = request.getParameter("mp308");
    String mp310 = request.getParameter("mp310");
    String mp312 = request.getParameter("mp312");
    String mp314 = request.getParameter("mp314");
    String mp316A = request.getParameter("mp316A");
    String mp316B = request.getParameter("mp316B");
    String mp316C = request.getParameter("mp316C");
    String mp318A = request.getParameter("mp318A");
    String mp318B = request.getParameter("mp318B");
    String mp318C = request.getParameter("mp318C");
    String mp320A = request.getParameter("mp320A");
    String mp320B = request.getParameter("mp320B");
    String mp320C = request.getParameter("mp320C");
    String mp322A = request.getParameter("mp322A");
    String mp322B = request.getParameter("mp322B");
    String mp322C = request.getParameter("mp322C");
    String mp324A = request.getParameter("mp324A");
    String mp324B = request.getParameter("mp324B");
    String mp324C = request.getParameter("mp324C");
    String mp326A = request.getParameter("mp326A");
    String mp326B = request.getParameter("mp326B");
    String mp326C = request.getParameter("mp326C");
    String mp328A = request.getParameter("mp328A");
    String mp328B = request.getParameter("mp328B");
    String mp328C = request.getParameter("mp328C");
    String mp330A = request.getParameter("mp330A");
    String mp330B = request.getParameter("mp330B");
    String mp330C = request.getParameter("mp330C");
    String mp332A = request.getParameter("mp332A");
    String mp332B = request.getParameter("mp332B");
    String mp332C = request.getParameter("mp332C");
    String mp334 = request.getParameter("mp334");
    String mp336 = request.getParameter("mp336");
    String mp338 = request.getParameter("mp338");
    String mp340 = request.getParameter("mp340");
    String mp342 = request.getParameter("mp342");
    String mp344 = request.getParameter("mp344");
    String mp346 = request.getParameter("mp346");
    String mp348 = request.getParameter("mp348");
	String mp350 = request.getParameter("mp350");
	String mp351 = request.getParameter("mp351");
	String mp352 = request.getParameter("mp352");
	String mp353 = request.getParameter("mp353");
	String mp354 = request.getParameter("mp354");
	String mp356 = request.getParameter("mp356");
	String mp358 = request.getParameter("mp358");
	String mp360 = request.getParameter("mp360");
	String mp362 = request.getParameter("mp362");
	String mp364 = request.getParameter("mp364");
	String mp366 = request.getParameter("mp366");
	String mp368 = request.getParameter("mp368");
	String mp370 = request.getParameter("mp370");
	String mp372 = request.getParameter("mp372");
	String mp374 = request.getParameter("mp374");
	String mp376 = request.getParameter("mp376");
	String mp378 = request.getParameter("mp378");
	String mp380A = request.getParameter("mp380A");
    String mp380B = request.getParameter("mp380B");
    String mp380C = request.getParameter("mp380C");
	String mp382 = request.getParameter("mp382");
	String mp383 = request.getParameter("mp383");
	String mp384 = request.getParameter("mp384");
	String mp386 = request.getParameter("mp386");
	String mp388 = request.getParameter("mp388");
	String mp390 = request.getParameter("mp390");
	String mp392 = request.getParameter("mp392");
	String mp394 = request.getParameter("mp394");
	String mp396 = request.getParameter("mp396");
	String mp398 = request.getParameter("mp398");
	String mp400 = request.getParameter("mp400");
	String mp402 = request.getParameter("mp402");
	String mp404 = request.getParameter("mp404");
	String mp406 = request.getParameter("mp406");
	String mp408 = request.getParameter("mp408");
	String mp410 = request.getParameter("mp410");
	String mp412 = request.getParameter("mp412");
	String mp1000 = request.getParameter("mp1000");
	String mp1001 = request.getParameter("mp1001");
	String mp1002 = request.getParameter("mp1002");
	String ReportDate = request.getParameter("reportdate");

	String outputpath = "c:/cbnxml/mpmbr/";

	String newpath = outputpath + todate ;
        File fi = new File(newpath);
        if (fi.exists()) {
          outputpath = newpath + "/";
          System.out.println("Folder "+newpath+ " already exist ...");
        } else {
          // Create Folder ...
          newpath = newpath + "/";
          boolean success = (new File(newpath)).mkdir();
          if (!success) {
            System.out.println("Folder "+newpath+ " could not be created ...");
          } else  outputpath = newpath;
        }
        
    if ( mp100.equals("1") ) {
           mpmbr100 d100 = new mpmbr100();
	     //new mpmbr100Reloaded(ReportDate);
           d100.setfromDate(fromdate);
           d100.settoDate(todate);
           d100.setInstname(bankname);
           d100.setInstcode(bankcode);
           d100.setOutputpath(outputpath);
           d100.setSignatory1(signatory1);
           d100.setSignatory2(signatory2);
           d100.setContactName(contactname);
           d100.setTelno(telno);
           d100.setExtno(extno);
           boolean test = d100.convert();
    }

	if ( mp300.equals("1") ) {
           mpmbr300 d300 = new mpmbr300();
	     new mpmbr300Reloaded(ReportDate);
           d300.setfromDate(fromdate);
           d300.settoDate(todate);
           d300.setInstname(bankname);
           d300.setInstcode(bankcode);
           d300.setOutputpath(outputpath);
           d300.setSignatory1(signatory1);
           d300.setSignatory2(signatory2);
           d300.setContactName(contactname);
           d300.setTelno(telno);
           d300.setExtno(extno);
           boolean test = d300.convert();
          
          mpmbr300A d300a = new mpmbr300A();
           d300a.setfromDate(fromdate);
           d300a.settoDate(todate);
           d300a.setInstname(bankname);
           d300a.setInstcode(bankcode);
           d300a.setOutputpath("D:/Program Files/Apache Software Foundation/Tomcat 5.0/webapps/cbnpmbifrs/reports/");
           d300a.setSignatory1(signatory1);
           d300a.setSignatory2(signatory2);
           d300a.setContactName(contactname);
           d300a.setTelno(telno);
           d300a.setExtno(extno);
           boolean testa = d300a.convert();
           new createfiles("MPMBR300","D:/Program Files/Apache Software Foundation/Tomcat 5.0/webapps/cbnpmbifrs/reports/");

    }

if ( mp300DEM.equals("1") ) {
           
	   new mpmbr300DemandReloaded(ReportDate);
           
    }

    	if ( mp302.equals("1") ) {
           mpmbr302 d302 = new mpmbr302();
	       new mpmbr302Reloaded(ReportDate);
           d302.setfromDate(fromdate);
           d302.settoDate(todate);
           d302.setInstname(bankname);
           d302.setInstcode(bankcode);
           d302.setOutputpath(outputpath);
           d302.setSignatory1(signatory1);
           d302.setSignatory2(signatory2);
           d302.setContactName(contactname);
           d302.setTelno(telno);
           d302.setExtno(extno);
           boolean test = d302.convert();
    }
    if ( mp304.equals("1") ) {
           mpmbr304 d304 = new mpmbr304();
	       new mpmbr304Reloaded(ReportDate);
           d304.setfromDate(fromdate);
           d304.settoDate(todate);
           d304.setInstname(bankname);
           d304.setInstcode(bankcode);
           d304.setOutputpath(outputpath);
           d304.setSignatory1(signatory1);
           d304.setSignatory2(signatory2);
           d304.setContactName(contactname);
           d304.setTelno(telno);
           d304.setExtno(extno);
           boolean test = d304.convert();
    }
    if ( mp306.equals("1") ) {
           mpmbr306 d306 = new mpmbr306();
	       new mpmbr306Reloaded(ReportDate);
           d306.setfromDate(fromdate);
           d306.settoDate(todate);
           d306.setInstname(bankname);
           d306.setInstcode(bankcode);
           d306.setOutputpath(outputpath);
           d306.setSignatory1(signatory1);
           d306.setSignatory2(signatory2);
           d306.setContactName(contactname);
           d306.setTelno(telno);
           d306.setExtno(extno);
           boolean test = d306.convert();
    }
    if ( mp308.equals("1") ) {
           mpmbr308 d308 = new mpmbr308();
	       new mpmbr308Reloaded(ReportDate);
           d308.setfromDate(fromdate);
           d308.settoDate(todate);
           d308.setInstname(bankname);
           d308.setInstcode(bankcode);
           d308.setOutputpath(outputpath);
           d308.setSignatory1(signatory1);
           d308.setSignatory2(signatory2);
           d308.setContactName(contactname);
           d308.setTelno(telno);
           d308.setExtno(extno);
           boolean test = d308.convert();
    }
    if ( mp310.equals("1") ) {
           mpmbr310 d310 = new mpmbr310();
	       new mpmbr310Reloaded(ReportDate);
           d310.setfromDate(fromdate);
           d310.settoDate(todate);
           d310.setInstname(bankname);
           d310.setInstcode(bankcode);
           d310.setOutputpath(outputpath);
           d310.setSignatory1(signatory1);
           d310.setSignatory2(signatory2);
           d310.setContactName(contactname);
           d310.setTelno(telno);
           d310.setExtno(extno);
           boolean test = d310.convert();
    }
    if ( mp312.equals("1") ) {
           mpmbr312 d312 = new mpmbr312();
	       new mpmbr312Reloaded(ReportDate);
           d312.setfromDate(fromdate);
           d312.settoDate(todate);
           d312.setInstname(bankname);
           d312.setInstcode(bankcode);
           d312.setOutputpath(outputpath);
           d312.setSignatory1(signatory1);
           d312.setSignatory2(signatory2);
           d312.setContactName(contactname);
           d312.setTelno(telno);
           d312.setExtno(extno);
           boolean test = d312.convert();
    }
    if ( mp314.equals("1") ) {
           mpmbr314 d314 = new mpmbr314();
	       new mpmbr314Reloaded(ReportDate);
           d314.setfromDate(fromdate);
           d314.settoDate(todate);
           d314.setInstname(bankname);
           d314.setInstcode(bankcode);
           d314.setOutputpath(outputpath);
           d314.setSignatory1(signatory1);
           d314.setSignatory2(signatory2);
           d314.setContactName(contactname);
           d314.setTelno(telno);
           d314.setExtno(extno);
           boolean test = d314.convert();
    }  
        if ( mp316A.equals("1") ) {
           mpmbr316A d316A = new mpmbr316A();
	       new mpmbr316AReloaded(ReportDate);
           d316A.setfromDate(fromdate);
           d316A.settoDate(todate);
           d316A.setInstname(bankname);
           d316A.setInstcode(bankcode);
           d316A.setOutputpath(outputpath);
           d316A.setSignatory1(signatory1);
           d316A.setSignatory2(signatory2);
           d316A.setContactName(contactname);
           d316A.setTelno(telno);
           d316A.setExtno(extno);
           boolean test = d316A.convert();
    }
       if ( mp316B.equals("1") ) {
           mpmbr316B d316B = new mpmbr316B();
	       new mpmbr316BReloaded(ReportDate);
           d316B.setfromDate(fromdate);
           d316B.settoDate(todate);
           d316B.setInstname(bankname);
           d316B.setInstcode(bankcode);
           d316B.setOutputpath(outputpath);
           d316B.setSignatory1(signatory1);
           d316B.setSignatory2(signatory2);
           d316B.setContactName(contactname);
           d316B.setTelno(telno);
           d316B.setExtno(extno);
           boolean test = d316B.convert();
    }
       if ( mp316C.equals("1") ) {
           mpmbr316C d316C = new mpmbr316C();
	       new mpmbr316CReloaded(ReportDate);
           d316C.setfromDate(fromdate);
           d316C.settoDate(todate);
           d316C.setInstname(bankname);
           d316C.setInstcode(bankcode);
           d316C.setOutputpath(outputpath);
           d316C.setSignatory1(signatory1);
           d316C.setSignatory2(signatory2);
           d316C.setContactName(contactname);
           d316C.setTelno(telno);
           d316C.setExtno(extno);
           boolean test = d316C.convert();
    }
    if ( mp318A.equals("1") ) {
           mpmbr318A d318A = new mpmbr318A();
	       new mpmbr318AReloaded(ReportDate);
           d318A.setfromDate(fromdate);
           d318A.settoDate(todate);
           d318A.setInstname(bankname);
           d318A.setInstcode(bankcode);
           d318A.setOutputpath(outputpath);
           d318A.setSignatory1(signatory1);
           d318A.setSignatory2(signatory2);
           d318A.setContactName(contactname);
           d318A.setTelno(telno);
           d318A.setExtno(extno);
           boolean test = d318A.convert();
    }
       if ( mp318B.equals("1") ) {
           mpmbr318B d318B = new mpmbr318B();
	       new mpmbr318BReloaded(ReportDate);
           d318B.setfromDate(fromdate);
           d318B.settoDate(todate);
           d318B.setInstname(bankname);
           d318B.setInstcode(bankcode);
           d318B.setOutputpath(outputpath);
           d318B.setSignatory1(signatory1);
           d318B.setSignatory2(signatory2);
           d318B.setContactName(contactname);
           d318B.setTelno(telno);
           d318B.setExtno(extno);
           boolean test = d318B.convert();
    }
       if ( mp318C.equals("1") ) {
           mpmbr318C d318C = new mpmbr318C();
	       new mpmbr318CReloaded(ReportDate);
           d318C.setfromDate(fromdate);
           d318C.settoDate(todate);
           d318C.setInstname(bankname);
           d318C.setInstcode(bankcode);
           d318C.setOutputpath(outputpath);
           d318C.setSignatory1(signatory1);
           d318C.setSignatory2(signatory2);
           d318C.setContactName(contactname);
           d318C.setTelno(telno);
           d318C.setExtno(extno);
           boolean test = d318C.convert();
    }
    if ( mp320A.equals("1") ) {
           mpmbr320A d320A = new mpmbr320A();
	       new mpmbr320AReloaded(ReportDate);
           d320A.setfromDate(fromdate);
           d320A.settoDate(todate);
           d320A.setInstname(bankname);
           d320A.setInstcode(bankcode);
           d320A.setOutputpath(outputpath);
           d320A.setSignatory1(signatory1);
           d320A.setSignatory2(signatory2);
           d320A.setContactName(contactname);
           d320A.setTelno(telno);
           d320A.setExtno(extno);
           boolean test = d320A.convert();
    }
       if ( mp320B.equals("1") ) {
           mpmbr320B d320B = new mpmbr320B();
	       new mpmbr320BReloaded(ReportDate);
           d320B.setfromDate(fromdate);
           d320B.settoDate(todate);
           d320B.setInstname(bankname);
           d320B.setInstcode(bankcode);
           d320B.setOutputpath(outputpath);
           d320B.setSignatory1(signatory1);
           d320B.setSignatory2(signatory2);
           d320B.setContactName(contactname);
           d320B.setTelno(telno);
           d320B.setExtno(extno);
           boolean test = d320B.convert();
    }
       if ( mp320C.equals("1") ) {
           mpmbr320C d320C = new mpmbr320C();
	       new mpmbr320CReloaded(ReportDate);
           d320C.setfromDate(fromdate);
           d320C.settoDate(todate);
           d320C.setInstname(bankname);
           d320C.setInstcode(bankcode);
           d320C.setOutputpath(outputpath);
           d320C.setSignatory1(signatory1);
           d320C.setSignatory2(signatory2);
           d320C.setContactName(contactname);
           d320C.setTelno(telno);
           d320C.setExtno(extno);
           boolean test = d320C.convert();
    }
    if ( mp322A.equals("1") ) {
           mpmbr322A d322A = new mpmbr322A();
	       new mpmbr322AReloaded(ReportDate);
           d322A.setfromDate(fromdate);
           d322A.settoDate(todate);
           d322A.setInstname(bankname);
           d322A.setInstcode(bankcode);
           d322A.setOutputpath(outputpath);
           d322A.setSignatory1(signatory1);
           d322A.setSignatory2(signatory2);
           d322A.setContactName(contactname);
           d322A.setTelno(telno);
           d322A.setExtno(extno);
           boolean test = d322A.convert();
    }
       if ( mp322B.equals("1") ) {
           mpmbr322B d322B = new mpmbr322B();
	       new mpmbr322BReloaded(ReportDate);
           d322B.setfromDate(fromdate);
           d322B.settoDate(todate);
           d322B.setInstname(bankname);
           d322B.setInstcode(bankcode);
           d322B.setOutputpath(outputpath);
           d322B.setSignatory1(signatory1);
           d322B.setSignatory2(signatory2);
           d322B.setContactName(contactname);
           d322B.setTelno(telno);
           d322B.setExtno(extno);
           boolean test = d322B.convert();
    }
       if ( mp322C.equals("1") ) {
           mpmbr322C d322C = new mpmbr322C();
	       new mpmbr322CReloaded(ReportDate);
           d322C.setfromDate(fromdate);
           d322C.settoDate(todate);
           d322C.setInstname(bankname);
           d322C.setInstcode(bankcode);
           d322C.setOutputpath(outputpath);
           d322C.setSignatory1(signatory1);
           d322C.setSignatory2(signatory2);
           d322C.setContactName(contactname);
           d322C.setTelno(telno);
           d322C.setExtno(extno);
           boolean test = d322C.convert();
    }
    if ( mp324A.equals("1") ) {
           mpmbr324A d324A = new mpmbr324A();
	       new mpmbr324AReloaded(ReportDate);
           d324A.setfromDate(fromdate);
           d324A.settoDate(todate);
           d324A.setInstname(bankname);
           d324A.setInstcode(bankcode);
           d324A.setOutputpath(outputpath);
           d324A.setSignatory1(signatory1);
           d324A.setSignatory2(signatory2);
           d324A.setContactName(contactname);
           d324A.setTelno(telno);
           d324A.setExtno(extno);
           boolean test = d324A.convert();
    }
       if ( mp324B.equals("1") ) {
           mpmbr324B d324B = new mpmbr324B();
	       new mpmbr324BReloaded(ReportDate);
           d324B.setfromDate(fromdate);
           d324B.settoDate(todate);
           d324B.setInstname(bankname);
           d324B.setInstcode(bankcode);
           d324B.setOutputpath(outputpath);
           d324B.setSignatory1(signatory1);
           d324B.setSignatory2(signatory2);
           d324B.setContactName(contactname);
           d324B.setTelno(telno);
           d324B.setExtno(extno);
           boolean test = d324B.convert();
    }
       if ( mp324C.equals("1") ) {
           mpmbr324C d324C = new mpmbr324C();
	       new mpmbr324CReloaded(ReportDate);
           d324C.setfromDate(fromdate);
           d324C.settoDate(todate);
           d324C.setInstname(bankname);
           d324C.setInstcode(bankcode);
           d324C.setOutputpath(outputpath);
           d324C.setSignatory1(signatory1);
           d324C.setSignatory2(signatory2);
           d324C.setContactName(contactname);
           d324C.setTelno(telno);
           d324C.setExtno(extno);
           boolean test = d324C.convert();
    }
    if ( mp326A.equals("1") ) {
           mpmbr326A d326A = new mpmbr326A();
	       new mpmbr326AReloaded(ReportDate);
           d326A.setfromDate(fromdate);
           d326A.settoDate(todate);
           d326A.setInstname(bankname);
           d326A.setInstcode(bankcode);
           d326A.setOutputpath(outputpath);
           d326A.setSignatory1(signatory1);
           d326A.setSignatory2(signatory2);
           d326A.setContactName(contactname);
           d326A.setTelno(telno);
           d326A.setExtno(extno);
           boolean test = d326A.convert();
    }
       if ( mp326B.equals("1") ) {
           mpmbr326B d326B = new mpmbr326B();
	       new mpmbr326BReloaded(ReportDate);
           d326B.setfromDate(fromdate);
           d326B.settoDate(todate);
           d326B.setInstname(bankname);
           d326B.setInstcode(bankcode);
           d326B.setOutputpath(outputpath);
           d326B.setSignatory1(signatory1);
           d326B.setSignatory2(signatory2);
           d326B.setContactName(contactname);
           d326B.setTelno(telno);
           d326B.setExtno(extno);
           boolean test = d326B.convert();
    }
       if ( mp326C.equals("1") ) {
           mpmbr326C d326C = new mpmbr326C();
	       new mpmbr326CReloaded(ReportDate);
           d326C.setfromDate(fromdate);
           d326C.settoDate(todate);
           d326C.setInstname(bankname);
           d326C.setInstcode(bankcode);
           d326C.setOutputpath(outputpath);
           d326C.setSignatory1(signatory1);
           d326C.setSignatory2(signatory2);
           d326C.setContactName(contactname);
           d326C.setTelno(telno);
           d326C.setExtno(extno);
           boolean test = d326C.convert();
    }
	if ( mp328A.equals("1") ) {
           mpmbr328A d328A = new mpmbr328A();
	       new mpmbr328AReloaded(ReportDate);
           d328A.setfromDate(fromdate);
           d328A.settoDate(todate);
           d328A.setInstname(bankname);
           d328A.setInstcode(bankcode);
           d328A.setOutputpath(outputpath);
           d328A.setSignatory1(signatory1);
           d328A.setSignatory2(signatory2);
           d328A.setContactName(contactname);
           d328A.setTelno(telno);
           d328A.setExtno(extno);
           boolean test = d328A.convert();
    }
       if ( mp328B.equals("1") ) {
           mpmbr328B d328B = new mpmbr328B();
	       new mpmbr328BReloaded(ReportDate);
           d328B.setfromDate(fromdate);
           d328B.settoDate(todate);
           d328B.setInstname(bankname);
           d328B.setInstcode(bankcode);
           d328B.setOutputpath(outputpath);
           d328B.setSignatory1(signatory1);
           d328B.setSignatory2(signatory2);
           d328B.setContactName(contactname);
           d328B.setTelno(telno);
           d328B.setExtno(extno);
           boolean test = d328B.convert();
    }
       if ( mp328C.equals("1") ) {
           mpmbr328C d328C = new mpmbr328C();
	       new mpmbr328CReloaded(ReportDate);
           d328C.setfromDate(fromdate);
           d328C.settoDate(todate);
           d328C.setInstname(bankname);
           d328C.setInstcode(bankcode);
           d328C.setOutputpath(outputpath);
           d328C.setSignatory1(signatory1);
           d328C.setSignatory2(signatory2);
           d328C.setContactName(contactname);
           d328C.setTelno(telno);
           d328C.setExtno(extno);
           boolean test = d328C.convert();
    }
    if ( mp330A.equals("1") ) {
           mpmbr330A d330A = new mpmbr330A();
	       new mpmbr330AReloaded(ReportDate);
           d330A.setfromDate(fromdate);
           d330A.settoDate(todate);
           d330A.setInstname(bankname);
           d330A.setInstcode(bankcode);
           d330A.setOutputpath(outputpath);
           d330A.setSignatory1(signatory1);
           d330A.setSignatory2(signatory2);
           d330A.setContactName(contactname);
           d330A.setTelno(telno);
           d330A.setExtno(extno);
           boolean test = d330A.convert();
    }
       if ( mp330B.equals("1") ) {
           mpmbr330B d330B = new mpmbr330B();
	       new mpmbr330BReloaded(ReportDate);
           d330B.setfromDate(fromdate);
           d330B.settoDate(todate);
           d330B.setInstname(bankname);
           d330B.setInstcode(bankcode);
           d330B.setOutputpath(outputpath);
           d330B.setSignatory1(signatory1);
           d330B.setSignatory2(signatory2);
           d330B.setContactName(contactname);
           d330B.setTelno(telno);
           d330B.setExtno(extno);
           boolean test = d330B.convert();
    }
       if ( mp330C.equals("1") ) {
           mpmbr330C d330C = new mpmbr330C();
	       new mpmbr330CReloaded(ReportDate);
           d330C.setfromDate(fromdate);
           d330C.settoDate(todate);
           d330C.setInstname(bankname);
           d330C.setInstcode(bankcode);
           d330C.setOutputpath(outputpath);
           d330C.setSignatory1(signatory1);
           d330C.setSignatory2(signatory2);
           d330C.setContactName(contactname);
           d330C.setTelno(telno);
           d330C.setExtno(extno);
           boolean test = d330C.convert();
    }
    if ( mp332A.equals("1") ) {
           mpmbr332A d332A = new mpmbr332A();
	       new mpmbr332AReloaded(ReportDate);
           d332A.setfromDate(fromdate);
           d332A.settoDate(todate);
           d332A.setInstname(bankname);
           d332A.setInstcode(bankcode);
           d332A.setOutputpath(outputpath);
           d332A.setSignatory1(signatory1);
           d332A.setSignatory2(signatory2);
           d332A.setContactName(contactname);
           d332A.setTelno(telno);
           d332A.setExtno(extno);
           boolean test = d332A.convert();
    }
       if ( mp332B.equals("1") ) {
           mpmbr332B d332B = new mpmbr332B();
	       new mpmbr332BReloaded(ReportDate);
           d332B.setfromDate(fromdate);
           d332B.settoDate(todate);
           d332B.setInstname(bankname);
           d332B.setInstcode(bankcode);
           d332B.setOutputpath(outputpath);
           d332B.setSignatory1(signatory1);
           d332B.setSignatory2(signatory2);
           d332B.setContactName(contactname);
           d332B.setTelno(telno);
           d332B.setExtno(extno);
           boolean test = d332B.convert();
    }
       if ( mp332C.equals("1") ) {
           mpmbr332C d332C = new mpmbr332C();
	       new mpmbr332CReloaded(ReportDate);
           d332C.setfromDate(fromdate);
           d332C.settoDate(todate);
           d332C.setInstname(bankname);
           d332C.setInstcode(bankcode);
           d332C.setOutputpath(outputpath);
           d332C.setSignatory1(signatory1);
           d332C.setSignatory2(signatory2);
           d332C.setContactName(contactname);
           d332C.setTelno(telno);
           d332C.setExtno(extno);
           boolean test = d332C.convert();
    }
	if ( mp334.equals("1") ) {
           mpmbr334 d334 = new mpmbr334();
	       new mpmbr334Reloaded(ReportDate);
           d334.setfromDate(fromdate);
           d334.settoDate(todate);
           d334.setInstname(bankname);
           d334.setInstcode(bankcode);
           d334.setOutputpath(outputpath);
           d334.setSignatory1(signatory1);
           d334.setSignatory2(signatory2);
           d334.setContactName(contactname);
           d334.setTelno(telno);
           d334.setExtno(extno);
           boolean test = d334.convert();
    }
	
	if ( mp336.equals("1") ) {
           mpmbr336 d336 = new mpmbr336();
	       new mpmbr336Reloaded(ReportDate);
           d336.setfromDate(fromdate);
           d336.settoDate(todate);
           d336.setInstname(bankname);
           d336.setInstcode(bankcode);
           d336.setOutputpath(outputpath);
           d336.setSignatory1(signatory1);
           d336.setSignatory2(signatory2);
           d336.setContactName(contactname);
           d336.setTelno(telno);
           d336.setExtno(extno);
           boolean test = d336.convert();
    }
	if ( mp338.equals("1") ) {
           mpmbr338 d338 = new mpmbr338();
	     new mpmbr338Reloaded(ReportDate);
           d338.setfromDate(fromdate);
           d338.settoDate(todate);
           d338.setInstname(bankname);
           d338.setInstcode(bankcode);
           d338.setOutputpath(outputpath);
           d338.setSignatory1(signatory1);
           d338.setSignatory2(signatory2);
           d338.setContactName(contactname);
           d338.setTelno(telno);
           d338.setExtno(extno);
           boolean test = d338.convert();
    }
    
        if ( mp340.equals("1") ) {
           mpmbr340 d340 = new mpmbr340();
	     //new mpmbr340Reloaded(ReportDate);
           d340.setfromDate(fromdate);
           d340.settoDate(todate);
           d340.setInstname(bankname);
           d340.setInstcode(bankcode);
           d340.setOutputpath(outputpath);
           d340.setSignatory1(signatory1);
           d340.setSignatory2(signatory2);
           d340.setContactName(contactname);
           d340.setTelno(telno);
           d340.setExtno(extno);
           boolean test = d340.convert();
    }
	if ( mp342.equals("1") ) {
           mpmbr342 d342 = new mpmbr342();
	     	new mpmbr342Reloaded(ReportDate);
           d342.setfromDate(fromdate);
           d342.settoDate(todate);
           d342.setInstname(bankname);
           d342.setInstcode(bankcode);
           d342.setOutputpath(outputpath);
           d342.setSignatory1(signatory1);
           d342.setSignatory2(signatory2);
           d342.setContactName(contactname);
           d342.setTelno(telno);
           d342.setExtno(extno);
           boolean test = d342.convert();
    }
    if ( mp344.equals("1") ) {
           mpmbr344 d344 = new mpmbr344();
	     //new mpmbr344Reloaded(ReportDate);
           d344.setfromDate(fromdate);
           d344.settoDate(todate);
           d344.setInstname(bankname);
           d344.setInstcode(bankcode);
           d344.setOutputpath(outputpath);
           d344.setSignatory1(signatory1);
           d344.setSignatory2(signatory2);
           d344.setContactName(contactname);
           d344.setTelno(telno);
           d344.setExtno(extno);
           boolean test = d344.convert();
    }
if ( mp346.equals("1") ) {
           mpmbr346 d346 = new mpmbr346();
	     new mpmbr346Reloaded(ReportDate);
           d346.setfromDate(fromdate);
           d346.settoDate(todate);
           d346.setInstname(bankname);
           d346.setInstcode(bankcode);
           d346.setOutputpath(outputpath);
           d346.setSignatory1(signatory1);
           d346.setSignatory2(signatory2);
           d346.setContactName(contactname);
           d346.setTelno(telno);
           d346.setExtno(extno);
           boolean test = d346.convert();
    }
if ( mp348.equals("1") ) {
           mpmbr348 d348 = new mpmbr348();
	       new mpmbr348Reloaded(ReportDate);
           d348.setfromDate(fromdate);
           d348.settoDate(todate);
           d348.setInstname(bankname);
           d348.setInstcode(bankcode);
           d348.setOutputpath(outputpath);
           d348.setSignatory1(signatory1);
           d348.setSignatory2(signatory2);
           d348.setContactName(contactname);
           d348.setTelno(telno);
           d348.setExtno(extno);
           boolean test = d348.convert();
    }
    
    if ( mp350.equals("1") ) {
           mpmbr350 d350 = new mpmbr350();
	     new mpmbr350Reloaded(ReportDate);
           d350.setfromDate(fromdate);
           d350.settoDate(todate);
           d350.setInstname(bankname);
           d350.setInstcode(bankcode);
           d350.setOutputpath(outputpath);
           d350.setSignatory1(signatory1);
           d350.setSignatory2(signatory2);
           d350.setContactName(contactname);
           d350.setTelno(telno);
           d350.setExtno(extno);
           boolean test = d350.convert();
           
           mpmbr350A d350a = new mpmbr350A();
           d350a.setfromDate(fromdate);
           d350a.settoDate(todate);
           d350a.setInstname(bankname);
           d350a.setInstcode(bankcode);
           d350a.setOutputpath("D:/Program Files/Apache Software Foundation/Tomcat 5.0/webapps/cbnpmbifrs/reports/");
           d350a.setSignatory1(signatory1);
           d350a.setSignatory2(signatory2);
           d350a.setContactName(contactname);
           d350a.setTelno(telno);
           d350a.setExtno(extno);
           boolean testa = d350a.convert();
           new createfiles("MPMBR350","D:/Program Files/Apache Software Foundation/Tomcat 5.0/webapps/cbnpmbifrs/reports/");
    }
	if ( mp351.equals("1") ) {
           mpmbr351 d351 = new mpmbr351();
	    new mpmbr351Reloaded(ReportDate);
           d351.setfromDate(fromdate);
           d351.settoDate(todate);
           d351.setInstname(bankname);
           d351.setInstcode(bankcode);
           d351.setOutputpath(outputpath);
           d351.setSignatory1(signatory1);
           d351.setSignatory2(signatory2);
           d351.setContactName(contactname);
           d351.setTelno(telno);
          d351.setExtno(extno);
           boolean test = d351.convert();
    }
    
    if ( mp352.equals("1") ) {
           mpmbr352 d352 = new mpmbr352();
	     new mpmbr352Reloaded(ReportDate);
           d352.setfromDate(fromdate);
           d352.settoDate(todate);
           d352.setInstname(bankname);
           d352.setInstcode(bankcode);
           d352.setOutputpath(outputpath);
           d352.setSignatory1(signatory1);
           d352.setSignatory2(signatory2);
           d352.setContactName(contactname);
           d352.setTelno(telno);
           d352.setExtno(extno);
           boolean test = d352.convert();
           
           mpmbr352A d352a = new mpmbr352A();
           d352a.setfromDate(fromdate);
           d352a.settoDate(todate);
           d352a.setInstname(bankname);
           d352a.setInstcode(bankcode);
           d352a.setOutputpath("D:/Program Files/Apache Software Foundation/Tomcat 5.0/webapps/cbnpmbifrs/reports/");
           d352a.setSignatory1(signatory1);
           d352a.setSignatory2(signatory2);
           d352a.setContactName(contactname);
           d352a.setTelno(telno);
           d352a.setExtno(extno);
           boolean testa = d352a.convert();
           new createfiles("MPMBR352","D:/Program Files/Apache Software Foundation/Tomcat 5.0/webapps/cbnpmbifrs/reports/");
    }
  if ( mp353.equals("1") ) {
           mpmbr353 d353 = new mpmbr353();
	       new mpmbr353Reloaded(ReportDate);
           d353.setfromDate(fromdate);
           d353.settoDate(todate);
           d353.setInstname(bankname);
           d353.setInstcode(bankcode);
           d353.setOutputpath(outputpath);
           d353.setSignatory1(signatory1);
          d353.setSignatory2(signatory2);
           d353.setContactName(contactname);
           d353.setTelno(telno);
           d353.setExtno(extno);
           boolean test = d353.convert();
    }
	 if ( mp354.equals("1") ) {
           mpmbr354 d354 = new mpmbr354();
	      new mpmbr354Reloaded(ReportDate);
           d354.setfromDate(fromdate);
           d354.settoDate(todate);
           d354.setInstname(bankname);
           d354.setInstcode(bankcode);
           d354.setOutputpath(outputpath);
           d354.setSignatory1(signatory1);
           d354.setSignatory2(signatory2);
           d354.setContactName(contactname);
           d354.setTelno(telno);
           d354.setExtno(extno);
           boolean test = d354.convert();
    }
    if ( mp356.equals("1") ) {
           mpmbr356 d356 = new mpmbr356();
	     new mpmbr356Reloaded(ReportDate);
           d356.setfromDate(fromdate);
           d356.settoDate(todate);
           d356.setInstname(bankname);
           d356.setInstcode(bankcode);
           d356.setOutputpath(outputpath);
           d356.setSignatory1(signatory1);
           d356.setSignatory2(signatory2);
           d356.setContactName(contactname);
           d356.setTelno(telno);
           d356.setExtno(extno);
           boolean test = d356.convert();
    }
if ( mp358.equals("1") ) {
           mpmbr358 d358 = new mpmbr358();
	       new mpmbr358Reloaded(ReportDate);
           d358.setfromDate(fromdate);
           d358.settoDate(todate);
           d358.setInstname(bankname);
           d358.setInstcode(bankcode);
           d358.setOutputpath(outputpath);
           d358.setSignatory1(signatory1);
           d358.setSignatory2(signatory2);
           d358.setContactName(contactname);
           d358.setTelno(telno);
           d358.setExtno(extno);
           boolean test = d358.convert();
    }
	
if ( mp360.equals("1") ) {
           mpmbr360 d360 = new mpmbr360();
	       new mpmbr360Reloaded(ReportDate);
           d360.setfromDate(fromdate);
           d360.settoDate(todate);
           d360.setInstname(bankname);
           d360.setInstcode(bankcode);
           d360.setOutputpath(outputpath);
           d360.setSignatory1(signatory1);
           d360.setSignatory2(signatory2);
           d360.setContactName(contactname);
           d360.setTelno(telno);
           d360.setExtno(extno);
           boolean test = d360.convert();
    }
	if ( mp362.equals("1") ) {
           mpmbr362 d362 = new mpmbr362();
	     //new mpmbr362Reloaded(ReportDate);
           d362.setfromDate(fromdate);
           d362.settoDate(todate);
           d362.setInstname(bankname);
           d362.setInstcode(bankcode);
           d362.setOutputpath(outputpath);
           d362.setSignatory1(signatory1);
           d362.setSignatory2(signatory2);
           d362.setContactName(contactname);
           d362.setTelno(telno);
           d362.setExtno(extno);
           boolean test = d362.convert();
    }

    if ( mp364.equals("1") ) {
           mpmbr364 d364 = new mpmbr364();
	     //new mpmbr364Reloaded(ReportDate);
           d364.setfromDate(fromdate);
           d364.settoDate(todate);
           d364.setInstname(bankname);
           d364.setInstcode(bankcode);
           d364.setOutputpath(outputpath);
           d364.setSignatory1(signatory1);
           d364.setSignatory2(signatory2);
           d364.setContactName(contactname);
           d364.setTelno(telno);
           d364.setExtno(extno);
           boolean test = d364.convert();
    }
if ( mp366.equals("1") ) {
           mpmbr366 d366 = new mpmbr366();
	       new mpmbr366Reloaded(ReportDate);
           d366.setfromDate(fromdate);
           d366.settoDate(todate);
           d366.setInstname(bankname);
           d366.setInstcode(bankcode);
           d366.setOutputpath(outputpath);
           d366.setSignatory1(signatory1);
           d366.setSignatory2(signatory2);
           d366.setContactName(contactname);
           d366.setTelno(telno);
           d366.setExtno(extno);
           boolean test = d366.convert();
    }
if ( mp368.equals("1") ) {
           mpmbr368 d368 = new mpmbr368();
	     //new mpmbr368Reloaded(ReportDate);
           d368.setfromDate(fromdate);
           d368.settoDate(todate);
           d368.setInstname(bankname);
           d368.setInstcode(bankcode);
           d368.setOutputpath(outputpath);
           d368.setSignatory1(signatory1);
           d368.setSignatory2(signatory2);
           d368.setContactName(contactname);
           d368.setTelno(telno);
           d368.setExtno(extno);
           boolean test = d368.convert();
    }

if ( mp370.equals("1") ) {
           mpmbr370 d370 = new mpmbr370();
	     //new mpmbr370Reloaded(ReportDate);
           d370.setfromDate(fromdate);
           d370.settoDate(todate);
           d370.setInstname(bankname);
           d370.setInstcode(bankcode);
           d370.setOutputpath(outputpath);
           d370.setSignatory1(signatory1);
           d370.setSignatory2(signatory2);
           d370.setContactName(contactname);
           d370.setTelno(telno);
           d370.setExtno(extno);
           boolean test = d370.convert();
    }
if ( mp372.equals("1") ) {
           mpmbr372 d372 = new mpmbr372();
	     new mpmbr372Reloaded(ReportDate);
           d372.setfromDate(fromdate);
           d372.settoDate(todate);
           d372.setInstname(bankname);
           d372.setInstcode(bankcode);
           d372.setOutputpath(outputpath);
           d372.setSignatory1(signatory1);
           d372.setSignatory2(signatory2);
           d372.setContactName(contactname);
           d372.setTelno(telno);
           d372.setExtno(extno);
           boolean test = d372.convert();
    }
if ( mp374.equals("1") ) {
           mpmbr374 d374 = new mpmbr374();
	     //new mpmbr374Reloaded(ReportDate);
           d374.setfromDate(fromdate);
           d374.settoDate(todate);
           d374.setInstname(bankname);
           d374.setInstcode(bankcode);
           d374.setOutputpath(outputpath);
           d374.setSignatory1(signatory1);
           d374.setSignatory2(signatory2);
           d374.setContactName(contactname);
           d374.setTelno(telno);
           d374.setExtno(extno);
           boolean test = d374.convert();
    }
if ( mp376.equals("1") ) {
           mpmbr376 d376 = new mpmbr376();
	     //new mpmbr376Reloaded(ReportDate);
           d376.setfromDate(fromdate);
           d376.settoDate(todate);
           d376.setInstname(bankname);
           d376.setInstcode(bankcode);
           d376.setOutputpath(outputpath);
           d376.setSignatory1(signatory1);
           d376.setSignatory2(signatory2);
           d376.setContactName(contactname);
           d376.setTelno(telno);
           d376.setExtno(extno);
           boolean test = d376.convert();
    }
if ( mp378.equals("1") ) {
           mpmbr378 d378 = new mpmbr378();
	     new mpmbr378Reloaded(ReportDate);
           d378.setfromDate(fromdate);
           d378.settoDate(todate);
           d378.setInstname(bankname);
           d378.setInstcode(bankcode);
           d378.setOutputpath(outputpath);
           d378.setSignatory1(signatory1);
           d378.setSignatory2(signatory2);
           d378.setContactName(contactname);
           d378.setTelno(telno);
           d378.setExtno(extno);
           boolean test = d378.convert();
    }
    if ( mp380A.equals("1") ) {
           mpmbr380A d380A = new mpmbr380A();
	       new mpmbr380AReloaded(ReportDate);
           d380A.setfromDate(fromdate);
           d380A.settoDate(todate);
           d380A.setInstname(bankname);
           d380A.setInstcode(bankcode);
           d380A.setOutputpath(outputpath);
           d380A.setSignatory1(signatory1);
           d380A.setSignatory2(signatory2);
           d380A.setContactName(contactname);
           d380A.setTelno(telno);
           d380A.setExtno(extno);
           boolean test = d380A.convert();
    }
       if ( mp380B.equals("1") ) {
           mpmbr380B d380B = new mpmbr380B();
	       new mpmbr380BReloaded(ReportDate);
           d380B.setfromDate(fromdate);
           d380B.settoDate(todate);
           d380B.setInstname(bankname);
           d380B.setInstcode(bankcode);
           d380B.setOutputpath(outputpath);
           d380B.setSignatory1(signatory1);
           d380B.setSignatory2(signatory2);
           d380B.setContactName(contactname);
           d380B.setTelno(telno);
           d380B.setExtno(extno);
           boolean test = d380B.convert();
    }
       if ( mp380C.equals("1") ) {
           mpmbr380C d380C = new mpmbr380C();
	       new mpmbr380CReloaded(ReportDate);
           d380C.setfromDate(fromdate);
           d380C.settoDate(todate);
           d380C.setInstname(bankname);
           d380C.setInstcode(bankcode);
           d380C.setOutputpath(outputpath);
           d380C.setSignatory1(signatory1);
           d380C.setSignatory2(signatory2);
           d380C.setContactName(contactname);
           d380C.setTelno(telno);
           d380C.setExtno(extno);
           boolean test = d380C.convert();
    }
if ( mp382.equals("1") ) {
           mpmbr382 d382 = new mpmbr382();
	     new mpmbr382Reloaded(ReportDate);
           d382.setfromDate(fromdate);
           d382.settoDate(todate);
           d382.setInstname(bankname);
           d382.setInstcode(bankcode);
           d382.setOutputpath(outputpath);
           d382.setSignatory1(signatory1);
           d382.setSignatory2(signatory2);
           d382.setContactName(contactname);
           d382.setTelno(telno);
           d382.setExtno(extno);
           boolean test = d382.convert();
           
           mpmbr382A d382a = new mpmbr382A();
           d382a.setfromDate(fromdate);
           d382a.settoDate(todate);
           d382a.setInstname(bankname);
           d382a.setInstcode(bankcode);
           d382a.setOutputpath("D:/Program Files/Apache Software Foundation/Tomcat 5.0/webapps/cbnpmbifrs/reports/");
           d382a.setSignatory1(signatory1);
           d382a.setSignatory2(signatory2);
           d382a.setContactName(contactname);
           d382a.setTelno(telno);
           d382a.setExtno(extno);
           boolean testa = d382a.convert();
           new createfiles("MPMBR382","D:/Program Files/Apache Software Foundation/Tomcat 5.0/webapps/cbnpmbifrs/reports/");
    }
	if ( mp383.equals("1") ) {
           mpmbr383 d383 = new mpmbr383();
	     new mpmbr383Reloaded(ReportDate);
           d383.setfromDate(fromdate);
           d383.settoDate(todate);
           d383.setInstname(bankname);
           d383.setInstcode(bankcode);
           d383.setOutputpath(outputpath);
           d383.setSignatory1(signatory1);
           d383.setSignatory2(signatory2);
           d383.setContactName(contactname);
           d383.setTelno(telno);
           d383.setExtno(extno);
           boolean test = d383.convert();
    }
	if ( mp384.equals("1") ) {
           mpmbr384 d384 = new mpmbr384();
	     //new mpmbr384Reloaded(ReportDate);
           d384.setfromDate(fromdate);
           d384.settoDate(todate);
           d384.setInstname(bankname);
           d384.setInstcode(bankcode);
           d384.setOutputpath(outputpath);
           d384.setSignatory1(signatory1);
           d384.setSignatory2(signatory2);
           d384.setContactName(contactname);
           d384.setTelno(telno);
           d384.setExtno(extno);
           boolean test = d384.convert();
    }
	
	if ( mp386.equals("1") ) {
           mpmbr386 d386 = new mpmbr386();
	     //new mpmbr386Reloaded(ReportDate);
           d386.setfromDate(fromdate);
           d386.settoDate(todate);
           d386.setInstname(bankname);
           d386.setInstcode(bankcode);
           d386.setOutputpath(outputpath);
           d386.setSignatory1(signatory1);
           d386.setSignatory2(signatory2);
           d386.setContactName(contactname);
           d386.setTelno(telno);
           d386.setExtno(extno);
           boolean test = d386.convert();
    }
	if ( mp388.equals("1") ) {
           mpmbr388 d388 = new mpmbr388();
	     //new mpmbr388Reloaded(ReportDate);
           d388.setfromDate(fromdate);
           d388.settoDate(todate);
           d388.setInstname(bankname);
           d388.setInstcode(bankcode);
           d388.setOutputpath(outputpath);
           d388.setSignatory1(signatory1);
           d388.setSignatory2(signatory2);
           d388.setContactName(contactname);
           d388.setTelno(telno);
           d388.setExtno(extno);
           boolean test = d388.convert();
    }
	if ( mp390.equals("1") ) {
           mpmbr390 d390 = new mpmbr390();
	     //new mpmbr390Reloaded(ReportDate);
           d390.setfromDate(fromdate);
           d390.settoDate(todate);
           d390.setInstname(bankname);
           d390.setInstcode(bankcode);
           d390.setOutputpath(outputpath);
           d390.setSignatory1(signatory1);
           d390.setSignatory2(signatory2);
           d390.setContactName(contactname);
           d390.setTelno(telno);
           d390.setExtno(extno);
           boolean test = d390.convert();
    }
	if ( mp392.equals("1") ) {
           mpmbr392 d392 = new mpmbr392();
	     //new mpmbr392Reloaded(ReportDate);
           d392.setfromDate(fromdate);
           d392.settoDate(todate);
           d392.setInstname(bankname);
           d392.setInstcode(bankcode);
           d392.setOutputpath(outputpath);
           d392.setSignatory1(signatory1);
           d392.setSignatory2(signatory2);
           d392.setContactName(contactname);
           d392.setTelno(telno);
           d392.setExtno(extno);
           boolean test = d392.convert();
    }
    
    if ( mp394.equals("1") ) {
           mpmbr394 d394 = new mpmbr394();
	     //new mpmbr394Reloaded(ReportDate);
           d394.setfromDate(fromdate);
           d394.settoDate(todate);
           d394.setInstname(bankname);
           d394.setInstcode(bankcode);
           d394.setOutputpath(outputpath);
           d394.setSignatory1(signatory1);
           d394.setSignatory2(signatory2);
           d394.setContactName(contactname);
           d394.setTelno(telno);
           d394.setExtno(extno);
           boolean test = d394.convert();
    }
    
    if ( mp396.equals("1") ) {
           mpmbr396 d396 = new mpmbr396();
	     //new mpmbr396Reloaded(ReportDate);
           d396.setfromDate(fromdate);
           d396.settoDate(todate);
           d396.setInstname(bankname);
           d396.setInstcode(bankcode);
           d396.setOutputpath(outputpath);
           d396.setSignatory1(signatory1);
           d396.setSignatory2(signatory2);
           d396.setContactName(contactname);
           d396.setTelno(telno);
           d396.setExtno(extno);
           boolean test = d396.convert();
    }
	if ( mp398.equals("1") ) {
           mpmbr398 d398 = new mpmbr398();
	     //new mpmbr398Reloaded(ReportDate);
           d398.setfromDate(fromdate);
           d398.settoDate(todate);
           d398.setInstname(bankname);
           d398.setInstcode(bankcode);
           d398.setOutputpath(outputpath);
           d398.setSignatory1(signatory1);
           d398.setSignatory2(signatory2);
           d398.setContactName(contactname);
           d398.setTelno(telno);
           d398.setExtno(extno);
           boolean test = d398.convert();
    }

	if ( mp400.equals("1") ) {
           mpmbr400 d400 = new mpmbr400();
	     //new mpmbr400Reloaded(ReportDate);
           d400.setfromDate(fromdate);
           d400.settoDate(todate);
           d400.setInstname(bankname);
           d400.setInstcode(bankcode);
           d400.setOutputpath(outputpath);
           d400.setSignatory1(signatory1);
           d400.setSignatory2(signatory2);
           d400.setContactName(contactname);
           d400.setTelno(telno);
           d400.setExtno(extno);
           boolean test = d400.convert();
    }
	if ( mp402.equals("1") ) {
           mpmbr402 d402 = new mpmbr402();
	     //new mpmbr402Reloaded(ReportDate);
           d402.setfromDate(fromdate);
           d402.settoDate(todate);
           d402.setInstname(bankname);
           d402.setInstcode(bankcode);
           d402.setOutputpath(outputpath);
           d402.setSignatory1(signatory1);
           d402.setSignatory2(signatory2);
           d402.setContactName(contactname);
           d402.setTelno(telno);
           d402.setExtno(extno);
           boolean test = d402.convert();
    }
	if ( mp404.equals("1") ) {
           mpmbr404 d404 = new mpmbr404();
	     //new mpmbr404Reloaded(ReportDate);
           d404.setfromDate(fromdate);
           d404.settoDate(todate);
           d404.setInstname(bankname);
           d404.setInstcode(bankcode);
           d404.setOutputpath(outputpath);
           d404.setSignatory1(signatory1);
           d404.setSignatory2(signatory2);
           d404.setContactName(contactname);
           d404.setTelno(telno);
           d404.setExtno(extno);
           boolean test = d404.convert();
    }
	if ( mp406.equals("1") ) {
           mpmbr406 d406 = new mpmbr406();
	     //new mpmbr406Reloaded(ReportDate);
           d406.setfromDate(fromdate);
           d406.settoDate(todate);
           d406.setInstname(bankname);
           d406.setInstcode(bankcode);
           d406.setOutputpath(outputpath);
           d406.setSignatory1(signatory1);
           d406.setSignatory2(signatory2);
           d406.setContactName(contactname);
           d406.setTelno(telno);
           d406.setExtno(extno);
           boolean test = d406.convert();
    }
	if ( mp408.equals("1") ) {
           mpmbr408 d408 = new mpmbr408();
	     //new mpmbr408Reloaded(ReportDate);
           d408.setfromDate(fromdate);
           d408.settoDate(todate);
           d408.setInstname(bankname);
           d408.setInstcode(bankcode);
           d408.setOutputpath(outputpath);
           d408.setSignatory1(signatory1);
           d408.setSignatory2(signatory2);
           d408.setContactName(contactname);
           d408.setTelno(telno);
           d408.setExtno(extno);
           boolean test = d408.convert();
    }

    if ( mp410.equals("1") ) {
           mpmbr410 d410 = new mpmbr410();
	     //new mpmbr410Reloaded(ReportDate);
           d410.setfromDate(fromdate);
           d410.settoDate(todate);
           d410.setInstname(bankname);
           d410.setInstcode(bankcode);
           d410.setOutputpath(outputpath);
           d410.setSignatory1(signatory1);
           d410.setSignatory2(signatory2);
           d410.setContactName(contactname);
           d410.setTelno(telno);
           d410.setExtno(extno);
           boolean test = d410.convert();
    }

	if ( mp412.equals("1") ) {
           mpmbr412 d412 = new mpmbr412();
	     //new mpmbr412Reloaded(ReportDate);
           d412.setfromDate(fromdate);
           d412.settoDate(todate);
           d412.setInstname(bankname);
           d412.setInstcode(bankcode);
           d412.setOutputpath(outputpath);
           d412.setSignatory1(signatory1);
           d412.setSignatory2(signatory2);
           d412.setContactName(contactname);
           d412.setTelno(telno);
           d412.setExtno(extno);
           boolean test = d412.convert();
    }

      	if ( mp1000.equals("1") ) {
           mpmbr1000 d1000 = new mpmbr1000();
	     new mpmbr1000Reloaded(ReportDate);
	     //new mpmbr1000BReloaded(ReportDate);	     
           d1000.setfromDate(fromdate);
           d1000.settoDate(todate);
           d1000.setInstname(bankname);
           d1000.setInstcode(bankcode);
           d1000.setOutputpath(outputpath);
           d1000.setSignatory1(signatory1);
           d1000.setSignatory2(signatory2);
           d1000.setContactName(contactname);
           d1000.setTelno(telno);
           d1000.setExtno(extno);
           boolean test = d1000.convert();
   

           
           mpmbr1000A d1000a = new mpmbr1000A();
           d1000a.setfromDate(fromdate);
           d1000a.settoDate(todate);
           d1000a.setInstname(bankname);
           d1000a.setInstcode(bankcode);
           d1000a.setOutputpath("D:/Program Files/Apache Software Foundation/Tomcat 5.0/webapps/cbnpmbifrs/reports/");
           d1000a.setSignatory1(signatory1);
           d1000a.setSignatory2(signatory2);
           d1000a.setContactName(contactname);
           d1000a.setTelno(telno);
           d1000a.setExtno(extno);
           boolean testa = d1000a.convert();
           new createfiles("MPMBR1000","D:/Program Files/Apache Software Foundation/Tomcat 5.0/webapps/cbnpmbifrs/reports/");
    }

	if ( mp1001.equals("1") ) {
           mpmbr1001 d1001 = new mpmbr1001();
	     new mpmbr1001Reloaded(ReportDate);
           d1001.setfromDate(fromdate);
           d1001.settoDate(todate);
           d1001.setInstname(bankname);
           d1001.setInstcode(bankcode);
           d1001.setOutputpath(outputpath);
           d1001.setSignatory1(signatory1);
           d1001.setSignatory2(signatory2);
           d1001.setContactName(contactname);
           d1001.setTelno(telno);
           d1001.setExtno(extno);
           boolean test = d1001.convert();
    }

	if ( mp1002.equals("1") ) {
           mpmbr1002 d1002 = new mpmbr1002();
	     new mpmbr1002Reloaded(ReportDate);
           d1002.setfromDate(fromdate);
           d1002.settoDate(todate);
           d1002.setInstname(bankname);
           d1002.setInstcode(bankcode);
           d1002.setOutputpath(outputpath);
           d1002.setSignatory1(signatory1);
           d1002.setSignatory2(signatory2);
           d1002.setContactName(contactname);
           d1002.setTelno(telno);
           d1002.setExtno(extno);
           boolean test = d1002.convert();
    }


if ( tester ) {
  %>

  <SCRIPT Language = "JavaScript">
    alert("Files have been generated into " + "<%=outputpath%>");
    window.location = 'mpmbr_select.jsp';
    </SCRIPT>
    <%
    }
 %>
  </body>
</html>
