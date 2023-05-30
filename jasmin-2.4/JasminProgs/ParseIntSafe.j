; calls ParseInt method to convert string to int
;get one command line argument and parse it into an int then print the int
;this version checks to make sure there is a command line argument

.class public ParseIntSafe
.super java/lang/Object

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

   ; get the args array reference at local 0 for static method main
   aload 0

;check to make sure the args array has at least one element
arraylength
ifgt gotArgOk

;oops user forgot to give a command line argument
ldc "Usage: java PrintIntSafe <int>"
invokevirtual java.io.PrintStream.println(Ljava.lang.String;)V
goto done

gotArgOk:
;get the first argument String at array slot 0 loading index with aaload, aload again because ref was popped off above
   aload_0
   iconst_0
   aaload 
   ; if you use istore_1 and istore_2 then you can have them as local variables for doing the max program

   ;parse the argument string into an int
invokestatic java.lang.Integer.parseInt(Ljava.lang.String;)I

   ; print the argumnent int by calling print method
   invokevirtual java/io/PrintStream.println(I)V

done:
   return
.end method
