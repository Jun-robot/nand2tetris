// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.
(LOOP)
@i
M=0

(FORLOOP)
@i
D=M
@8192
D=A-D
@LOOP
D;JEQ

@KBD
D=M
@WHITE
D;JEQ

@i
D=M
@SCREEN
A=D+A
M=-1

@i
M=M+1
@FORLOOP
0;JMP

(WHITE)

@i
D=M
@SCREEN
A=D+A
M=0

@i
M=M+1
@FORLOOP
0;JMP
