; get an input string and convert it to upper case and print it

.class public ToUpper
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

   ;get a command line string argument onto stack 
   aload_0
   iconst_0
   aaload 

   ;convert the string to upper case using toUpperCase method of String class
   invokevirtual java.lang.String.toUpperCase()Ljava.lang.String;

   ; print out the uppercase string as a result
   invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

   ; done
   return
.end method
