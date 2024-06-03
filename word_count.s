	AREA word_count, CODE
	EXPORT wordCounter
	ALIGN

wordCounter	;initialisation
    MOV     r1, r0 ;copy the memory address of the input string to r1
    MOV     r0, #0 ;initialise word count
    MOV     r2, #0 ;initialise word flag

loop		;loop for counting the words
    LDRB    r3, [r1], #1 ;load the byte of a character from the string

    CMP     r3, #32 ;compare the byte with ascii value of space
    BEQ     spaceEnc

    CMP     r3, #0 ;check if the string end is reached. executed only if the condition above is not met
    BEQ     strEnd

    CMP     r2, #0 ;check if a word started or not. executed only if both of the conditions above are not met
    BEQ     wordStart

    B       loop

wordStart	;a word started
    MOV     r2, #1 ;enable word flag
    ADD     r0, r0, #1 ;count the current word in
    B       loop

spaceEnc	;space encountered
    MOV     r2, #0 ;disable word flag
    B       loop

strEnd		;end of the string is reached
    BX      lr
	END

