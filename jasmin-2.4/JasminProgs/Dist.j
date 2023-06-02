; Dist.j - takes two command line arguments and computes the square root of the sum of the squares of the two arguments.
;a main method in this program takes two command line arguments, passes the command-line arguments to the dist function,
; and prints the result of the dist function.
;this version checks to make sure there are exactly two command line arguments passed to it, and turns everything into a double so that
;the multiplication can be signed, even though that takes up a lot of space.
;I DOnt know why it gives the wrong answer!!!!!! 


.class public Dist
.super java/lang/Object

; standard initializer
.method public <init>()V
   aload_0
 
   invokespecial java/lang/Object/<init>()V
   return
.end method

;start main to call the dist method

.method public static main([Ljava/lang/String;)V
   .limit stack 5
   .limit locals 3

   ; push System.out onto the stack
   getstatic java/lang/System.out Ljava/io/PrintStream;

   ; get the args array reference
   ;check to see that args array has at least two elements by loading the number 2 and comparing arg array length with 2

   aload 0
   arraylength
   iconst_2
   if_icmpeq gotArgOk

; if result of comparison to 2 is true we go to gotArgOK, else fall through to usage message
   
   ldc "Usage: java Dist <double>, <double>"
   invokevirtual java.io.PrintStream.println(Ljava.lang.String;)V
   goto done
   
   gotArgOk:

   ; get first command line argument by loading the object reference at 0 then the index of the argument (1) and use it as an object address with aaload
   aload 0
   iconst_0
   aaload

   ; convert the command-line string argument to double
   invokestatic java.lang.Double.parseDouble(Ljava/lang/String;)D

   ; get the second command-line argument by loading the object reference at 0 then the index of the argument (1) and use it as an object address with aaload
    aload 0
   iconst_1
   aaload

   ; convert the second command-line string argument to double
  invokestatic java.lang.Double.parseDouble(Ljava/lang/String;)D
   

   ; call our Dist method that takes two doubles and returns a double to be printed 
   invokestatic Dist.dist(DD)D

   ; print the double result of the calculation of the square root of the sum of the squares of the args which is returned from the dist method
   invokevirtual java/io/PrintStream.println(D)V

   done:
   return
.end method

;start our dist method that takes two doubles and returns a double to print
.method public static dist(DD)D
  .limit stack 6
  .limit locals 6
 
 ;goal: load args and compute the square root of the sum of the squares of the two arguments.
 ;first we will square each arg and store it back in its local
 ;then we will sum the squares together and store it in local_0
 ;then we will load the sum of those squares and take the square root of it then put it back in local_0
 ;then the result will be in local_0 of the dist method and also on top of the stack to become an argument passed to java/io/PrintStream.println(D)V

 ;load the first int argument in local 0, it is a double so it is still signed when we multiply it, and multiply it with itself and store it in local 2
dload 0 
dstore 2

dload 2
dstore 4

 dload 2
dload 2

dmul
;load the second argument which is in local 2 because it is a double, and multiply it with itself and store it in local 4
dstore 2


dload 4
dload 4
dmul
dstore 4

;square the second one then add the results 
dload 2
dload 4
dadd
dstore 2

;goal is to load the sum of those squares onto the stack then call math.sqrt on it with the sum as an argument then put then return the result
; we should still have a double because the square root method takes a double
   
   ;call the math.sqrt method to work on a double and return a double 
   dload 2
   invokestatic java/lang/Math.sqrt(D)D

   ;return with the double value on top of the stack which should be the result of the calculations that we are about to print
   dreturn
   .end method
