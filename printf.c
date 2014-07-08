#include <stdio.h>

int main()
{

int jMAX = 1000000;

for(int j=0 ; j<jMAX ; j++ )
{

	int f,l,v;
	f = jMAX / 20;
	l = jMAX / 100;
	v = j / l;
	
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
	
	return 0;
}
