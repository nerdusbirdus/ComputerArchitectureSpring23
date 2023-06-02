.class public StrLenHello
.super java/lang/Object

;
; standard initializer
.method public <init>()V
   aload_0
 
   invokespecial java/lang/Object/<init>()V
   return
.end method

.method public static main([Ljava/lang/String;)V
   .limit stack 2
   .limit locals 1

   ; push System.out onto the stack
   getstatic java/lang/System/out Ljava/io/PrintStream;

   ; load the string "Hello World from Jasmin" onto the stack
   ldc "Hello World from Jasmin"

   ; invoke the length() method on the string
   invokevirtual java/lang/String.length()I

   ; invoke the println() method to print the result which should be 23
   invokevirtual java/io/PrintStream.println(I)V

   ; done
   return
.end method
