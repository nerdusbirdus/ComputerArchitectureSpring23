public class EchoArgs
  minor version: 0
  major version: 52
  flags: ACC_PUBLIC, ACC_SUPER
Constant pool:
   #1 = Methodref          #13.#23        // java/lang/Object."<init>":()V
   #2 = Fieldref           #24.#25        // java/lang/System.out:Ljava/io/PrintStream;
   #3 = Class              #26            // java/lang/StringBuilder
   #4 = Methodref          #3.#23         // java/lang/StringBuilder."<init>":()V
   #5 = String             #27            // You have passed
   #6 = Methodref          #3.#28         // java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
   #7 = Methodref          #3.#29         // java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
   #8 = String             #30            //  command line arguments
   #9 = Methodref          #3.#31         // java/lang/StringBuilder.toString:()Ljava/lang/String;
  #10 = Methodref          #32.#33        // java/io/PrintStream.println:(Ljava/lang/String;)V
  #11 = String             #34            // Your command line arguments are:
  #12 = Class              #35            // EchoArgs
  #13 = Class              #36            // java/lang/Object
  #14 = Utf8               <init>
  #15 = Utf8               ()V
  #16 = Utf8               Code
  #17 = Utf8               LineNumberTable
  #18 = Utf8               main
  #19 = Utf8               ([Ljava/lang/String;)V
  #20 = Utf8               StackMapTable
  #21 = Utf8               SourceFile
  #22 = Utf8               EchoArgs.java
  #23 = NameAndType        #14:#15        // "<init>":()V
  #24 = Class              #37            // java/lang/System
  #25 = NameAndType        #38:#39        // out:Ljava/io/PrintStream;
  #26 = Utf8               java/lang/StringBuilder
  #27 = Utf8               You have passed
  #28 = NameAndType        #40:#41        // append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
  #29 = NameAndType        #40:#42        // append:(I)Ljava/lang/StringBuilder;
  #30 = Utf8                command line arguments
  #31 = NameAndType        #43:#44        // toString:()Ljava/lang/String;
  #32 = Class              #45            // java/io/PrintStream
  #33 = NameAndType        #46:#47        // println:(Ljava/lang/String;)V
  #34 = Utf8               Your command line arguments are:
  #35 = Utf8               EchoArgs
  #36 = Utf8               java/lang/Object
  #37 = Utf8               java/lang/System
  #38 = Utf8               out
  #39 = Utf8               Ljava/io/PrintStream;
  #40 = Utf8               append
  #41 = Utf8               (Ljava/lang/String;)Ljava/lang/StringBuilder;
  #42 = Utf8               (I)Ljava/lang/StringBuilder;
  #43 = Utf8               toString
  #44 = Utf8               ()Ljava/lang/String;
  #45 = Utf8               java/io/PrintStream
  #46 = Utf8               println
  #47 = Utf8               (Ljava/lang/String;)V
{
  public EchoArgs();
    descriptor: ()V
    flags: ACC_PUBLIC
    Code:
      stack=1, locals=1, args_size=1
         0: aload_0
         1: invokespecial #1                  // Method java/lang/Object."<init>":()V
         4: return
      LineNumberTable:
        line 7: 0

  public static void main(java.lang.String[]);
    descriptor: ([Ljava/lang/String;)V
    flags: ACC_PUBLIC, ACC_STATIC
    Code:
      stack=4, locals=2, args_size=1
         0: getstatic     #2                  // Field java/lang/System.out:Ljava/io/PrintStream;
         3: new           #3                  // class java/lang/StringBuilder
         6: dup
         7: invokespecial #4                  // Method java/lang/StringBuilder."<init>":()V
        10: ldc           #5                  // String You have passed
        12: invokevirtual #6                  // Method java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        15: aload_0
        16: arraylength
        17: invokevirtual #7                  // Method java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        20: ldc           #8                  // String  command line arguments
        22: invokevirtual #6                  // Method java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        25: invokevirtual #9                  // Method java/lang/StringBuilder.toString:()Ljava/lang/String;
        28: invokevirtual #10                 // Method java/io/PrintStream.println:(Ljava/lang/String;)V
        31: iconst_0
        32: istore_1
        33: iload_1
        34: aload_0
        35: arraylength
        36: if_icmpge     72
        39: getstatic     #2                  // Field java/lang/System.out:Ljava/io/PrintStream;
        42: new           #3                  // class java/lang/StringBuilder
        45: dup
        46: invokespecial #4                  // Method java/lang/StringBuilder."<init>":()V
        49: ldc           #11                 // String Your command line arguments are:
        51: invokevirtual #6                  // Method java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        54: aload_0
        55: iload_1
        56: aaload
        57: invokevirtual #6                  // Method java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        60: invokevirtual #9                  // Method java/lang/StringBuilder.toString:()Ljava/lang/String;
        63: invokevirtual #10                 // Method java/io/PrintStream.println:(Ljava/lang/String;)V
        66: iinc          1, 1
        69: goto          33
        72: return
      LineNumberTable:
        line 10: 0
        line 11: 31
        line 13: 39
        line 11: 66
        line 15: 72
      StackMapTable: number_of_entries = 2
        frame_type = 252 /* append */
          offset_delta = 33
          locals = [ int ]
        frame_type = 250 /* chop */
          offset_delta = 38
}
SourceFile: "EchoArgs.java"