//%attributes = {"invisible":true}

C_PICTURE:C286($0)
C_LONGINT:C283($1)

C_TEXT:C284($timestamp)
C_LONGINT:C283($p;$rotate)
C_LONGINT:C283($option)
C_TEXT:C284($svg;$rect;$svgText;$color)
C_PICTURE:C286($picture)

$option:=$1

$timestamp:=Timestamp:C1445
$p:=Position:C15("T";$timestamp)
$timestamp:=Substring:C12($timestamp;1;$p-1)+Char:C90(Carriage return:K15:38)+Substring:C12($timestamp;$p)

$color:="RGB($r,$g,$b)"
$color:=Replace string:C233($color;"$r";String:C10((Random:C100%100)+100))
$color:=Replace string:C233($color;"$g";String:C10((Random:C100%100)+100))
$color:=Replace string:C233($color;"$b";String:C10((Random:C100%100)+100))


If ($option=0)
	
	$svg:=SVG_New (180;100)
	$rect:=SVG_New_rect ($svg;0;0;180;100)
	SVG_SET_STROKE_WIDTH ($rect;4)
	SVG_SET_STROKE_BRUSH ($rect;"darkBlue")
	SVG_SET_FILL_BRUSH ($rect;"lightBlue")
	
	$svgText:=SVG_New_textArea ($svg;$timestamp;0;20;180;80;"times";24;Bold:K14:2;3)
	SVG_SET_FILL_BRUSH ($svgText;"darkBlue")
	
Else 
	
	$svg:=SVG_New (400;400)
	$rect:=SVG_New_rect ($svg;80;120;240;160)
	SVG_SET_STROKE_WIDTH ($rect;4)
	SVG_SET_STROKE_BRUSH ($rect;$color)
	
	$svgText:=SVG_New_textArea ($svg;$timestamp;80;160;240;80;"times";28;Bold:K14:2;3)
	
	
	SVG_SET_FILL_BRUSH ($svgText;$color)  //"grey")
	  //SVG_SET_OPACITY ($svgText;50)
	$rotate:=45-(Random:C100%90)
	SVG_SET_TRANSFORM_ROTATE ($svg;$rotate;200;200)
	
End if 


$picture:=SVG_Export_to_picture ($svg)

CONVERT PICTURE:C1002($picture;".png")

$0:=$picture

