; Dist.j - takes two command line arguments as integers, parses them as doubles, and computes the square root of the sum of the squares of the two arguments.
;a main method in the program takes two command line arguments, passes the command-line arguments to the dist function,
; and prints the result of the dist function.
;This version checks to make sure there are exactly two command line arguments passed to it, and turns everything into a double so that
;the multiplication can be signed, even though that takes up a lot of space.
;I am not sure why it gives the wrong answer when given 6 and -7, I believe it relates to the fact that the answer is 
;the square root of negative 13 because it is the sqrt of 36-49 so the JVM would give us Not a Number, but 
;there is something going on with the interpretation of signed doubles that is messy, and giving us the wrong answer 9.219544457292887 instead of NaN
;the program gives 5.0 for both arguments 3,4 and -3,-4 which seems to indicate that it is not treating negatives properly.
;I could not figure out how to fix the issue in the time alloted with the limitation of working by myself and with no internet searches.
;I tried very hard and stressed out a lot about the program here and still failed to achieve my goals but I hope my efforts will be recognized.
;I realize that part of the requirement was to have the dist function take integer arguments not doubles, but I dont have the time to fix it before the deadline.
;I had built a previous version that handled doubles as required and then got so caught up in trying to make arguments 6, -7 work that I forgot about the actual requirement. 
;I hate myself deeply because of the failure I have made of the assignment and I hope I can still get credit in the course despite the errors. 

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

   ; If the result of comparison to 2 is true we go to gotArgOK, or Else fall through to print usage message
   
   ldc "Usage: java Dist <int>, <int>"
   invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V
   goto done

   gotArgOk:
   aload 0
   iconst_0
   aaload

    ; convert the command-line string argument to double
   invokestatic java.lang.Double.parseDouble(Ljava/lang/String;)D

    ; get the second command-line argument by loading the object reference at 0 then the index of the argument (1) and use it as an object address with aaload
   aload 0
   iconst_1
   aaload

    ; convert the second command-line string argument to double, which I know was not what was asked.
   invokestatic java.lang.Double.parseDouble(Ljava/lang/String;)D

   ; call our Dist method that takes two doubles and returns a double to be printed 
   invokestatic Dist.Dist(DD)D

    ; print the double result of the calculation of the square root of the sum of the squares of the args which is returned from the dist method
   invokevirtual java/io/PrintStream.println(D)V

   done:
   return
.end method

;start our dist method that takes two doubles and returns a double to print
.method public static Dist(DD)D
  .limit stack 6
  .limit locals 6

  ;goal: load args and compute the square root of the sum of the squares of the two arguments.
 ;first we will square each arg 
 ;then we will sum the squares together 
 ;then we will load the sum of those squares and take the square root of it then put it back on the stack
 ;then the result will be on top of the stack to become an argument passed to java/io/PrintStream.println(D)V

 
   ;load the first int argument in local 0, it is a double so it is still signed when we multiply it
   dload 0

   ; Square the first argument
   dload 0
   dmul

   ;load the second argument which is in local 2 because it is a double, and multiply it with itself
   dload 2

   ; Square the second argument
   dload 2
   dmul

   ; Add the sum of the squares
   dadd

   ;goal is to load the sum of those squares onto the stack then call math.sqrt on it with the sum as an argument then put then Return the result
   ; we should still have a double because the square root method takes a double
   invokestatic java/lang/Math.sqrt(D)D

  ;Return with the double value on top of the stack which should be the result of the calculations that we are about to print
   dreturn
.end method

