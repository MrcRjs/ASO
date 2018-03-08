#include <stdio.h>

int main(int argc, char** argv)
{
	if(argc==2)
	{
		FILE* ptr = fopen(argv[1],"r");
		char ch;
		while((ch = fgetc(ptr)) != EOF)
			printf("%c", ch);
		fclose(ptr);
		return 0;
	} else
	{
		printf("Usage: cat <file>\n");
		return 1;
	}

}
