 #include<stdio.h>
int main(int argc, char *argv[])
{
    int i;
    
 for (i = 0; i < argc; i++) 
    {
        printf("Command line arg %2d: %s\n", i, argv[i]);
    }
    printf("\n");

}
