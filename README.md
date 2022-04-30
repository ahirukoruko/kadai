# 問1

## ソースコード
```C
#include <stdio.h>
#include <math.h>

//(1)の関数。k^2をnまで繰り返して和を取る。
int kakkoichi(int n)
{
int k,ans=0;

    for(k=1;k<=n;k++)
        {
        ans=ans+(k*k);
        /* 
        printf("k=%d\n",k);
        printf("%d\n",ans);
        */
        }
    return (ans);
}

//(2)の関数。1/(k^2)をnまで繰り返して和を取る。
double kakkoni(int n)
{
    int ans2=1;
    double k,ans=1;

    for(k=1;k<=n;k++)
        {
        ans=1.0/(k*k);
        /*
        printf("k=%.0lf\n",k);
        ans2=ans2*k*k;
        printf("%lf(1/%d)\n",ans,ans2);
        */
        }
    return (ans);
}

//(3)の関数。前の数に+1してかけて~をnまで繰り返す。
int kakkosan(int n)
{
int k,ans=1;

    for(k=1;k<=n;k++)
        {
        ans=ans*k;
        /*
        printf("k=%d\n",k);
        printf("%d\n",ans);
        */
        }
    return (ans);
}
//(4)の関数。分母は階乗と一緒、分子は階乗をm回分だけ繰り返す
int kakkoyon(int n,int m)
{
    int k,ans=1,bunbo=1,bunshi=1;
    for(k=1;k<=m;k++)
    {
    bunshi=bunshi*(n-k+1);
    bunbo=bunbo*k;
    /*
    printf("k=%d\n",k);
    printf("bunshi=%d\n",bunshi);
    printf("bunbo=%d\n",bunbo);
    */
        }
        ans=bunshi/bunbo;
    return(ans);
}

int main()
{
int n=6,m=4;

printf("(1)%d\n",kakkoichi(n));
printf("(2)%lf\n",kakkoni(n));
printf("(3)%d\n",kakkosan(n));
printf("(4)%d\n",kakkoyon(n,m));
return 0;
}
```

## makefile
```
# makefile
.PHONY : clean

kadai1.out : kadai.c
    gcc -o kadai1.out kadai.c
do :
    ./kadai1.out
clean :
    rm kadai1.out
```
出力
![](/images/1.png)
