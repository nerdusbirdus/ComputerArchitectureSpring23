;max2.j prints the maximum of two command line int args
;FIX THIS
;create and call a static method Square with command line input

.class public Max2
.super java/lang/Object

;
; standard initializer
.method public <init>()V
   aload_0
 
   invokespecial java/lang/Object/<init>()V
   return
.end method

.method public static main([Ljava/lang/String;)V
   .limit stack 4
   .limit locals 1

   ; push System.out onto the stack
   getstatic java/lang/System.out Ljava/io/PrintStream;

; get first command line input arg iconst 0 and convert to an int
aload 0
iconst_0
aaload 

; comnvert command line string argument to int
invokestatic java.lang.Integer.parseInt(Ljava.lang.String;)I

;get the second command line argument int at iconst 1
aload 0
iconst_1
aaload 

; comnvert second command line string argument to int
invokestatic java.lang.Integer.parseInt(Ljava.lang.String;)I

;call our Square method - it works on doubles
invokestatic Max2.max(II)I

   ; call the PrintStream.println() method.
   invokevirtual java/io/PrintStream.println(I)V

   ; done
   return
.end method

.method public static max(II)I
   
   .limit stack 2
   .limit locals 2
   iload 0
   iload 1
   
   ;currently just prints second command line argument out of 2. 
   ;TODO figure out which one is largest and return the larger one
   ;it will involve jumps

   ireturn
.end method 