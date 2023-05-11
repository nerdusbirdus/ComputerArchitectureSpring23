; 
;AddTwo.j modified by nerdusbirdus to add floats instead.
; original by Neal Nelson  2012.01.26 
; Adds two floating point numbers and prints the result to the console

; class heirarchy
.class public AddTwo
.super java/lang/Object

; standard initializer
.method public <init>()V
  aload_0
  invokespecial	java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava.lang.String;)V
  .limit stack 3

  ; push System.out onto the stack
  getstatic  java/lang/System/out Ljava/io/PrintStream;

  ; push two floating point numbers on the stack and add them
  ldc 7.54
  ldc 3.14159
  fadd

  ; call PrintStream.println()
  invokevirtual	java/io/PrintStream/println(F)V
  return
.end method

