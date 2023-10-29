<%@ page language="java" import="cbnbas.per1.*, java.sql.*, java.io.*" %>
<html>
  <head>
    <title>Generating XML Files, Please Wait ...</title>
  <!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
</head>
<body>
<%
  Connection con=null;
  Statement st = null;
  ResultSet rs = null;
  String odbcName = "PER1";
  String odbcprofile = "jdbc:odbc:"+odbcName;
  String bankname = "";
  String bankcode = "";
  String thisday = "";
  String signatory1 = "";
  String signatory2 = "";
  String contactname = "";
  String telno = "";
  String extno = "";
  boolean tester = true;

  try {

     Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
     con = DriverManager.getConnection(odbcprofile);

     st = con.createStatement();
     rs = st.executeQuery("Select * from [CONFIG$]");

     if ( rs.next() ) {
       bankcode = rs.getString(2);
     }

     if ( rs.next() ) {
       bankname = rs.getString(2);
     }

     if ( rs.next() ) {
       thisday = rs.getString(2);
     }

     if ( rs.next() ) {
       signatory1 = rs.getString(2);
     }

     if ( rs.next() ) {
       signatory2 = rs.getString(2);
     }

     if ( rs.next() ) {
       contactname = rs.getString(2);
     }

     if ( rs.next() ) {
       telno = rs.getString(2);
     }

     if ( rs.next() ) {
       extno = rs.getString(2);
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

	String per1_100 = request.getParameter("per100");
	String per1_101 = request.getParameter("per101");
	String per1_200 = request.getParameter("per200");
	String per1_201 = request.getParameter("per201");
	String per1_203 = request.getParameter("per203");
	String per1_204 = request.getParameter("per204");
	String per1_300 = request.getParameter("per300");
	String per1_301 = request.getParameter("per301");
	String per1_302 = request.getParameter("per302");
	String per1_303 = request.getParameter("per303");
	String per1_304 = request.getParameter("per304");
	String per1_305 = request.getParameter("per305");
	String per1_306 = request.getParameter("per306");
	String per1_400 = request.getParameter("per400");
        String per1_401 = request.getParameter("per401");
	String per1_402 = request.getParameter("per402");
	String per1_403 = request.getParameter("per403");
	String per1_404 = request.getParameter("per404");
	String per1_405 = request.getParameter("per405");
	String per1_406 = request.getParameter("per406");
	String per1_407 = request.getParameter("per407");
	String per1_500 = request.getParameter("per500");
	String per1_501 = request.getParameter("per501");
	String per1_502 = request.getParameter("per502");
	String per1_503 = request.getParameter("per503");
	String per1_600 = request.getParameter("per600");
	String per1_601 = request.getParameter("per601");
	String per1_602 = request.getParameter("per602");

	String outputpath = "c:/cbnxml/per/";

	String newpath = outputpath + thisday ;
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

	if ( per1_100.equals("1") ) {
           per100 p100 = new per100();
           p100.setDayString(thisday);
           p100.setInstname(bankname);
           p100.setInstcode(bankcode);
           p100.setOutputpath(outputpath);
           p100.setSignatory1(signatory1);
           p100.setSignatory2(signatory2);
           p100.setContactName(contactname);
           p100.setTelno(telno);
           p100.setExtno(extno);
           boolean test = p100.convert();
	}

	if ( per1_101.equals("1") ) {
           per101 p101 = new per101();
           p101.setDayString(thisday);
           p101.setInstname(bankname);
           p101.setInstcode(bankcode);
           p101.setOutputpath(outputpath);
           p101.setSignatory1(signatory1);
           p101.setSignatory2(signatory2);
           p101.setContactName(contactname);
           p101.setTelno(telno);
           p101.setExtno(extno);
           boolean test = p101.convert();
	}

	if ( per1_200.equals("1") ) {
           per200 p200 = new per200();
           p200.setDayString(thisday);
           p200.setInstname(bankname);
           p200.setInstcode(bankcode);
	   p200.setOutputpath(outputpath);
           p200.setSignatory1(signatory1);
           p200.setSignatory2(signatory2);
           p200.setContactName(contactname);
           p200.setTelno(telno);
           p200.setExtno(extno);
           boolean test = p200.convert();
	}

	if ( per1_201.equals("1") ) {
           per201 p201 = new per201();
           p201.setDayString(thisday);
           p201.setInstname(bankname);
           p201.setInstcode(bankcode);
           p201.setOutputpath(outputpath);
           p201.setSignatory1(signatory1);
           p201.setSignatory2(signatory2);
           p201.setContactName(contactname);
           p201.setTelno(telno);
           p201.setExtno(extno);
           boolean test = p201.convert();
	}

	if ( per1_203.equals("1") ) {
           per203 p203 = new per203();
           p203.setDayString(thisday);
           p203.setInstname(bankname);
           p203.setInstcode(bankcode);
           p203.setOutputpath(outputpath);
           p203.setSignatory1(signatory1);
           p203.setSignatory2(signatory2);
           p203.setContactName(contactname);
           p203.setTelno(telno);
           p203.setExtno(extno);
           boolean test = p203.convert();
	}

	if ( per1_204.equals("1") ) {
           per204 p204 = new per204();
           p204.setDayString(thisday);
           p204.setInstname(bankname);
           p204.setInstcode(bankcode);
           p204.setOutputpath(outputpath);
           p204.setSignatory1(signatory1);
           p204.setSignatory2(signatory2);
           p204.setContactName(contactname);
           p204.setTelno(telno);
           p204.setExtno(extno);
           boolean test = p204.convert();
	}
	/*
	if ( per1_300.equals("1") ) {
           per300 p300 = new per300();
           p300.setDayString(thisday);
           p300.setInstname(bankname);
           p300.setInstcode(bankcode);
           p300.setOutputpath(outputpath);
           p300.setSignatory1(signatory1);
           p300.setSignatory2(signatory2);
           p300.setContactName(contactname);
           p300.setTelno(telno);
           p300.setExtno(extno);
           boolean test = p300.convert();
	}*/

	if ( per1_301.equals("1") ) {
           per301 p301 = new per301();
           p301.setDayString(thisday);
           p301.setInstname(bankname);
           p301.setInstcode(bankcode);
           p301.setOutputpath(outputpath);
           p301.setSignatory1(signatory1);
           p301.setSignatory2(signatory2);
           p301.setContactName(contactname);
           p301.setTelno(telno);
           p301.setExtno(extno);
           boolean test = p301.convert();
	}
   if ( per1_302.equals("1") ) {
           per302 p302 = new per302();
           p302.setDayString(thisday);
           p302.setInstname(bankname);
           p302.setInstcode(bankcode);
           p302.setOutputpath(outputpath);
           p302.setSignatory1(signatory1);
           p302.setSignatory2(signatory2);
           p302.setContactName(contactname);
           p302.setTelno(telno);
           p302.setExtno(extno);
           boolean test = p302.convert();
    }
	if ( per1_303.equals("1") ) {
           per303 p303 = new per303();
           p303.setDayString(thisday);
           p303.setInstname(bankname);
           p303.setInstcode(bankcode);
           p303.setOutputpath(outputpath);
           p303.setSignatory1(signatory1);
           p303.setSignatory2(signatory2);
           p303.setContactName(contactname);
           p303.setTelno(telno);
           p303.setExtno(extno);
           boolean test = p303.convert();
    }
	if ( per1_304.equals("1") ) {
           per304 p304 = new per304();
           p304.setDayString(thisday);
           p304.setInstname(bankname);
           p304.setInstcode(bankcode);
           p304.setOutputpath(outputpath);
           p304.setSignatory1(signatory1);
           p304.setSignatory2(signatory2);
           p304.setContactName(contactname);
           p304.setTelno(telno);
           p304.setExtno(extno);
           boolean test = p304.convert();
    }
	if ( per1_305.equals("1") ) {
           per305 p305 = new per305();
           p305.setDayString(thisday);
           p305.setInstname(bankname);
           p305.setInstcode(bankcode);
           p305.setOutputpath(outputpath);
           p305.setSignatory1(signatory1);
           p305.setSignatory2(signatory2);
           p305.setContactName(contactname);
           p305.setTelno(telno);
           p305.setExtno(extno);
           boolean test = p305.convert();
    }
	if ( per1_306.equals("1") ) {
           per306 p306 = new per306();
           p306.setDayString(thisday);
           p306.setInstname(bankname);
           p306.setInstcode(bankcode);
           p306.setOutputpath(outputpath);
           p306.setSignatory1(signatory1);
           p306.setSignatory2(signatory2);
           p306.setContactName(contactname);
           p306.setTelno(telno);
           p306.setExtno(extno);
           boolean test = p306.convert();
    }
	if ( per1_400.equals("1") ) {
           per400 p400 = new per400();
           p400.setDayString(thisday);
           p400.setInstname(bankname);
           p400.setInstcode(bankcode);
           p400.setOutputpath(outputpath);
           p400.setSignatory1(signatory1);
           p400.setSignatory2(signatory2);
           p400.setContactName(contactname);
           p400.setTelno(telno);
           p400.setExtno(extno);
           boolean test = p400.convert();
    }
	if ( per1_401.equals("1") ) {
           per401 p401 = new per401();
           p401.setDayString(thisday);
           p401.setInstname(bankname);
           p401.setInstcode(bankcode);
           p401.setOutputpath(outputpath);
           p401.setSignatory1(signatory1);
           p401.setSignatory2(signatory2);
           p401.setContactName(contactname);
           p401.setTelno(telno);
           p401.setExtno(extno);
           boolean test = p401.convert();
    }
	if ( per1_402.equals("1") ) {
           per402 p402 = new per402();
           p402.setDayString(thisday);
           p402.setInstname(bankname);
           p402.setInstcode(bankcode);
           p402.setOutputpath(outputpath);
           p402.setSignatory1(signatory1);
           p402.setSignatory2(signatory2);
           p402.setContactName(contactname);
           p402.setTelno(telno);
           p402.setExtno(extno);
           boolean test = p402.convert();
    }
	if ( per1_403.equals("1") ) {
           per403 p403 = new per403();
           p403.setDayString(thisday);
           p403.setInstname(bankname);
           p403.setInstcode(bankcode);
           p403.setOutputpath(outputpath);
           p403.setSignatory1(signatory1);
           p403.setSignatory2(signatory2);
           p403.setContactName(contactname);
           p403.setTelno(telno);
           p403.setExtno(extno);
           boolean test = p403.convert();
    }
	if ( per1_404.equals("1") ) {
           per404 p404 = new per404();
           p404.setDayString(thisday);
           p404.setInstname(bankname);
           p404.setInstcode(bankcode);
           p404.setOutputpath(outputpath);
           p404.setSignatory1(signatory1);
           p404.setSignatory2(signatory2);
           p404.setContactName(contactname);
           p404.setTelno(telno);
           p404.setExtno(extno);
           boolean test = p404.convert();
    }
	if ( per1_405.equals("1") ) {
           per405 p405 = new per405();
           p405.setDayString(thisday);
           p405.setInstname(bankname);
           p405.setInstcode(bankcode);
           p405.setOutputpath(outputpath);
           p405.setSignatory1(signatory1);
           p405.setSignatory2(signatory2);
           p405.setContactName(contactname);
           p405.setTelno(telno);
           p405.setExtno(extno);
           boolean test = p405.convert();
    }
	if ( per1_406.equals("1") ) {
           per406 p406 = new per406();
           p406.setDayString(thisday);
           p406.setInstname(bankname);
           p406.setInstcode(bankcode);
           p406.setOutputpath(outputpath);
           p406.setSignatory1(signatory1);
           p406.setSignatory2(signatory2);
           p406.setContactName(contactname);
           p406.setTelno(telno);
           p406.setExtno(extno);
           boolean test = p406.convert();
    }
	if ( per1_407.equals("1") ) {
           per407 p407 = new per407();
           p407.setDayString(thisday);
           p407.setInstname(bankname);
           p407.setInstcode(bankcode);
           p407.setOutputpath(outputpath);
           p407.setSignatory1(signatory1);
           p407.setSignatory2(signatory2);
           p407.setContactName(contactname);
           p407.setTelno(telno);
           p407.setExtno(extno);
           boolean test = p407.convert();
    }
	if ( per1_500.equals("1") ) {
           per500 p500 = new per500();
           p500.setDayString(thisday);
           p500.setInstname(bankname);
           p500.setInstcode(bankcode);
           p500.setOutputpath(outputpath);
           p500.setSignatory1(signatory1);
           p500.setSignatory2(signatory2);
           p500.setContactName(contactname);
           p500.setTelno(telno);
           p500.setExtno(extno);
           boolean test = p500.convert();
    }
	if ( per1_501.equals("1") ) {
           per501 p501 = new per501();
           p501.setDayString(thisday);
           p501.setInstname(bankname);
           p501.setInstcode(bankcode);
           p501.setOutputpath(outputpath);
           p501.setSignatory1(signatory1);
           p501.setSignatory2(signatory2);
           p501.setContactName(contactname);
           p501.setTelno(telno);
           p501.setExtno(extno);
           boolean test = p501.convert();
    }
	if ( per1_502.equals("1") ) {
           per502 p502 = new per502();
           p502.setDayString(thisday);
           p502.setInstname(bankname);
           p502.setInstcode(bankcode);
           p502.setOutputpath(outputpath);
           p502.setSignatory1(signatory1);
           p502.setSignatory2(signatory2);
           p502.setContactName(contactname);
           p502.setTelno(telno);
           p502.setExtno(extno);
           boolean test = p502.convert();
    }
	if ( per1_503.equals("1") ) {
           per503 p503 = new per503();
           p503.setDayString(thisday);
           p503.setInstname(bankname);
           p503.setInstcode(bankcode);
           p503.setOutputpath(outputpath);
           p503.setSignatory1(signatory1);
           p503.setSignatory2(signatory2);
           p503.setContactName(contactname);
           p503.setTelno(telno);
           p503.setExtno(extno);
           boolean test = p503.convert();
    }
	if ( per1_600.equals("1") ) {
           per600 p600 = new per600();
           p600.setDayString(thisday);
           p600.setInstname(bankname);
           p600.setInstcode(bankcode);
           p600.setOutputpath(outputpath);
           p600.setSignatory1(signatory1);
           p600.setSignatory2(signatory2);
           p600.setContactName(contactname);
           p600.setTelno(telno);
           p600.setExtno(extno);
           boolean test = p600.convert();
    }
	if ( per1_601.equals("1") ) {
           per601 p601 = new per601();
           p601.setDayString(thisday);
           p601.setInstname(bankname);
           p601.setInstcode(bankcode);
           p601.setOutputpath(outputpath);
           p601.setSignatory1(signatory1);
           p601.setSignatory2(signatory2);
           p601.setContactName(contactname);
           p601.setTelno(telno);
           p601.setExtno(extno);
           boolean test = p601.convert();
    }
    /*
	if ( per1_602.equals("1") ) {
           per602 p602 = new per602();
           p602.setDayString(thisday);
           p602.setInstname(bankname);
           p602.setInstcode(bankcode);
           p602.setOutputpath(outputpath);
           p602.setSignatory1(signatory1);
           p602.setSignatory2(signatory2);
           p602.setContactName(contactname);
           p602.setTelno(telno);
           p602.setExtno(extno);
           boolean test = p602.convert();
    } */


if ( tester ) {
  %>

  <SCRIPT Language = "JavaScript">
    alert("Files have been generated into " + "<%=outputpath%>");
    window.location = 'dfi_per_select.jsp';
    </SCRIPT>
    <%
    }
 %>
  </body>
</html>
