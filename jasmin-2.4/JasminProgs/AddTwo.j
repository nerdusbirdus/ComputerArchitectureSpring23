; AddTwo.j - Adds two command-line args you give it and prints them.
;Todo: the version here does not check to see whether we have the correct number of args

.class public AddTwo
.super java/lang/Object

;standard initializer
.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

;we need a big stack size of 4 at once because we have two args on there plus an object reference and another object reference
.method public static main([Ljava/lang/String;)V
  .limit stack 4
  .limit locals 3
  
  ; push System.out onto the stack to print after it all unwinds
  getstatic java/lang/System/out Ljava/io/PrintStream;

  ; load arg at 0 and then call parseint to parse the first command-line input as an integer
  aload_0
  iconst_0
  aaload
  invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
  
  ; parse the second command-line input as an integer
  aload_0
  iconst_1
  aaload
  invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
  
  ; add the two integers
  iadd
  
  ; print the sum 
  invokevirtual java/io/PrintStream/println(I)V
  return
.end method
