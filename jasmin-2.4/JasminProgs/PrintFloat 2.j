; PrintFloat.j
; Neal Nelson  2012.01.26 
; Prints a single float constant to the console

; class heirarchy
.class public PrintFloat
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

  ; push a floating point constant on the stack
  ldc 3.14159

  ; call PrintStream.println()
  invokevirtual	java/io/PrintStream/println(F)V
  return
.end method

