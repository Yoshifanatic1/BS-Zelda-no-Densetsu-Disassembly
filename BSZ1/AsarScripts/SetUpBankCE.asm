; This will dump the data for an asar patch that will be applied to the BS Legend of Zelda (Map 1 Week 2) ROM. Said patch will set up the massive data tables in places like bank CE when applied to the ROM.
; The reason I'm generating a patch and not the tables directly is because of asar limitations. I don't think it's possible for asar to resolve commands through a define while in a print statement.
; Also, it may take a second before asar starts displaying anything on the command line. In addition, you'll need to replace the ' with " in the output patch, and the % with " in the second output patch, otherwise asar won't assemble the patch.
; Lastly, the last data block will likely be larger than it should be and must be cleaned up.

!PtrStartOffset = $CE0000
!PtrEndOffset =	$CEC544

hirom

!LoopCounter = 0
print "hirom"

while !PtrStartOffset+!LoopCounter < !PtrEndOffset
	print "print ''"
	print "print 'DATA_',hex(!PtrStartOffset+!LoopCounter),':'"
	!Input1 #= read2(!PtrStartOffset+!LoopCounter+$00)
	!Input2 #= read2(!PtrStartOffset+!LoopCounter+$02)
	!Input3 #= read2(!PtrStartOffset+!LoopCounter+$04)
	!Input4 #= read2(!PtrStartOffset+!LoopCounter+$06)
	!Input5 #= read1(!PtrStartOffset+!LoopCounter+$08)
	print "print '	dw $",hex(!Input1, 4),",$",hex(!Input2, 4),",$",hex(!Input3, 4),",$",hex(!Input4, 4)," : db $",hex(!Input5, 2),"'"
	!Input1 #= read1(!PtrStartOffset+!LoopCounter+$09)
	!Input2 #= read3(!PtrStartOffset+!LoopCounter+$0A)
	!Input3 #= read1(!PtrStartOffset+!LoopCounter+$0D)
	if !Input2 == $FFFFFF
		print "print '	db $",hex(!Input1, 2)," : dl $",hex(!Input2, 6)," : db $",hex(!Input3, 2),"'"
	elseif !Input2 == $000000
		print "print '	db $",hex(!Input1, 2)," : dl $",hex(!Input2, 6)," : db $",hex(!Input3, 2),"'"
	else
		print "print '	db $",hex(!Input1, 2)," : dl DATA_",hex(!Input2, 6)," : db $",hex(!Input3, 2),"'"
	endif
	!Input1 #= read1(!PtrStartOffset+!LoopCounter+$0E)
	!Input2 #= read3(!PtrStartOffset+!LoopCounter+$0F)
	!Input3 #= read1(!PtrStartOffset+!LoopCounter+$12)
	if !Input2 == $FFFFFF
		print "print '	db $",hex(!Input1, 2)," : dl $",hex(!Input2, 6)," : db $",hex(!Input3, 2),"'"
	elseif !Input2 == $000000
		print "print '	db $",hex(!Input1, 2)," : dl $",hex(!Input2, 6)," : db $",hex(!Input3, 2),"'"
	else
		print "print '	db $",hex(!Input1, 2)," : dl DATA_",hex(!Input2, 6)," : db $",hex(!Input3, 2),"'"
	endif
	!Input1 #= read1(!PtrStartOffset+!LoopCounter+$13)
	!Input2 #= read3(!PtrStartOffset+!LoopCounter+$14)
	!Input3 #= read1(!PtrStartOffset+!LoopCounter+$17)
	if !Input2 == $FFFFFF
		print "print '	db $",hex(!Input1, 2)," : dl $",hex(!Input2, 6)," : db $",hex(!Input3, 2),"'"
	elseif !Input2 == $000000
		print "print '	db $",hex(!Input1, 2)," : dl $",hex(!Input2, 6)," : db $",hex(!Input3, 2),"'"
	else
		print "print '	db $",hex(!Input1, 2)," : dl DATA_",hex(!Input2, 6)," : db $",hex(!Input3, 2),"'"
	endif
	!Input1 #= read1(!PtrStartOffset+!LoopCounter+$18)
	!Input2 #= read3(!PtrStartOffset+!LoopCounter+$19)
	!Input3 #= read1(!PtrStartOffset+!LoopCounter+$1C)
	if !Input2 == $FFFFFF
		print "print '	db $",hex(!Input1, 2)," : dl $",hex(!Input2, 6)," : db $",hex(!Input3, 2),"'"
	elseif !Input2 == $000000
		print "print '	db $",hex(!Input1, 2)," : dl $",hex(!Input2, 6)," : db $",hex(!Input3, 2),"'"
	else
		print "print '	db $",hex(!Input1, 2)," : dl DATA_",hex(!Input2, 6)," : db $",hex(!Input3, 2),"'"
	endif
	!Input1 #= read1(!PtrStartOffset+!LoopCounter+$1D)
	!Input2 #= read3(!PtrStartOffset+!LoopCounter+$1E)
	!Input3 #= read1(!PtrStartOffset+!LoopCounter+$21)
	if !Input2 == $FFFFFF
		print "print '	db $",hex(!Input1, 2)," : dl $",hex(!Input2, 6)," : db $",hex(!Input3, 2),"'"
	elseif !Input2 == $000000
		print "print '	db $",hex(!Input1, 2)," : dl $",hex(!Input2, 6)," : db $",hex(!Input3, 2),"'"
	else
		print "print '	db $",hex(!Input1, 2)," : dl DATA_",hex(!Input2, 6)," : db $",hex(!Input3, 2),"'"
	endif
	!Input1 #= read1(!PtrStartOffset+!LoopCounter+$22)
	!Input2 #= read3(!PtrStartOffset+!LoopCounter+$23)
	!Input3 #= read1(!PtrStartOffset+!LoopCounter+$26)
	if !Input2 == $FFFFFF
		print "print '	db $",hex(!Input1, 2)," : dl $",hex(!Input2, 6)," : db $",hex(!Input3, 2),"'"
	elseif !Input2 == $000000
		print "print '	db $",hex(!Input1, 2)," : dl $",hex(!Input2, 6)," : db $",hex(!Input3, 2),"'"
	else
		print "print '	db $",hex(!Input1, 2)," : dl DATA_",hex(!Input2, 6)," : db $",hex(!Input3, 2),"'"
	endif
	!Input1 #= read1(!PtrStartOffset+!LoopCounter+$27)
	!Input2 #= read3(!PtrStartOffset+!LoopCounter+$28)
	!Input3 #= read1(!PtrStartOffset+!LoopCounter+$2B)
	if !Input2 == $FFFFFF
		print "print '	db $",hex(!Input1, 2)," : dl $",hex(!Input2, 6)," : db $",hex(!Input3, 2),"'"
	elseif !Input2 == $000000
		print "print '	db $",hex(!Input1, 2)," : dl $",hex(!Input2, 6)," : db $",hex(!Input3, 2),"'"
	else
		print "print '	db $",hex(!Input1, 2)," : dl DATA_",hex(!Input2, 6)," : db $",hex(!Input3, 2),"'"
	endif
	!Input1 #= read1(!PtrStartOffset+!LoopCounter+$2C)
	!Input2 #= read3(!PtrStartOffset+!LoopCounter+$2D)
	!Input3 #= read1(!PtrStartOffset+!LoopCounter+$30)
	if !Input2 == $FFFFFF
		print "print '	db $",hex(!Input1, 2)," : dl $",hex(!Input2, 6)," : db $",hex(!Input3, 2),"'"
	elseif !Input2 == $000000
		print "print '	db $",hex(!Input1, 2)," : dl $",hex(!Input2, 6)," : db $",hex(!Input3, 2),"'"
	else
		print "print '	db $",hex(!Input1, 2)," : dl DATA_",hex(!Input2, 6)," : db $",hex(!Input3, 2),"'"
	endif
	!LoopCounter #= !LoopCounter+$31
endif
