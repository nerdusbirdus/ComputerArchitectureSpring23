;Squaresafew.j
;this version checks to make sure there is one command lime argument
;create and call a static method Square with command line input

.class public SquareSafe
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
   .limit locals 1

   ; push System.out onto the stack
   getstatic java/lang/System.out Ljava/io/PrintStream;

;check to make sure exactly one argument
   aload_0
   arraylength
   iconst_1
   if_icmpeq gotArgOk

   ldc "Usage: java SquareSafe <int>"
   invokevirtual java.io.PrintStream.println(Ljava.lang.String;)V
   goto done

gotArgOk:
; get commmand line input value to do a square on
aload 0
iconst_0
aaload 

; comnvert command line string argument to int
invokestatic java.lang.Integer.parseInt(Ljava.lang.String;)I

;call our Square method - it works on doubles
invokestatic Square.square(I)I


   ; call the PrintStream.println() method.
   invokevirtual java/io/PrintStream.println(I)V

done:
   return
.end method

 .method public static square(I)I
   
   .limit stack 2
   .limit locals 1
   iload 0
   iload 0
   imul
   ireturn
.end method 