//sumr.c
int sumr(int n)
{
    if(n <=0)
    {
        return 0;
    }
    return n + sumr(n-1);
    
}
int main()
    {
    return 0;
    }