.class public DistInt
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
   .limit locals 4

   ; push System.out onto the stack
   getstatic java/lang/System/out Ljava/io/PrintStream;

   ; check to see if args array has exactly two elements
   aload 0
   arraylength
   iconst_2
   if_icmpeq gotArgOk

   ; If the number of arguments is not two, print usage message and exit
   ldc "Usage: java DistInt <int> <int>"
   invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V
   goto done

   gotArgOk:
   ; Get the first command-line argument
   aload 0
   iconst_0
   aaload

   ; convert the first command-line string argument to an integer
   invokestatic java.lang.Integer.parseInt(Ljava/lang/String;)I

   ; Store the first argument in local variable 1
   istore 1

   ; Get the second command-line argument
   aload 0
   iconst_1
   aaload

   ; convert the second command-line string argument to an integer
   invokestatic java.lang.Integer.parseInt(Ljava/lang/String;)I

   ; Store the second argument in local variable 2
   istore 2

   ; Call our dist method that takes two integers and returns a double to be printed
   iload 1
   iload 2
   invokestatic DistInt/dist(II)D

   ; print the double result of the calculation of the square root of the sum of the squares of the args
   invokevirtual java/io/PrintStream.println(D)V

   done:
   return
.end method

; start our dist method that takes two integers and returns a double to print
.method public static dist(II)D
   .limit stack 3
   .limit locals 4

   ; Load the first integer argument from local variable 0
   iload 0

   ; Convert the first argument to double
   i2d

   ; Square the first argument
   dmul

   ; Load the second integer argument from local variable 1
   iload 1

   ; Convert the second argument to double
   i2d

   ; Square the second argument
   dmul

   ; Add the sum of the squares
   dadd

   ; Take the square root of the sum
   invokestatic java/lang/Math.sqrt(D)D

   ; Return the result
   dreturn
.end method
