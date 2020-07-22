C_TEXT:C284($path)
C_OBJECT:C1216($options)

If (Form:C1466.traceCode)
	TRACE:C157
End if 

$Path:=Get 4D folder:C485(Database folder:K5:14)+"Brochure.pdf"


vError:=False:C215
ON ERR CALL:C155("onErrMeth")
WP EXPORT DOCUMENT:C1337(WPsample;$path;wk pdf:K81:315;Form:C1466.options)
ON ERR CALL:C155("")
If (vError=True:C214)
	ALERT:C41("The document 'Brochure.pdf' is locked by another application.")
Else 
	SHOW ON DISK:C922($Path)
	OPEN URL:C673($Path)
End if 
