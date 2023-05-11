;Program for averaging some constants 25, 18, 5, 8, 22

;Hello World Jasmin program.
; Modified from Jon Meyer's sample HelloWorld.j program.
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
   .limit stack 6
   ; needs 3 stack locations but why not have more?
   .limit locals 1
   ;local variable passed in as an argument

   ; push System.out onto the stack

   getstatic java/lang/System.out Ljava/io/PrintStream;

; push and add 5 int values onto the stack, left associative calculation
;then convert to float and divides to get average and prints
ldc 25
ldc 18
iadd
ldc 5
iadd
ldc 8
iadd
ldc 22
iadd
ldc 5
i2f
fdiv

   ;call the PrintStream.println() method with a float, if the type is a primitive type it's just one letter
   invokevirtual java/io/PrintStream.println(F)V
   
;try a right associative version (right to left)
getstatic java/lang/System.out Ljava/io/PrintStream;
;this pushes them all onto the stack then unwinds it summing as it comes back
;uses 6 stack locations 
;then converts to float and divides to get average and prints
ldc 25
ldc 18
ldc 5
ldc 8
ldc 22
iadd
iadd
iadd
iadd
ldc 5
i2f
fdiv 
; fdiv after pushing onto stack

;call the PrintStream.println() method with a float, if the type is a primitive type it's just one letter
   invokevirtual java/io/PrintStream.println(F)V
   ; done

   return

.end method
