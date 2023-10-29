// JavaScript Document



<!--

function fishy_window_open( window_url, query_string, window_name, args  )

	{

		obj_window = window.open(  window_url + query_string, window_name, args );

		obj_window.focus();

	}

function changeclass( obj_element, newstyle )

{
	if(newstyle=='catover')
playSound();

	else
stopSound();

	//my_element = eval( 'document.all.' + newstyle );

	obj_element.className = newstyle;

}
function playSound()
{
	snd.src="Beep1.wav";
}
function stopSound()
{
	snd.src="";
}

function atollopen(theURL,winName,features) { //v2.0

  window.open(theURL,winName,features);

}

function close_window() {

    window.close();

}

function MM_preloadImages() { //v3.0

  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();

    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)

    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}

}



function MM_swapImgRestore() { //v3.0

  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;

}



function MM_findObj(n, d) { //v4.01

  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {

    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}

  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];

  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);

  if(!x && d.getElementById) x=d.getElementById(n); return x;

}



function MM_swapImage() { //v3.0

  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)

   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}

}



function openChromeslessWindow(openUrl, winName, wWidth, wHeight, wPosx, wPosy, wTIT,

												windowBORDERCOLOR, windowBORDERCOLORsel, windowTITBGCOLOR, windowTITBGCOLORsel,

													bCenter, sFontFamily, sFontSize, sFontColor){

	

	openchromeless(openUrl,winName, wWidth, wHeight, wPosx, wPosy, wTIT, wTIT ,

							windowBORDERCOLOR, windowBORDERCOLORsel, windowTITBGCOLOR, windowTITBGCOLORsel,

								bCenter, sFontFamily, sFontSize, sFontColor);

}

function clickIE() {

if (document.all) {

return false;

}

} 

function clickNS(e) {

if (document.layers||(document.getElementById&&!document.all)) { 

if (e.which==2||e.which==3) {

return false;

}

}

} 

if (document.layers) {

//document.captureEvents(Event.MOUSEDOWN);

//document.onmousedown=clickNS;

} 

else{

//document.onmouseup=clickNS;

//document.oncontextmenu=clickIE;

} 

//document.oncontextmenu=new Function("return false") 



function fishyPopsUp()
{
	wcit2004_irc_window = window.open( 'wcit2004_irc.htm','wcit2004_irc', 'height=600,width=800,status=yes,toolbar=no,menubar=no,location=no,resizable=yes,scrollbars=yes,top=0,left=0');
	wcit2004_irc_window.focus();
}


//--->

