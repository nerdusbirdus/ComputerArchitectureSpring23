.class public Distweird
.super java/lang/Object

; standard initializer
.method public <init>()V
   aload_0
   invokespecial java/lang/Object/<init>()V
   return
.end method

; start main to call the dist method
.method public static main([Ljava/lang/String;)V
   .limit stack 5
   .limit locals 6

   ; push System.out onto the stack
   getstatic java/lang/System/out Ljava/io/PrintStream;

   ; get the args array reference
   aload_0
   arraylength
   iconst_2
   if_icmpeq gotArgOk

   ; if the result of comparison to 2 is true, we go to gotArgOk, else fall through to usage message
   ldc "Usage: java Dist <double>, <double>"
   invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
   goto done

   gotArgOk:
   ; get the first command line argument by loading the object reference at 0 and the index of the argument (1) and use it as an object address with aaload
   aload_0
   iconst_1
   aaload

   ; convert the command-line string argument to double
   invokestatic java/lang/Double/parseDouble(Ljava/lang/String;)D
   dstore_0

   ; get the second command-line argument by loading the object reference at 0 and the index of the argument (2) and use it as an object address with aaload
   aload_0
   iconst_2
   aaload

   ; convert the second command-line string argument to double
   invokestatic java/lang/Double/parseDouble(Ljava/lang/String;)D
   dstore_2

   ; call our dist method that takes two doubles and returns a double to be printed
   invokestatic Distweird/dist(DD)D

   ; print the double result of the calculation of the square root of the sum of the squares of the args, which is returned from the dist method
   invokevirtual java/io/PrintStream/println(D)V

   done:
   return
.end method

; start our dist method that takes two doubles and returns a double to print
.method public static dist(DD)D
   .limit stack 6
   .limit locals 6

   ; Load the first double argument and store it in local variable 0
   dload_0
   dstore_0

   ; Load the second double argument and store it in local variable 2
   dload_2
   dstore_2

   ; Square the first argument and store the result in local variable 0
   dload_0
   dload_0
   dmul
   dstore_0

   ; Square the second argument and store the result in local variable 2
   dload_2
   dload_2
   dmul
   dstore_2

   ; Add the squares of the arguments and store the result in local variable 4
   dload_0
   dload_2
   dadd
   dstore_4

   ; Compute the square root of the sum of the squares and store the result in local variable 4
   dload_4

   invokestatic java/lang/Math/sqrt(D)D

   dstore_4

   ;Load the result from local variable 4 and return it
   dload_4
   dreturn
   .end method