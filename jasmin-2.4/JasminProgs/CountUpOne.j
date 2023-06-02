.class public CountUpOne
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

   ; Check to make sure the args array has at least one element
   arraylength
   ifle usageError

   ; get the first argument String at array slot 0
   aload_0
   iconst_0
   aaload
   
   ; parse the argument string into an int and use as the upper index bound
   invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
   istore_2    ; the upper bound is in local 2

   iconst_0
   istore_1    ; the index is in local 1 starting at 0

   ; top of the loop
top:
   iload_1
   iload_2
   if_icmpgt done
   ; program exit condition first
   ; breaks out of loop if the index is greater than the arg you give the program, else the rest runs

   ; push System.out onto the stack
   getstatic java/lang/System/out Ljava/io/PrintStream;

   ; load the thing at the index 1 on the stack and print the thing at the index 
   iload_1
   invokevirtual java/io/PrintStream/println(I)V

   ; increment the index
   iinc 1 1
   goto top
   
done:
   return

usageError:
   ; oops - user forgot to give a command-line argument
 
   ; push System.out onto the stack
   getstatic java/lang/System/out Ljava/io/PrintStream;
   ldc "Usage: java CountUp <int>"
   invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
   return

.method public static sumInt(I)I
   .limit stack 2
   .limit locals 2

   ; initialize the sum to 0
   iconst_0
   istore_1

   ; top of the loop
topLoop:
   iload_0
   iflt doneLoop
   ; exit the loop if n < 0

   ; add the current value to the sum
   iload_1
   iload_0
   iadd
   istore_1

   ; decrement n
   iinc 0 -1
   goto topLoop

doneLoop:
   iload_1
   ireturn
.end method
