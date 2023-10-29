<%@ page language="java" import="cbnbas.qdfir.*, java.sql.*, java.io.*" %>
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
  String odbcName = "QDFIR";
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
	String qd100 = request.getParameter("qd100");
        String qd101 = request.getParameter("qd101");
	String qd102 = request.getParameter("qd102");
	String qd181 = request.getParameter("qd181");
	String qd196 = request.getParameter("qd196");
	String qd221 = request.getParameter("qd221");
	String qd231= request.getParameter("qd231");
	String qd232= request.getParameter("qd232");
	String qd241 = request.getParameter("qd241");
	String qd250 = request.getParameter("qd250");
	String qd251 = request.getParameter("qd251");
	String qd261 = request.getParameter("qd261");
	String qd262 = request.getParameter("qd262");
	String qd300 = request.getParameter("qd300");
	String qd301 = request.getParameter("qd301");
	String qd302 = request.getParameter("qd302");
	String qd311 = request.getParameter("qd311");
	String qd321 = request.getParameter("qd321");
	String qd331 = request.getParameter("qd331");
	String qd351 = request.getParameter("qd351");
	String qd411 = request.getParameter("qd411");
	String qd421 = request.getParameter("qd421");
	String qd425= request.getParameter("qd425");
	String qd461 = request.getParameter("qd461");
	String qd471 = request.getParameter("qd461");
	String qd511 = request.getParameter("qd511");
	String qd521 = request.getParameter("qd521");
	String qd531 = request.getParameter("qd531");
	String qd541 = request.getParameter("qd541");
	String qd600 = request.getParameter("qd600");
	String qd601 = request.getParameter("qd601");
	String qd651 = request.getParameter("qd651");
        String qd661 = request.getParameter("qd661");
	String qd671 = request.getParameter("qd671");
	String qd681 = request.getParameter("qd681");
	String qd700 = request.getParameter("qd700");
	String qd701 = request.getParameter("qd701");
	String qd800 = request.getParameter("qd800");
	String qd900 = request.getParameter("qd900");
	String qd901 = request.getParameter("qd901");
	String qd920 = request.getParameter("qd920");
	String qd921 = request.getParameter("qd921");
	String qd930 = request.getParameter("qd930");
	String qd961 = request.getParameter("qd961");
	String qd1000 = request.getParameter("qd1000");
	String qd1200 = request.getParameter("qd1200");
	String qd1300 = request.getParameter("qd1300");
	String qd1400 = request.getParameter("qd1400");
	String qd1500 = request.getParameter("qd1500");
	String qd1650 = request.getParameter("qd1650");
	String qd1700 = request.getParameter("qd1700");

	String outputpath = "c:/cbnxml/qdfir/";

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

	if ( qd101.equals("1") ) {
           qdfir101 d101 = new qdfir101();
           d101.setDaystring(thisday);
           d101.setInstname(bankname);
           d101.setInstcode(bankcode);
           d101.setOutputpath(outputpath);
           d101.setSignatory1(signatory1);
           d101.setSignatory2(signatory2);
           d101.setContactName(contactname);
           d101.setTelno(telno);
           d101.setExtno(extno);
           boolean test = d101.convert();
	}
	if ( qd102.equals("1") ) {
           qdfir102 d102 = new qdfir102();
           d102.setDaystring(thisday);
           d102.setInstname(bankname);
           d102.setInstcode(bankcode);
           d102.setOutputpath(outputpath);
           d102.setSignatory1(signatory1);
           d102.setSignatory2(signatory2);
           d102.setContactName(contactname);
           d102.setTelno(telno);
           d102.setExtno(extno);
           boolean test = d102.convert();
	}
	if ( qd181.equals("1") ) {
           qdfir181 d181 = new qdfir181();
           d181.setDaystring(thisday);
           d181.setInstname(bankname);
           d181.setInstcode(bankcode);
	   d181.setOutputpath(outputpath);
           d181.setSignatory1(signatory1);
           d181.setSignatory2(signatory2);
           d181.setContactName(contactname);
           d181.setTelno(telno);
           d181.setExtno(extno);
           boolean test = d181.convert();
	}
	if ( qd196.equals("1") ) {
           qdfir196 d196 = new qdfir196();
           d196.setDaystring(thisday);
           d196.setInstname(bankname);
           d196.setInstcode(bankcode);
           d196.setOutputpath(outputpath);
           d196.setSignatory1(signatory1);
           d196.setSignatory2(signatory2);
           d196.setContactName(contactname);
           d196.setTelno(telno);
           d196.setExtno(extno);
           boolean test = d196.convert();
	}
	if ( qd1200.equals("1") ) {
           qdfir1200 d1200 = new qdfir1200();
           d1200.setDaystring(thisday);
           d1200.setInstname(bankname);
           d1200.setInstcode(bankcode);
           d1200.setOutputpath(outputpath);
           d1200.setSignatory1(signatory1);
           d1200.setSignatory2(signatory2);
           d1200.setContactName(contactname);
           d1200.setTelno(telno);
           d1200.setExtno(extno);
           boolean test = d1200.convert();
	}
	if ( qd221.equals("1") ) {
           qdfir221 d221 = new qdfir221();
           d221.setDaystring(thisday);
           d221.setInstname(bankname);
           d221.setInstcode(bankcode);
           d221.setOutputpath(outputpath);
           d221.setSignatory1(signatory1);
           d221.setSignatory2(signatory2);
           d221.setContactName(contactname);
           d221.setTelno(telno);
           d221.setExtno(extno);
           boolean test = d221.convert();
	}
	if ( qd231.equals("1") ) {
           qdfir231 d231 = new qdfir231();
           d231.setDaystring(thisday);
           d231.setInstname(bankname);
           d231.setInstcode(bankcode);
           d231.setOutputpath(outputpath);
           d231.setSignatory1(signatory1);
           d231.setSignatory2(signatory2);
           d231.setContactName(contactname);
           d231.setTelno(telno);
           d231.setExtno(extno);
           boolean test = d231.convert();
	}
	if ( qd232.equals("1") ) {
           qdfir232 d232 = new qdfir232();
           d232.setDaystring(thisday);
           d232.setInstname(bankname);
           d232.setInstcode(bankcode);
           d232.setOutputpath(outputpath);
           d232.setSignatory1(signatory1);
           d232.setSignatory2(signatory2);
           d232.setContactName(contactname);
           d232.setTelno(telno);
           d232.setExtno(extno);
           boolean test = d232.convert();
	}
	if ( qd1300.equals("1") ) {
           qdfir1300 d1300 = new qdfir1300();
           d1300.setDaystring(thisday);
           d1300.setInstname(bankname);
           d1300.setInstcode(bankcode);
           d1300.setOutputpath(outputpath);
           d1300.setSignatory1(signatory1);
           d1300.setSignatory2(signatory2);
           d1300.setContactName(contactname);
           d1300.setTelno(telno);
           d1300.setExtno(extno);
           boolean test = d1300.convert();
    }
	if ( qd241.equals("1") ) {
           qdfir241 d241 = new qdfir241();
           d241.setDaystring(thisday);
           d241.setInstname(bankname);
           d241.setInstcode(bankcode);
           d241.setOutputpath(outputpath);
           d241.setSignatory1(signatory1);
           d241.setSignatory2(signatory2);
           d241.setContactName(contactname);
           d241.setTelno(telno);
           d241.setExtno(extno);
           boolean test = d241.convert();
    }
	if ( qd250.equals("1") ) {
           qdfir250 d250 = new qdfir250();
           d250.setDaystring(thisday);
           d250.setInstname(bankname);
           d250.setInstcode(bankcode);
           d250.setOutputpath(outputpath);
           d250.setSignatory1(signatory1);
           d250.setSignatory2(signatory2);
           d250.setContactName(contactname);
           d250.setTelno(telno);
           d250.setExtno(extno);
           boolean test = d250.convert();
    }
	if ( qd251.equals("1") ) {
           qdfir251 d251 = new qdfir251();
           d251.setDaystring(thisday);
           d251.setInstname(bankname);
           d251.setInstcode(bankcode);
           d251.setOutputpath(outputpath);
           d251.setSignatory1(signatory1);
           d251.setSignatory2(signatory2);
           d251.setContactName(contactname);
           d251.setTelno(telno);
           d251.setExtno(extno);
           boolean test = d251.convert();
    }
	if ( qd1400.equals("1") ) {
           qdfir1400 d1400 = new qdfir1400();
           d1400.setDaystring(thisday);
           d1400.setInstname(bankname);
           d1400.setInstcode(bankcode);
           d1400.setOutputpath(outputpath);
           d1400.setSignatory1(signatory1);
           d1400.setSignatory2(signatory2);
           d1400.setContactName(contactname);
           d1400.setTelno(telno);
           d1400.setExtno(extno);
           boolean test = d1400.convert();
    }
	if ( qd1500.equals("1") ) {
           qdfir1500 d1500 = new qdfir1500();
           d1500.setDaystring(thisday);
           d1500.setInstname(bankname);
           d1500.setInstcode(bankcode);
           d1500.setOutputpath(outputpath);
           d1500.setSignatory1(signatory1);
           d1500.setSignatory2(signatory2);
           d1500.setContactName(contactname);
           d1500.setTelno(telno);
           d1500.setExtno(extno);
           boolean test = d1500.convert();
    }
	if ( qd300.equals("1") ) {
           qdfir300 d300 = new qdfir300();
           d300.setDaystring(thisday);
           d300.setInstname(bankname);
           d300.setInstcode(bankcode);
           d300.setOutputpath(outputpath);
           d300.setSignatory1(signatory1);
           d300.setSignatory2(signatory2);
           d300.setContactName(contactname);
           d300.setTelno(telno);
           d300.setExtno(extno);
           boolean test = d300.convert();
    }
    /*
    	if ( qd1600.equals("1") ) {
           qdfir1600 d1600 = new qdfir1600();
           d1600.setDaystring(thisday);
           d1600.setInstname(bankname);
           d1600.setInstcode(bankcode);
           d1600.setOutputpath(outputpath);
           d1600.setSignatory1(signatory1);
           d1600.setSignatory2(signatory2);
           d1600.setContactName(contactname);
           d1600.setTelno(telno);
           d1600.setExtno(extno);
           boolean test = d1600.convert();
    } */
    	if ( qd1650.equals("1") ) {
           qdfir1650 d1650 = new qdfir1650();
           d1650.setDaystring(thisday);
           d1650.setInstname(bankname);
           d1650.setInstcode(bankcode);
           d1650.setOutputpath(outputpath);
           d1650.setSignatory1(signatory1);
           d1650.setSignatory2(signatory2);
           d1650.setContactName(contactname);
           d1650.setTelno(telno);
           d1650.setExtno(extno);
           boolean test = d1650.convert();
    }
	if ( qd1700.equals("1") ) {
           qdfir1700 d1700 = new qdfir1700();
           d1700.setDaystring(thisday);
           d1700.setInstname(bankname);
           d1700.setInstcode(bankcode);
           d1700.setOutputpath(outputpath);
           d1700.setSignatory1(signatory1);
           d1700.setSignatory2(signatory2);
           d1700.setContactName(contactname);
           d1700.setTelno(telno);
           d1700.setExtno(extno);
           boolean test = d1700.convert();
    }
	if ( qd301.equals("1") ) {
           qdfir301 d301 = new qdfir301();
           d301.setDaystring(thisday);
           d301.setInstname(bankname);
           d301.setInstcode(bankcode);
           d301.setOutputpath(outputpath);
           d301.setSignatory1(signatory1);
           d301.setSignatory2(signatory2);
           d301.setContactName(contactname);
           d301.setTelno(telno);
           d301.setExtno(extno);
           boolean test = d301.convert();
    }
	if ( qd302.equals("1") ) {
           qdfir302 d302 = new qdfir302();
           d302.setDaystring(thisday);
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
	if ( qd311.equals("1") ) {
           qdfir311 d311 = new qdfir311();
           d311.setDaystring(thisday);
           d311.setInstname(bankname);
           d311.setInstcode(bankcode);
           d311.setOutputpath(outputpath);
           d311.setSignatory1(signatory1);
           d311.setSignatory2(signatory2);
           d311.setContactName(contactname);
           d311.setTelno(telno);
           d311.setExtno(extno);
           boolean test = d311.convert();
    }
	if ( qd321.equals("1") ) {
           qdfir321 d321 = new qdfir321();
           d321.setDaystring(thisday);
           d321.setInstname(bankname);
           d321.setInstcode(bankcode);
           d321.setOutputpath(outputpath);
           d321.setSignatory1(signatory1);
           d321.setSignatory2(signatory2);
           d321.setContactName(contactname);
           d321.setTelno(telno);
           d321.setExtno(extno);
           boolean test = d321.convert();
    }
    	if ( qd331.equals("1") ) {
           qdfir300 d300 = new qdfir300();
           d300.setDaystring(thisday);
           d300.setInstname(bankname);
           d300.setInstcode(bankcode);
           d300.setOutputpath(outputpath);
           d300.setSignatory1(signatory1);
           d300.setSignatory2(signatory2);
           d300.setContactName(contactname);
           d300.setTelno(telno);
           d300.setExtno(extno);
           boolean test = d300.convert();
	}
	if ( qd351.equals("1") ) {
           qdfir351 d351 = new qdfir351();
           d351.setDaystring(thisday);
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

	if ( qd331.equals("1") ) {
           qdfir331 d331 = new qdfir331();
           d331.setDaystring(thisday);
           d331.setInstname(bankname);
           d331.setInstcode(bankcode);
	   d331.setOutputpath(outputpath);
           d331.setSignatory1(signatory1);
           d331.setSignatory2(signatory2);
           d331.setContactName(contactname);
           d331.setTelno(telno);
           d331.setExtno(extno);
           boolean test = d331.convert();
	}


	if ( qd411.equals("1") ) {
           qdfir411 d411 = new qdfir411();
           d411.setDaystring(thisday);
           d411.setInstname(bankname);
           d411.setInstcode(bankcode);
           d411.setOutputpath(outputpath);
           d411.setSignatory1(signatory1);
           d411.setSignatory2(signatory2);
           d411.setContactName(contactname);
           d411.setTelno(telno);
           d411.setExtno(extno);
           boolean test = d411.convert();
	}
	if ( qd421.equals("1") ) {
           qdfir421 d421 = new qdfir421();
           d421.setDaystring(thisday);
           d421.setInstname(bankname);
           d421.setInstcode(bankcode);
           d421.setOutputpath(outputpath);
           d421.setSignatory1(signatory1);
           d421.setSignatory2(signatory2);
           d421.setContactName(contactname);
           d421.setTelno(telno);
           d421.setExtno(extno);
           boolean test = d421.convert();
	}
	if ( qd425.equals("1") ) {
           qdfir425 d425 = new qdfir425();
           d425.setDaystring(thisday);
           d425.setInstname(bankname);
           d425.setInstcode(bankcode);
           d425.setOutputpath(outputpath);
           d425.setSignatory1(signatory1);
           d425.setSignatory2(signatory2);
           d425.setContactName(contactname);
           d425.setTelno(telno);
           d425.setExtno(extno);
           boolean test = d425.convert();
	}
	if ( qd461.equals("1") ) {
           qdfir461 d461 = new qdfir461();
           d461.setDaystring(thisday);
           d461.setInstname(bankname);
           d461.setInstcode(bankcode);
           d461.setOutputpath(outputpath);
           d461.setSignatory1(signatory1);
           d461.setSignatory2(signatory2);
           d461.setContactName(contactname);
           d461.setTelno(telno);
           d461.setExtno(extno);
           boolean test = d461.convert();
	}
	if ( qd471.equals("1") ) {
           qdfir471 d471 = new qdfir471();
           d471.setDaystring(thisday);
           d471.setInstname(bankname);
           d471.setInstcode(bankcode);
           d471.setOutputpath(outputpath);
           d471.setSignatory1(signatory1);
           d471.setSignatory2(signatory2);
           d471.setContactName(contactname);
           d471.setTelno(telno);
           d471.setExtno(extno);
           boolean test = d471.convert();
	}
	if ( qd511.equals("1") ) {
           qdfir511 d511 = new qdfir511();
           d511.setDaystring(thisday);
           d511.setInstname(bankname);
           d511.setInstcode(bankcode);
           d511.setOutputpath(outputpath);
           d511.setSignatory1(signatory1);
           d511.setSignatory2(signatory2);
           d511.setContactName(contactname);
           d511.setTelno(telno);
           d511.setExtno(extno);
           boolean test = d511.convert();
    	}
	if ( qd521.equals("1") ) {
           qdfir521 d521 = new qdfir521();
           d521.setDaystring(thisday);
           d521.setInstname(bankname);
           d521.setInstcode(bankcode);
           d521.setOutputpath(outputpath);
           d521.setSignatory1(signatory1);
           d521.setSignatory2(signatory2);
           d521.setContactName(contactname);
           d521.setTelno(telno);
           d521.setExtno(extno);
           boolean test = d521.convert();
    	}

	if ( qd531.equals("1") ) {
           qdfir531 d531 = new qdfir531();
           d531.setDaystring(thisday);
           d531.setInstname(bankname);
           d531.setInstcode(bankcode);
           d531.setOutputpath(outputpath);
           d531.setSignatory1(signatory1);
           d531.setSignatory2(signatory2);
           d531.setContactName(contactname);
           d531.setTelno(telno);
           d531.setExtno(extno);
           boolean test = d531.convert();
    	}
        if ( qd541.equals("1") ) {
           qdfir541 d541 = new qdfir541();
           d541.setDaystring(thisday);
           d541.setInstname(bankname);
           d541.setInstcode(bankcode);
           d541.setOutputpath(outputpath);
           d541.setSignatory1(signatory1);
           d541.setSignatory2(signatory2);
           d541.setContactName(contactname);
           d541.setTelno(telno);
           d541.setExtno(extno);
           boolean test = d541.convert();
    	}
	if ( qd600.equals("1") ) {
           qdfir600 d600 = new qdfir600();
           d600.setDaystring(thisday);
           d600.setInstname(bankname);
           d600.setInstcode(bankcode);
           d600.setOutputpath(outputpath);
           d600.setSignatory1(signatory1);
           d600.setSignatory2(signatory2);
           d600.setContactName(contactname);
           d600.setTelno(telno);
           d600.setExtno(extno);
           boolean test = d600.convert();
    }
      if ( qd601.equals("1") ) {
           qdfir601 d601 = new qdfir601();
           d601.setDaystring(thisday);
           d601.setInstname(bankname);
           d601.setInstcode(bankcode);
           d601.setOutputpath(outputpath);
           d601.setSignatory1(signatory1);
           d601.setSignatory2(signatory2);
           d601.setContactName(contactname);
           d601.setTelno(telno);
           d601.setExtno(extno);
           boolean test = d601.convert();
    }
    if ( qd651.equals("1") ) {
           qdfir651 d651 = new qdfir651();
           d651.setDaystring(thisday);
           d651.setInstname(bankname);
           d651.setInstcode(bankcode);
           d651.setOutputpath(outputpath);
           d651.setSignatory1(signatory1);
           d651.setSignatory2(signatory2);
           d651.setContactName(contactname);
           d651.setTelno(telno);
           d651.setExtno(extno);
           boolean test = d651.convert();
    }
    if ( qd661.equals("1") ) {
           qdfir661 d661 = new qdfir661();
           d661.setDaystring(thisday);
           d661.setInstname(bankname);
           d661.setInstcode(bankcode);
           d661.setOutputpath(outputpath);
           d661.setSignatory1(signatory1);
           d661.setSignatory2(signatory2);
           d661.setContactName(contactname);
           d661.setTelno(telno);
           d661.setExtno(extno);
           boolean test = d661.convert();
    }

    	if ( qd800.equals("1") ) {
           qdfir800 d800 = new qdfir800();
           d800.setDaystring(thisday);
           d800.setInstname(bankname);
           d800.setInstcode(bankcode);
           d800.setOutputpath(outputpath);
           d800.setSignatory1(signatory1);
           d800.setSignatory2(signatory2);
           d800.setContactName(contactname);
           d800.setTelno(telno);
           d800.setExtno(extno);
           boolean test = d800.convert();
    }
	if ( qd671.equals("1") ) {
           qdfir671 d671 = new qdfir671();
           d671.setDaystring(thisday);
           d671.setInstname(bankname);
           d671.setInstcode(bankcode);
           d671.setOutputpath(outputpath);
           d671.setSignatory1(signatory1);
           d671.setSignatory2(signatory2);
           d671.setContactName(contactname);
           d671.setTelno(telno);
           d671.setExtno(extno);
           boolean test = d671.convert();
    }
	if ( qd681.equals("1") ) {
           qdfir681 d681 = new qdfir681();
           d681.setDaystring(thisday);
           d681.setInstname(bankname);
           d681.setInstcode(bankcode);
           d681.setOutputpath(outputpath);
           d681.setSignatory1(signatory1);
           d681.setSignatory2(signatory2);
           d681.setContactName(contactname);
           d681.setTelno(telno);
           d681.setExtno(extno);
           boolean test = d681.convert();
    }

    	if ( qd900.equals("1") ) {
           qdfir900 d900 = new qdfir900();
           d900.setDaystring(thisday);
           d900.setInstname(bankname);
           d900.setInstcode(bankcode);
           d900.setOutputpath(outputpath);
           d900.setSignatory1(signatory1);
           d900.setSignatory2(signatory2);
           d900.setContactName(contactname);
           d900.setTelno(telno);
           d900.setExtno(extno);
           boolean test = d900.convert();
    }
	if ( qd700.equals("1") ) {
           qdfir700 d700 = new qdfir700();
           d700.setDaystring(thisday);
           d700.setInstname(bankname);
           d700.setInstcode(bankcode);
           d700.setOutputpath(outputpath);
           d700.setSignatory1(signatory1);
           d700.setSignatory2(signatory2);
           d700.setContactName(contactname);
           d700.setTelno(telno);
           d700.setExtno(extno);
           boolean test = d700.convert();
    }
	if ( qd701.equals("1") ) {
           qdfir701 d701 = new qdfir701();
           d701.setDaystring(thisday);
           d701.setInstname(bankname);
           d701.setInstcode(bankcode);
           d701.setOutputpath(outputpath);
           d701.setSignatory1(signatory1);
           d701.setSignatory2(signatory2);
           d701.setContactName(contactname);
           d701.setTelno(telno);
           d701.setExtno(extno);
           boolean test = d701.convert();
    }

	if ( qd1000.equals("1") ) {
           qdfir1000 d1000 = new qdfir1000();
           d1000.setDaystring(thisday);
           d1000.setInstname(bankname);
           d1000.setInstcode(bankcode);
           d1000.setOutputpath(outputpath);
           d1000.setSignatory1(signatory1);
           d1000.setSignatory2(signatory2);
           d1000.setContactName(contactname);
           d1000.setTelno(telno);
           d1000.setExtno(extno);
           boolean test = d1000.convert();
    }

	if ( qd102.equals("1") ) {
           qdfir102 d102 = new qdfir102();
           d102.setDaystring(thisday);
           d102.setInstname(bankname);
           d102.setInstcode(bankcode);
           d102.setOutputpath(outputpath);
           d102.setSignatory1(signatory1);
           d102.setSignatory2(signatory2);
           d102.setContactName(contactname);
           d102.setTelno(telno);
           d102.setExtno(extno);
           boolean test = d102.convert();
    }
	if ( qd181.equals("1") ) {
           qdfir181 d181 = new qdfir181();
           d181.setDaystring(thisday);
           d181.setInstname(bankname);
           d181.setInstcode(bankcode);
           d181.setOutputpath(outputpath);
           d181.setSignatory1(signatory1);
           d181.setSignatory2(signatory2);
           d181.setContactName(contactname);
           d181.setTelno(telno);
           d181.setExtno(extno);
           boolean test = d181.convert();
    }
	if ( qd1300.equals("1") ) {
           qdfir1300 d1300 = new qdfir1300();
           d1300.setDaystring(thisday);
           d1300.setInstname(bankname);
           d1300.setInstcode(bankcode);
           d1300.setOutputpath(outputpath);
           d1300.setSignatory1(signatory1);
           d1300.setSignatory2(signatory2);
           d1300.setContactName(contactname);
           d1300.setTelno(telno);
           d1300.setExtno(extno);
           boolean test = d1300.convert();
    }
	if ( qd251.equals("1") ) {
           qdfir251 d251 = new qdfir251();
           d251.setDaystring(thisday);
           d251.setInstname(bankname);
           d251.setInstcode(bankcode);
           d251.setOutputpath(outputpath);
           d251.setSignatory1(signatory1);
           d251.setSignatory2(signatory2);
           d251.setContactName(contactname);
           d251.setTelno(telno);
           d251.setExtno(extno);
           boolean test = d251.convert();
    }
	if ( qd261.equals("1") ) {
           qdfir261 d261 = new qdfir261();
           d261.setDaystring(thisday);
           d261.setInstname(bankname);
           d261.setInstcode(bankcode);
           d261.setOutputpath(outputpath);
           d261.setSignatory1(signatory1);
           d261.setSignatory2(signatory2);
           d261.setContactName(contactname);
           d261.setTelno(telno);
           d261.setExtno(extno);
           boolean test = d261.convert();
    }

	if ( qd262.equals("1") ) {
           qdfir262 d262 = new qdfir262();
           d262.setDaystring(thisday);
           d262.setInstname(bankname);
           d262.setInstcode(bankcode);
           d262.setOutputpath(outputpath);
           d262.setSignatory1(signatory1);
           d262.setSignatory2(signatory2);
           d262.setContactName(contactname);
           d262.setTelno(telno);
           d262.setExtno(extno);
           boolean test = d262.convert();
    }
    	if ( qd901.equals("1") ) {
           qdfir901 d901 = new qdfir901();
           d901.setDaystring(thisday);
           d901.setInstname(bankname);
           d901.setInstcode(bankcode);
           d901.setOutputpath(outputpath);
           d901.setSignatory1(signatory1);
           d901.setSignatory2(signatory2);
           d901.setContactName(contactname);
           d901.setTelno(telno);
           d901.setExtno(extno);
           boolean test = d901.convert();
    }
	if ( qd1500.equals("1") ) {
           qdfir1500 d1500 = new qdfir1500();
           d1500.setDaystring(thisday);
           d1500.setInstname(bankname);
           d1500.setInstcode(bankcode);
           d1500.setOutputpath(outputpath);
           d1500.setSignatory1(signatory1);
           d1500.setSignatory2(signatory2);
           d1500.setContactName(contactname);
           d1500.setTelno(telno);
           d1500.setExtno(extno);
           boolean test = d1500.convert();
    }
    	if ( qd1650.equals("1") ) {
           qdfir1650 d1650 = new qdfir1650();
           d1650.setDaystring(thisday);
           d1650.setInstname(bankname);
           d1650.setInstcode(bankcode);
           d1650.setOutputpath(outputpath);
           d1650.setSignatory1(signatory1);
           d1650.setSignatory2(signatory2);
           d1650.setContactName(contactname);
           d1650.setTelno(telno);
           d1650.setExtno(extno);
           boolean test = d1650.convert();
    }
	if ( qd920.equals("1") ) {
           qdfir920 d920 = new qdfir920();
           d920.setDaystring(thisday);
           d920.setInstname(bankname);
           d920.setInstcode(bankcode);
           d920.setOutputpath(outputpath);
           d920.setSignatory1(signatory1);
           d920.setSignatory2(signatory2);
           d920.setContactName(contactname);
           d920.setTelno(telno);
           d920.setExtno(extno);
           boolean test = d920.convert();
    }
	if ( qd921.equals("1") ) {
           qdfir921 d921 = new qdfir921();
           d921.setDaystring(thisday);
           d921.setInstname(bankname);
           d921.setInstcode(bankcode);
           d921.setOutputpath(outputpath);
           d921.setSignatory1(signatory1);
           d921.setSignatory2(signatory2);
           d921.setContactName(contactname);
           d921.setTelno(telno);
           d921.setExtno(extno);
           boolean test = d921.convert();
    }
	if ( qd930.equals("1") ) {
           qdfir930 d930 = new qdfir930();
           d930.setDaystring(thisday);
           d930.setInstname(bankname);
           d930.setInstcode(bankcode);
           d930.setOutputpath(outputpath);
           d930.setSignatory1(signatory1);
           d930.setSignatory2(signatory2);
           d930.setContactName(contactname);
           d930.setTelno(telno);
           d930.setExtno(extno);
           boolean test = d930.convert();
    }
	if ( qd961.equals("1") ) {
           qdfir961 d961 = new qdfir961();
           d961.setDaystring(thisday);
           d961.setInstname(bankname);
           d961.setInstcode(bankcode);
           d961.setOutputpath(outputpath);
           d961.setSignatory1(signatory1);
           d961.setSignatory2(signatory2);
           d961.setContactName(contactname);
           d961.setTelno(telno);
           d961.setExtno(extno);
           boolean test = d961.convert();
    }


if ( tester ) {
  %>

  <SCRIPT Language = "JavaScript">
    alert("Files have been generated into " + "<%=outputpath%>");
    window.location = 'dfi_quarterly_select.jsp';
    </SCRIPT>
    <%
    }
 %>
  </body>
</html>
