; 
;AddTwo.j
; Neal Nelson  2012.01.26 
; Adds two integer constants and prints the result to the console

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

  ; push two iteger constants on the stack and add them
  sipush 25
  sipush 18
  iadd

  ; call PrintStream.println()
  invokevirtual	java/io/PrintStream/println(I)V
  return
.end method

