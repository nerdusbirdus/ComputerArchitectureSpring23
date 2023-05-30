;EvenOdd.j create and call a static method evenodd that returns a string "even", "odd", or "zero" depending on input number
;WORKS
;main program just prints that string
;this version checks to make sure there is only one command line argument

.class public EvenOdd
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

; check to make sure one command line argument
aload 0
arraylength
iconst_1
if_icmpeq gotArgOk

ldc "Usage : java EvenOdd <int argument>"
invokevirtual java.io.PrintStream.println(Ljava.lang.String;)V
goto done

gotArgOk:
aload 0
iconst_0
aaload

; comnvert command line string argument to int
invokestatic java.lang.Integer.parseInt(Ljava.lang.String;)I

;call our even odd method
invokestatic EvenOdd.evenOdd(I)Ljava.lang.String;


   ; coutput resulting string
   invokevirtual java/io/PrintStream.println(Ljava.lang.String;)V

   done:
   return
.end method

 .method public static evenOdd(I)Ljava.lang.String;
   
   .limit stack 2
   .limit locals 1

   iload 0
   ifne evenOrOdd
   ldc "Zero"
   goto leave


   evenOrOdd:
   iload  0
   iconst_2
   irem
   ifne odd
   

   even:
ldc "Even"
goto leave

   odd:
ldc "Odd"


   leave:
; return type is a string object so it is an areturn
   areturn
.end method 
