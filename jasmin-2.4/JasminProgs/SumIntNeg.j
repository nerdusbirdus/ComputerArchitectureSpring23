.class public SumIntNeg
.super java/lang/Object

.method public static sumInt(I)I
   .limit stack 2
   .limit locals 2

   iload 0
   iflt returnZero
   ; Check if n is negative, if so, return 0

   iconst_0
   istore 1  ; Initialize sum to 0
   iconst_0
   istore 2  ; Initialize i to 0

loop:
   iload 2
   iload 0
   if_icmpgt done
   ; Check if i is greater than n, if so, exit the loop

   iload 1
   iload 2
   iadd
   istore 1  ; Add i to the sum

   iinc 2 1   ; Increment i by 1
   goto loop  ; Repeat the loop

returnZero:
   iconst_0
   ireturn   ; Return 0 if n is negative

done:
   iload 1
   ireturn   ; Return the sum

main:
   .limit stack 1
   .limit locals 1

   ; Get the command-line argument
   aload 0
   iconst_0
   aaload
   invokestatic java/lang/Integer.parseInt(Ljava/lang/String;)I
   invokestatic sumInt(I)I

   ; Print the result
   getstatic java/lang/System/out Ljava/io/PrintStream;
   swap
   invokevirtual java/io/PrintStream.println(I)V

   return
.end method
