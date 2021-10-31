; This will dump the data for an asar patch that will be applied to the BS Legend of Zelda (Map 1 Week 2) ROM. Said patch will set up the massive pointer tables in places like bank C3 when applied to the ROM.
; The reason I'm generating a patch and not the tables directly is because of asar limitations. I don't think it's possible for asar to resolve commands through a define while in a print statement.
; Also, it may take a second before asar starts displaying anything on the command line. In addition, you'll need to replace the ' with " in the output patch, and the % with " in the second output patch, otherwise asar won't assemble the patch.
; Lastly, the last data block will likely be larger than it should be and must be cleaned up.

!PtrStartOffset = $C30000
!PtrEndOffset =	$C40000

hirom

macro HandleVariableDefine(ID)
	!Output<ID> #= !Input1
endmacro

macro ClearDefines()
	!Output0 = ""
	!Output1 = ""
	!Output2 = ""
	!Output3 = ""
	!Output4 = ""
	!Output5 = ""
	!Output6 = ""
	!Output7 = ""
	!Output8 = ""
	!Output9 = ""
	!Output10 = ""
	!Output11 = ""
	!Output12 = ""
	!Output13 = ""
	!Output14 = ""
	!Output15 = ""
endmacro

macro HandleLineOfData(ID, ByteSize, Size)
	if <ID> == 0
		!PrintData += "	<ByteSize> $',hex(!Output<ID>, <Size>)"
	else
		!PrintData += ",',$',hex(!Output<ID>, <Size>)"
	endif
endmacro

macro PrintVariableData(Data)
	print "print '	<Data>"
endmacro

!SkipBytes = 0
!LoopCounter = 0
print "hirom"

while !PtrStartOffset+!LoopCounter < !PtrEndOffset
	%ClearDefines()
	!ByteCount = 0
	!RowByteCount = 0
	!PrintData = ""
	!CurrentRow = 0
	print "print 'DATA_',hex(!PtrStartOffset+!LoopCounter),':'"
	while !ByteCount < $03C0
		if !CurrentRow < 2
			!Input1 = read3(!PtrStartOffset+!LoopCounter+!ByteCount)
			%HandleVariableDefine(!RowByteCount)
			%HandleLineOfData(!RowByteCount, dl, 6)
			!ByteCount #= !ByteCount+3
			!RowByteCount #= !RowByteCount+3
			if !RowByteCount == 24
				%PrintVariableData("!PrintData")
				%ClearDefines()
				!PrintData = ""
				!RowByteCount #= $00
				!CurrentRow #= !CurrentRow+1
			endif
		else
			!Input1 = read1(!PtrStartOffset+!LoopCounter+!ByteCount)
			%HandleVariableDefine(!RowByteCount)
			%HandleLineOfData(!RowByteCount, db, 2)
			!ByteCount #= !ByteCount+1
			!RowByteCount #= !RowByteCount+1
			if !RowByteCount == 9
				%PrintVariableData("!PrintData")
				%ClearDefines()
				!PrintData = ""
				!RowByteCount #= $00
				!CurrentRow #= 0
			endif
		endif
	endif
	while !ByteCount < $0400
		!Input1 = read1(!PtrStartOffset+!LoopCounter+!ByteCount)
		%HandleVariableDefine(!RowByteCount)
		%HandleLineOfData(!RowByteCount, db, 2)
		!ByteCount #= !ByteCount+1
		!RowByteCount #= !RowByteCount+1
		if !RowByteCount == 16
			%PrintVariableData("!PrintData")
			%ClearDefines()
			!PrintData = ""
			!RowByteCount #= $00
		endif
	endif
		if !RowByteCount != 0
			%PrintVariableData("!PrintData")
		endif
		print "print ''"
		!LoopCounter #= !LoopCounter+$0400
endif
