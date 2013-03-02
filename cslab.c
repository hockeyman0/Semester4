#include <stdio.h>

int main(int argc, char *argv[]) {
	int firstcard;
	int secondcard;
	int thirdcard;
	int checkone;
	int checktwo;
	int checkthree;
	int twovthree;
	int onevtwo;
	int onevthree;
	int firstfinal;
	int secondfinal;
	int thirdfinal;
	int total;
	int test;
	int nonzero;
	int divisor;
	
	printf("Enter the three card values: ");
	scanf("%d %d %d", &firstcard, &secondcard, &thirdcard);


	//printf("hi");
	checkone = (10 - firstcard) / 9;
	checktwo = (10 - secondcard) / 9;
	checkthree = (10 - thirdcard) / 9;


	onevtwo = 1 - ((firstcard + secondcard)/11);
	onevthree = 1 - ((firstcard + thirdcard)/11);
	twovthree = 1 - ((secondcard + thirdcard)/11);
	
	
	firstfinal = firstcard + (twovthree * checkone * 10 ) + secondcard + thirdcard;
	secondfinal = firstcard + secondcard + (onevthree * checktwo * 10) + thirdcard;
	thirdfinal = firstcard + secondcard +thirdcard + (onevtwo * checkthree * 10);
	printf("%d %d %d", firstfinal/22, secondfinal/22, thirdfinal/22);
	scanf("%d");
	test = firstfinal/22 *firstfinal;
	firstfinal -= test;
	test = secondfinal/22 * secondfinal;
	secondfinal -=  test;
	test = thirdfinal/22 * thirdfinal;
	thirdfinal -=  test;
	printf("hi");
	scanf("%d");
	
	
	//still need to fix the final 
	total = firstfinal;
	//total = 1 - ()
	divisor = secondfinal / total;
	test = ((2+divisor) % (1+divisor));
	total = total - (total * test) + (secondfinal * test);
	divisor = thirdfinal / total;
	test = ((2+divisor) % (1+divisor));
	total = total - (total * test) + (thirdfinal * test);
	
	printf("\nBest total: %d", total);
	
	return 0;
}