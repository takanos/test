#include <time.h>
#include <stdio.h>


int main(void){
int de;
printf("How many seconds do you count it ?(carve for 100[s])\n");
scanf("%d",&de);

if (de < 100){
printf("pleas 100[s] over \n");
return 0;
}

if (de % 100 != 0){
printf("carve for 100[s] \n");
return 0;
}

time_t timer;
timer = time(NULL);

struct tm *local;
local = localtime(&timer);
/*
printf("%4d/", local->tm_year + 1900);
printf("%2d/", local->tm_mon + 1);
printf("%2d\n", local->tm_mday);

printf("%2d:",local -> tm_hour);
printf("%2d:",local -> tm_min);
printf("%2d\n",local -> tm_sec);
*/
int c=(local -> tm_min * 60) + (local -> tm_hour * 3600) + local -> tm_sec;
//printf("%d\n",c);

int d;
while (d <= c + de){

time_t t;
t = time(NULL);

struct tm *k;
k = localtime(&t);
d=(k -> tm_min * 60) + (k -> tm_hour * 3600) + k -> tm_sec;
//printf("%d\n",d);

int l = de / 100;
int f = de / 20;
int j = d - c;
int v = j / l;
//printf("%d\n",d);

if ( j % l == 0 ){
	printf("%s","[");
	for (double g=1 ; g<=j/f ; g++ )
	{
	printf("%s","=");
	}
	for (double g=1 ; g<=20-(j/f) ; g++)
	{
	printf("%s"," ");
	}
	printf("%s%d%%\r","]",v);
}

}
printf("[====================]100%\n");
}
