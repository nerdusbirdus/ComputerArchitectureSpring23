;HELLO WORLD MODIFIED FOR PRINTING INT, FLOAT for lab 6
; hello world modified and commented by nerdusbirdus

;Jasmin compiler instructions 
.class public HelloWorldNew
.super java/lang/Object

; standard initializer
.method public <init>()V
   aload_0
 ; need invoke special for the language library for objects 
   invokespecial java/lang/Object/<init>()V
   return
.end method

.method public static main([Ljava/lang/String;)V
;here begins the body of the program
; declaration, arg is an array of strings and the return type is V for void at the end
   .limit stack 10
   .limit locals 10

; announce limit of local variables plus local variables
   ; push System.out onto the stack
   ;println needs system.out on stack then the string printed as arguments passed to print function
   getstatic java/lang/System.out Ljava/io/PrintStream;

;the printstream class has println method, and we are invoking printstream class to do this
   ; push a string onto the stack to be worked on
   ldc "Howdy! This program prints an integer and a float on the following two lines:"

; puts an address onto the stack, via reference to memory 
   ; call the PrintStream.println() method.
   

   invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

   ;put object name onto the stack

   getstatic java/lang/System.out Ljava/io/PrintStream;

   ; we need to have two static print objects loaded onto stack because
   ; we are doing two prints as stack "unwinds." so we do the same instruction twice

   getstatic java/lang/System.out Ljava/io/PrintStream;

   ;push an int onto the stack
   ldc 431

   ;call the PrintStream.println() method with an int, if the type is a primitive type it's just one letter.
   invokevirtual java/io/PrintStream.println(I)V

;load a float onto stack 
   ldc 3.14 
   
;call printstream and use F as return type for float, 
;and stack should have duplicate getstatic on it already to work with this

invokevirtual java/io/PrintStream.println(F)V

   ; done, here ends the part of the program that does things.

   return

.end method
