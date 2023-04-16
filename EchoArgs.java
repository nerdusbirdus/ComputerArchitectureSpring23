public class EchoArgs
{ public static void main(String args[])
    { 
        
            for(int i=0; i < args.length; i++) 
            {
                System.out.println("Command line args are: " + args[i]); 
            }
    }


}