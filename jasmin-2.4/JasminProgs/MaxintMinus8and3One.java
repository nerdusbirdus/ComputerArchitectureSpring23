.class public MaxintMinus8and3One
.super java/lang/Object

.method public <init>()V
   aload_0
   invokespecial java/lang/Object/<init>()V
   return
.end method

.method public static main([Ljava/lang/String;)V
   .limit stack 2
   .limit locals 2

   ; push System.out onto the stack
   getstatic java/lang/System.out Ljava/io/PrintStream;

   ; load -8 then store it in 0
   ldc -8
   istore_0

   ; load 3 and store it in 1
   ldc 3
   istore_1

   ; call our max method
   invokestatic MaxintMinus8and3/max(II)I

   ; output the resulting maximum 
   invokevirtual java/io/PrintStream.println(I)V

   ; done
   return
.end method

.method public static max(II)I
   .limit stack 1
   .limit locals 2

   iload_0
   iload_1
   if_icmple secondIsMax

   iload_0
   ireturn

secondIsMax:
   iload_1
   ireturn
.end method
