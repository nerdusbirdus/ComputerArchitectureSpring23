.class public MaxintMinus8and3One
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
   .limit locals 2

   ; push System.out onto the stack
   getstatic java/lang/System/out Ljava/io/PrintStream;

   ; load -8 then store it in 0
   ldc -8
   istore_0

   ; load 3 and store it in 1
   ldc 3
   istore_1

   ; call our max method
   iload_0
   iload_1
   invokestatic MaxintMinus8and3One/max(II)I

   ; output the resulting maximum 
   invokevirtual java/io/PrintStream/println(I)V

   ; done
   return
.end method

.method public static max(II)I
   .limit stack 3
   .limit locals 2

   iload_0
   iload_1
   if_icmple secondIsMax

   ; If the first value is greater, return it directly
   iload_0
   ireturn

secondIsMax:
   ; If the second value is greater, return it directly
   iload_1
   ireturn
.end method
