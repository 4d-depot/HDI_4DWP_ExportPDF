C_BLOB:C604($Blob)
C_LONGINT:C283($size1)
C_TEXT:C284($message)

If (Form:C1466.traceCode)
	TRACE:C157
End if 

WP EXPORT VARIABLE:C1319(WPsample;$Blob;wk pdf:K81:315;Form:C1466.options)

$size1:=Round:C94(BLOB size:C605($Blob)/1024;0)

$message:=""
$message:=$message+"The BLOB is now exported."+(Char:C90(Carriage return:K15:38)*2)
$message:=$message+"Size of the exported BLOB: "+String:C10($size1;"###,###,##0")+" KB"+(Char:C90(Carriage return:K15:38)*2)

ALERT:C41($message)
