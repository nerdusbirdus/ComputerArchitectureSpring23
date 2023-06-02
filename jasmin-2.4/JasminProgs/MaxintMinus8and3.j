; Max2.j - print the maxmimum of two hard coded integers, -8 and 3

.class public MaxintMinus8and3
.super java/lang/Object

; standard initializer
.method public <init>()V
   aload_0
 
   invokespecial java/lang/Object/<init>()V
   return
.end method

.method public static main([Ljava/lang/String;)V
   .limit stack 4
   .limit locals 3

   ; push System.out onto the stack
   getstatic java/lang/System.out([Ljava/io/PrintStream;)

   ; load -8 then store it in 0
  ldc -8
  istore_0


  ;load 3 and store it in 1
  ldc 3
  istore_1



   ; call our max method
   invokestatic Max2.max(II)I

   ; output the resulting maximum 
   invokevirtual java/io/PrintStream.println(I)V

   ; done
   return
.end method

.method public static max(II)I
  .limit stack 2
  .limit locals 2

  iload_0
  iload_1
 
 ;we literally just make a label firstIsMax and have it return the first arg 
  ifge firstIsMax

  ;and if the first one isn't max we can just go on, you don't actually need this label.
secondIsMax:
  iload 1
  goto done

firstIsMax:
  iload 0

done:
  ireturn
  .end method