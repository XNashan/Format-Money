stock FormatNumber(Float:amount, delimiter[2]=".", comma[2]=",")
{
    #define MAX_MONEY_String 16
    new txt[MAX_MONEY_String];
    format(txt, MAX_MONEY_String, "%d", floatround(amount));
    new l = strlen(txt);
    if (amount < 0) // -
    {
        if (l > 3) strins(txt,delimiter,l-1);
        if (l > 6) strins(txt,comma,l-6);
        if (l > 9) strins(txt,comma,l-9);
    }
    else
    {//1000000
        if (l > 3) strins(txt,delimiter,l-1);
        if (l > 6) strins(txt,comma,l-6);
        if (l > 10) strins(txt,comma,l-9);
    }
//  if (l <= 2) format(txt,sizeof( szStr ),"00,%s",txt);
    return txt;
}
