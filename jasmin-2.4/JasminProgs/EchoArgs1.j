;echo args 
;works
; echoes your args no matter what they are or how many
.class public EchoArgs1
.super java/lang/Object

; standard initializer
.method public <init>()V
   aload_0
   invokespecial java/lang/Object/<init>()V
   return
.end method

.method public static main([Ljava/lang/String;)V
   .limit stack 3
   .limit locals 3

   ; get the args array reference at local 0 for static method main
   aload 0

   ; get the length of the args array
   arraylength
   istore_1    ; store the length in local 1

   iconst_0
   istore_2    ; initialize the index in local 2

   ; top of the loop
top:
   iload_2
   iload_1
   if_icmpge done
   ; exit the loop if index >= length

   ; push System.out onto the stack
   getstatic java/lang/System/out Ljava/io/PrintStream;

   ; load the argument at the current index
   aload_0
   iload_2
   aaload

   ; print the argument
   invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

   ; increment the index
   iinc 2 1
   goto top
   
done:
   return
.end method
