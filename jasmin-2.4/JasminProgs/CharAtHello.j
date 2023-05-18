; CharAtHello prints the 6th character of the array of chars that is hello world!
;should output a capital W

.class public CharAtHello
.super java/lang/Object

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

   ; push a string onto the stack
   ldc "Hello World from Jasmin!"

   ;get the sixth character of the hello world string after putting index looked for on stack
   ldc 6
   invokevirtual java.lang.String.charAt()C

   ; print out the character at the index
   invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

   ; done
   return
.end method
