//%attributes = {}
var $options : Object
var $Path : Text

$Path:=Get 4D folder:C485(Database folder:K5:14)+"Test.pdf"

$options:=New object:C1471
$options[wk visible background:K81:289]:=True:C214
$options[wk visible headers:K81:287]:=True:C214
$options[wk visible footers:K81:288]:=True:C214
$options[wk optimized for:K81:317]:=wk screen:K81:319

WP EXPORT DOCUMENT:C1337(WPsample;$path;wk pdf:K81:315;$options)