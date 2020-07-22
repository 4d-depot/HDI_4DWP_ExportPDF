C_TEXT:C284($path)
C_LONGINT:C283($page)

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		ARRAY TEXT:C222(Tabs;0)
		ALL RECORDS:C47([DOC:1])
		ORDER BY:C49([DOC:1];[DOC:1]Order:4;>)
		SELECTION TO ARRAY:C260([DOC:1]Title:3;tabs)
		
		GOTO SELECTED RECORD:C245([DOC:1];1)
		WParea:=[DOC:1]SampleDoc:2
		
		$path:=Get 4D folder:C485(Current resources folder:K5:16)+"brochure.4wp"
		WPsample:=WP Import document:C1318($path)
		
		Form:C1466.traceCode:=True:C214
		Form:C1466.options:=New object:C1471
		
		Form:C1466.options[wk visible background:K81:289]:=True:C214
		Form:C1466.options[wk visible footers:K81:288]:=True:C214
		Form:C1466.options[wk visible headers:K81:287]:=True:C214
		Form:C1466.options[wk optimized for:K81:317]:=wk print:K81:318
		
		
		Form:C1466.vb:=1
		Form:C1466.vh:=1
		Form:C1466.vf:=1
		
		Form:C1466.optimisedForPrint:=1
		Form:C1466.optimisedForScreen:=0
		
		
	: (Form event code:C388=On Page Change:K2:54)
		
		$page:=FORM Get current page:C276
		GOTO SELECTED RECORD:C245([DOC:1];$page)
		WParea:=[DOC:1]SampleDoc:2
		
End case 