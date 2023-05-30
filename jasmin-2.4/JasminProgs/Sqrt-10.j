;Sqrt10.j
;WORKS
;does the square root of negative 10 and should output NaN

.class public SqrtNeg10
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
   ;limit 3 because we work with a double that takes 2 stack locations
   .limit locals 1

   ; push System.out onto the stack
   getstatic java/lang/System.out Ljava/io/PrintStream;

   ; push 10.0 float onto the stack and then convert it to double 
   ldc -10.0
   f2d

   ;call the math.sqrt method to work on a double, takes double returns double. 
   invokestatic java/lang/Math.sqrt(D)D

   ; call the PrintStream.println() method.
   invokevirtual java/io/PrintStream.println(D)V

   ; done
   return
.end method

