#include <stdio.h>

extern char inputString[];
extern int wordCounter(char *str);

char inputString[] = "   I     love the Embedded   Systems  course a    lot!";

int main(void) {
    int wordCount = wordCounter(inputString);
		printf("Result: %d\n", wordCount); /* does not work with the simulation mode */
    return 0;
}

