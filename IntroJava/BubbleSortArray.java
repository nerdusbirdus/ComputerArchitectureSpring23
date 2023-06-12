//this makes an arraylist and sorts it

void BubbleSort()
{
    for(int pass =1; pass<= List.Count -1; pass++)
    for (int compare =1; compare <=List.Count - pass); compare++)
    {
        UserScore first = (UserScore)List[compare-1];
        UserScore second = (UserScore)List[compare];
        if(first.getScore > second.getAge())
        {
            swap(compare-1, compare)
        }
    }

}
void swap (int x, int y)
{
    Object temp = List[x];
    List[x] = List[y];
    List[y] = temp;
}


class UserScore
{
    private String UserName;
    private int ScoreVal

    public UserScore(String UserName, int ScoreVal)
    {
        this.UserName = UserName;
        ScoreVal = ScoreVal;
    }
    public String GetName()
    {
        return UserName;
    }
    public int getScore()
    {
        return ScoreVal;
    }
}