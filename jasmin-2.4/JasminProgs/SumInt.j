.class public SumInt
.super java/lang/Object

; standard initializer
.method public <init>()V
   aload_0
   invokespecial java/lang/Object/<init>()V
   return
.end method

; static method to compute the sum of integers from 0 to n
.method public static sumInt(I)I
   .limit stack 2
   .limit locals 3

   ; store the argument n in local variable 0
   iload_0
   istore_1

   ; initialize the sum to 0
   iconst_0
   istore_0

   ; loop from 0 to n and add each number to the sum
   iconst_0
   istore_2   ; index variable

   ; top of the loop
top:
   iload_2
   iload_1
   if_icmpgt done
   ; exit the loop if index > n

   ; add the current index to the sum
   iload_0
   iload_2
   iadd
   istore_0

   ; increment the index
   iinc 2 1
   goto top

done:
   ; return the computed sum
   iload_0
   ireturn
.end method

; main method to call the sumInt method
.method public static main([Ljava/lang/String;)V
   .limit stack 2
   .limit locals 2

   ; get the argument from command line and parse as an int
   aload_0
   iconst_0
   aaload
   invokestatic java/lang/Integer.parseInt(Ljava/lang/String;)I

   ; call the sumInt method with the parsed argument
   invokestatic SumInt/sumInt(I)I

   ; print the result
   getstatic java/lang/System/out Ljava/io/PrintStream;
   swap
   invokevirtual java/io/PrintStream.println(I)V

   return
.end method
