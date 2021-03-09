PUBLIC	message_text
PUBLIC	message_title
PUBLIC	buttons

_DATA	SEGMENT

message_text DQ	$SG6066

$SG6066	DB	'Is it 42?', 00H

	ORG $+6

message_title DQ $SG6068

$SG6068	DB	'Hello World.', 00H

	ORG $+3

;
;   DD: Allocate and initialize 4 bytes, here with
;   the value 0x24 (= MB_YESNO (0x04) + MB_ICONQUESTION (0x20)
;   for MessageBox)
;
buttons	DD	24h

_DATA	ENDS

END
