<%@ page language="java" import="cbnbas.mtr.*, java.sql.*, java.io.*" %>
<html>
  <head>
    <title>Generating XML Files, Please Wait ...</title>
  <!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
</head>
<body>
<%
  Connection con = null;
  Statement st = null;
  ResultSet rs = null;
  String odbcName = "MTR";
  String odbcprofile = "jdbc:odbc:"+odbcName;
  String bankname = "";
  String bankcode = "";
  String thisday = "";
  String dealer = "";
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
       thisday = rs.getString(3);
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
	String mt202 = request.getParameter("mt202");
        String mt204 = request.getParameter("mt204");
	String mt205 = request.getParameter("mt205");
	String mt206 = request.getParameter("mt206");
	String mt207 = request.getParameter("mt207");
	String mt208 = request.getParameter("mt208");
	String mt209 = request.getParameter("mt209");
	String mt210 = request.getParameter("mt210");
	String mt211 = request.getParameter("mt211");
	String mt212 = request.getParameter("mt212");
	String mt213 = request.getParameter("mt213");
	String mt214 = request.getParameter("mt214");
	String mt215 = request.getParameter("mt215");
	String mt216 = request.getParameter("mt216");
	String mt217 = request.getParameter("mt217");
	String mt301 = request.getParameter("mt301");
	String mt302 = request.getParameter("mt302");
	String mt303 = request.getParameter("mt303");
	String mt305 = request.getParameter("mt305");
	String mt306 = request.getParameter("mt306");
	String mt307 = request.getParameter("mt307");
	String mt308 = request.getParameter("mt308");
	String mt316 = request.getParameter("mt316");
	String mt319 = request.getParameter("mt319");

	String outputpath = "c:/cbnxml/mtr/";

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
	if ( mt202.equals("1") ) {
           mtr202 d202 = new mtr202();
		new mtr202Reloaded();
           d202.setDaystring(thisday);
           d202.setInstname(bankname);
           d202.setDealername(dealer);
           d202.setInstcode(bankcode);
           d202.setOutputpath(outputpath);
           d202.setSignatory1(signatory1);
           d202.setSignatory2(signatory2);
           d202.setContactName(contactname);
           d202.setTelno(telno);
           d202.setExtno(extno);
           boolean test = d202.convert();
	}
	if ( mt204.equals("1") ) {
           mtr204 d204 = new mtr204();
           d204.setDaystring(thisday);
           d204.setInstname(bankname);
           d204.setDealername(dealer);
           d204.setInstcode(bankcode);
           d204.setOutputpath(outputpath);
           d204.setSignatory1(signatory1);
           d204.setSignatory2(signatory2);
           d204.setContactName(contactname);
           d204.setTelno(telno);
           d204.setExtno(extno);
           boolean test = d204.convert();
	}
	if ( mt205.equals("1") ) {
           mtr205 d205 = new mtr205();
           d205.setDaystring(thisday);
           d205.setInstname(bankname);
           d205.setDealername(dealer);
           d205.setInstcode(bankcode);
           d205.setOutputpath(outputpath);
           d205.setSignatory1(signatory1);
           d205.setSignatory2(signatory2);
           d205.setContactName(contactname);
           d205.setTelno(telno);
           d205.setExtno(extno);
           boolean test = d205.convert();
	}
	if ( mt206.equals("1") ) {
           mtr206 d206 = new mtr206();
           d206.setDaystring(thisday);
           d206.setInstname(bankname);
           d206.setDealername(dealer);
           d206.setInstcode(bankcode);
           d206.setOutputpath(outputpath);
           d206.setSignatory1(signatory1);
           d206.setSignatory2(signatory2);
           d206.setContactName(contactname);
           d206.setTelno(telno);
           d206.setExtno(extno);
           boolean test = d206.convert();
	}
	if ( mt207.equals("1") ) {
           mtr207 d207 = new mtr207();
           d207.setDaystring(thisday);
           d207.setInstname(bankname);
           d207.setDealername(dealer);
           d207.setInstcode(bankcode);
           d207.setOutputpath(outputpath);
           d207.setSignatory1(signatory1);
           d207.setSignatory2(signatory2);
           d207.setContactName(contactname);
           d207.setTelno(telno);
           d207.setExtno(extno);
           boolean test = d207.convert();
	}
	if ( mt208.equals("1") ) {
           mtr208 d208 = new mtr208();
           d208.setDaystring(thisday);
           d208.setInstname(bankname);
           d208.setDealername(dealer);
           d208.setInstcode(bankcode);
           d208.setOutputpath(outputpath);
           d208.setSignatory1(signatory1);
           d208.setSignatory2(signatory2);
           d208.setContactName(contactname);
           d208.setTelno(telno);
           d208.setExtno(extno);
           boolean test = d208.convert();
	}
	if ( mt209.equals("1") ) {
           mtr209 d209 = new mtr209();
           d209.setDaystring(thisday);
           d209.setInstname(bankname);
           d209.setDealername(dealer);
           d209.setInstcode(bankcode);
           d209.setOutputpath(outputpath);
           d209.setSignatory1(signatory1);
           d209.setSignatory2(signatory2);
           d209.setContactName(contactname);
           d209.setTelno(telno);
           d209.setExtno(extno);
           boolean test = d209.convert();
    }
	if ( mt210.equals("1") ) {
           mtr210 d210 = new mtr210();
           d210.setDaystring(thisday);
           d210.setInstname(bankname);
           d210.setDealername(dealer);
           d210.setInstcode(bankcode);
           d210.setOutputpath(outputpath);
           d210.setSignatory1(signatory1);
           d210.setSignatory2(signatory2);
           d210.setContactName(contactname);
           d210.setTelno(telno);
           d210.setExtno(extno);
           boolean test = d210.convert();
    }
	if ( mt211.equals("1") ) {
           mtr211 d211 = new mtr211();
           d211.setDaystring(thisday);
           d211.setInstname(bankname);
           d211.setDealername(dealer);
           d211.setInstcode(bankcode);
           d211.setOutputpath(outputpath);
           d211.setSignatory1(signatory1);
           d211.setSignatory2(signatory2);
           d211.setContactName(contactname);
           d211.setTelno(telno);
           d211.setExtno(extno);
           boolean test = d211.convert();
    }
	if ( mt212.equals("1") ) {
           mtr212 d212 = new mtr212();
           d212.setDaystring(thisday);
           d212.setInstname(bankname);
           d212.setDealername(dealer);
           d212.setInstcode(bankcode);
           d212.setOutputpath(outputpath);
           d212.setSignatory1(signatory1);
           d212.setSignatory2(signatory2);
           d212.setContactName(contactname);
           d212.setTelno(telno);
           d212.setExtno(extno);
           boolean test = d212.convert();
    }
	if ( mt213.equals("1") ) {
           mtr213 d213 = new mtr213();
           d213.setDaystring(thisday);
           d213.setInstname(bankname);
           d213.setDealername(dealer);
           d213.setInstcode(bankcode);
           d213.setOutputpath(outputpath);
           d213.setSignatory1(signatory1);
           d213.setSignatory2(signatory2);
           d213.setContactName(contactname);
           d213.setTelno(telno);
           d213.setExtno(extno);
           boolean test = d213.convert();
    }
	if ( mt214.equals("1") ) {
           mtr214 d214 = new mtr214();
           d214.setDaystring(thisday);
           d214.setInstname(bankname);
           d214.setDealername(dealer);
           d214.setInstcode(bankcode);
           d214.setOutputpath(outputpath);
           d214.setSignatory1(signatory1);
           d214.setSignatory2(signatory2);
           d214.setContactName(contactname);
           d214.setTelno(telno);
           d214.setExtno(extno);
           boolean test = d214.convert();
    }
	if ( mt215.equals("1") ) {
           mtr215 d215 = new mtr215();
           d215.setDaystring(thisday);
           d215.setInstname(bankname);
           d215.setDealername(dealer);
           d215.setInstcode(bankcode);
           d215.setOutputpath(outputpath);
           d215.setSignatory1(signatory1);
           d215.setSignatory2(signatory2);
           d215.setContactName(contactname);
           d215.setTelno(telno);
           d215.setExtno(extno);
           boolean test = d215.convert();
    }
	if ( mt216.equals("1") ) {
           mtr216 d216 = new mtr216();
           d216.setDaystring(thisday);
           d216.setInstname(bankname);
           d216.setDealername(dealer);
           d216.setInstcode(bankcode);
           d216.setOutputpath(outputpath);
           d216.setSignatory1(signatory1);
           d216.setSignatory2(signatory2);
           d216.setContactName(contactname);
           d216.setTelno(telno);
           d216.setExtno(extno);
           boolean test = d216.convert();
    }
	if ( mt217.equals("1") ) {
           mtr217 d217 = new mtr217();
           d217.setDaystring(thisday);
           d217.setInstname(bankname);
           d217.setDealername(dealer);
           d217.setInstcode(bankcode);
           d217.setOutputpath(outputpath);
           d217.setSignatory1(signatory1);
           d217.setSignatory2(signatory2);
           d217.setContactName(contactname);
           d217.setTelno(telno);
           d217.setExtno(extno);
           boolean test = d217.convert();
    }

	if ( mt301.equals("1") ) {
           mtr301 m301 = new mtr301();
           m301.setDaystring(thisday);
           m301.setInstname(bankname);
           m301.setInstcode(bankcode);
           m301.setOutputpath(outputpath);
           m301.setOutputpath(outputpath);
           m301.setSignatory1(signatory1);
           m301.setSignatory2(signatory2);
           m301.setContactName(contactname);
           m301.setTelno(telno);
           m301.setExtno(extno);
           boolean test = m301.convert();
	}
	if ( mt302.equals("1") ) {
           mtr302 m302 = new mtr302();
           m302.setDaystring(thisday);
           m302.setInstname(bankname);
           m302.setInstcode(bankcode);
	   m302.setOutputpath(outputpath);
           m302.setSignatory1(signatory1);
           m302.setSignatory2(signatory2);
           m302.setContactName(contactname);
           m302.setTelno(telno);
           m302.setExtno(extno);
           boolean test = m302.convert();
	}
	if ( mt303.equals("1") ) {
           mtr303 m303 = new mtr303();
           m303.setDaystring(thisday);
           m303.setInstname(bankname);
           m303.setInstcode(bankcode);
           m303.setOutputpath(outputpath);
           m303.setSignatory1(signatory1);
           m303.setSignatory2(signatory2);
           m303.setContactName(contactname);
           m303.setTelno(telno);
           m303.setExtno(extno);
           boolean test = m303.convert();
	}
	if ( mt305.equals("1") ) {
           mtr305 m305 = new mtr305();
           m305.setDaystring(thisday);
           m305.setInstname(bankname);
           m305.setInstcode(bankcode);
           m305.setOutputpath(outputpath);
           m305.setSignatory1(signatory1);
           m305.setSignatory2(signatory2);
           m305.setContactName(contactname);
           m305.setTelno(telno);
           m305.setExtno(extno);
           boolean test = m305.convert();
	}
	if ( mt306.equals("1") ) {
           mtr306 m306 = new mtr306();
           m306.setDaystring(thisday);
           m306.setInstname(bankname);
           m306.setInstcode(bankcode);
           m306.setOutputpath(outputpath);
           m306.setSignatory1(signatory1);
           m306.setSignatory2(signatory2);
           m306.setContactName(contactname);
           m306.setTelno(telno);
           m306.setExtno(extno);
           boolean test = m306.convert();
	}
	if ( mt307.equals("1") ) {
           mtr307 m307 = new mtr307();
           m307.setDaystring(thisday);
           m307.setInstname(bankname);
           m307.setInstcode(bankcode);
           m307.setOutputpath(outputpath);
           m307.setSignatory1(signatory1);
           m307.setSignatory2(signatory2);
           m307.setContactName(contactname);
           m307.setTelno(telno);
           m307.setExtno(extno);
           boolean test = m307.convert();
	}
	if ( mt308.equals("1") ) {
           mtr308 m308 = new mtr308();
           m308.setDaystring(thisday);
           m308.setInstname(bankname);
           m308.setInstcode(bankcode);
           m308.setOutputpath(outputpath);
           m308.setSignatory1(signatory1);
           m308.setSignatory2(signatory2);
           m308.setContactName(contactname);
           m308.setTelno(telno);
           m308.setExtno(extno);
           boolean test = m308.convert();
	}
	if ( mt316.equals("1") ) {
           mtr316 m316 = new mtr316();
           m316.setDaystring(thisday);
           m316.setInstname(bankname);
           m316.setInstcode(bankcode);
           m316.setOutputpath(outputpath);
           m316.setSignatory1(signatory1);
           m316.setSignatory2(signatory2);
           m316.setContactName(contactname);
           m316.setTelno(telno);
           m316.setExtno(extno);
           boolean test = m316.convert();
    }
	if ( mt319.equals("1") ) {
           mtr319 m319 = new mtr319();
           m319.setDaystring(thisday);
           m319.setInstname(bankname);
           m319.setInstcode(bankcode);
           m319.setOutputpath(outputpath);
           m319.setSignatory1(signatory1);
           m319.setSignatory2(signatory2);
           m319.setContactName(contactname);
           m319.setTelno(telno);
           m319.setExtno(extno);
           boolean test = m319.convert();
    }

if ( tester ) {
  %>

  <SCRIPT Language = "JavaScript">
    alert("Files have been generated into " + "<%=outputpath%>");
    window.location = 'mtr_select.jsp';
    </SCRIPT>
    <%
    }
 %>
  </body>
</html>
