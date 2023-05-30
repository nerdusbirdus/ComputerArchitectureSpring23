; Get one command line string argument and print it
; version checks to make sure there is a command line argument 
.class public EchoTwoArgs
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

   ; get the args array reference
   ;check to see that args array has at least two elements

   aload 0
   arraylength
   iconst_2
   if_icmpeq gotArgOk

; when comparison equal we go to gotArgOK
   
   ldc "Useage: java EchoTwoArgs <string, string>"
   invokevirtual java.io.PrintStream.println(Ljava.lang.String;)V
   goto done
   
   gotArgOk:
   ;get first argument at array 0
   aload 0
   iconst_0
   aaload

   ;print the argument String
   invokevirtual java/io/PrintStream.println(Ljava.lang.String;)V

   ; push System.out onto the stack again, because it was popped off
   getstatic java/lang/System.out Ljava/io/PrintStream;

   ;get second argument at array 1
   aload 0
   iconst_1
   aaload

   ;print the second argument String
   invokevirtual java/io/PrintStream.println(Ljava.lang.String;)V

    done:
   return
.end method