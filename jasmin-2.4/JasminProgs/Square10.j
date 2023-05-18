;Square10.j
;FIX THIS
;create and call a static method Square on constant 10.0

.class public Square10
.super java/lang/Object

;
; standard initializer
.method public <init>()V
   aload_0
 
   invokespecial java/lang/Object/<init>()V
   return
.end method

.method public static main([Ljava/lang/String;)V
   .limit stack 3
   .limit locals 1

   ; push System.out onto the stack
   getstatic java/lang/System.out Ljava/io/PrintStream;

   ; push a float onto the stack and change it to a double
   ldc 10.0
   f2d

   ;call our Square10 method - it works on doubles
   invokestatic Square10.square(D)D
   .limit stack 4
   .limit locals 2
   
dload 0
dload 0
dmul

;do a d return to give a double back
dreturn
.end method

   ; call the PrintStream.println() method.
   invokevirtual java/io/PrintStream.println(D)V

   ; done
   return
.end method
