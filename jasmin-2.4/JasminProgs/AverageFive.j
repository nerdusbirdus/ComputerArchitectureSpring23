;Program for averaging some constants 25, 18, 5, 8, 22

; Replaces deprecated invokenonvirtual with invokespecial.

.class public AverageConsts
.super java/lang/Object

;
; standard initializer
.method public <init>()V
   aload_0
 
   invokespecial java/lang/Object/<init>()V
   return
.end method

.method public static main([Ljava/lang/String;)V
; declaration, arg is an array of strings and the return type is V for void at the end
   .limit stack 11
   ; needs 3 stack locations but why not have more?
   .limit locals 6
   ;local variable passed in as an argument

   ; push System.out onto the stack

   getstatic java/lang/System.out Ljava/io/PrintStream;

; push and add 5 int values onto the stack, left associative calculation
;then convert to float and divides to get average and prints
ldc 25
istore_1
ldc 18
istore_2
ldc 5
istore_3
ldc 8
istore 4
ldc 22
istore 5

;get the sum of the int values
iload_1
iload_2
iadd
iload_3
iadd
iload 4
iadd
iload 5
iadd

;convert the sum to a float
i2f

;divide the sum by 5
fdiv

;convert the float to a string
invokevirtual java/lang/String.valueOf(F)Ljava/lang/String;

;call the PrintStream.println() method, if the type is a primitive type it's just one letter
   invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V



   return

.end method