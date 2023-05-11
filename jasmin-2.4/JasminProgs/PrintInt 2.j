; PrintInt.j
; Neal Nelson  2012.01.26 
; Prints a single int constant to the console

; class heirarchy
.class public PrintInt
.super java/lang/Object

; standard initializer
.method public <init>()V
  aload_0
  invokespecial	java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava.lang.String;)V
  .limit stack 2

  ; push System.out onto the stack
  getstatic  java/lang/System/out Ljava/io/PrintStream;

  ; push an integer constants on the stack
  sipush 123

  ; call PrintStream.println()
  invokevirtual	java/io/PrintStream/println(I)V
  return
.end method

