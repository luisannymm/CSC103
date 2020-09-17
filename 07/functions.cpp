#include <iostream>
using std::cout;
using std::cin;
#include <cstdio>

/* function to swap parameters! */
void swap(int& x, int& y)
{
	int t = x;
	x = y;
	y = t;
}
/* after the call, x should have y's value,
 * and y should have x's value.
 * TODO: make sure you understand every detail!  In fact,
 * perhaps delete the whole thing and try to write it from
 * scratch. */

/* TODO: write a function that has no return value (i.e., return
 * type is void), takes an integer input n, and prints n smiley
 * faces to stdout. */

/* TODO: write a function called "max" that takes 3 integer
 * parameters and returns an integer value which is the largest
 * of the 3 inputs. */

/* TODO: write a function that takes two integers (call them n,m)
 * and returns the largest power of m that evenly divides n.  E.g.,
 * if n=40 and m=2, the answer would be 3, since 40 = 2^3 * 5,
 * and 2 does not divide 5.
 * if n=90 and m=3, the answer would be 2, since 90 = 3^2 * 10,
 * and 3 does not divide 10.
 * if n=24 and m=10, the answer would be 0, since 10 does not divide 24
 * even once.
 * NOTE: There was a similar exercise earlier where m was always 2.
 * */

int main()
{
	int a=7,b=9;
	printf("(a,b) == (%i,%i)\n",a,b);
	swap(a,b);
	printf("(a,b) == (%i,%i)\n",a,b);
	/* TODO: write some test code for the new functions you wrote above. */
	return 0;
}

/* TODO: take a look at the new additions to ../whatstheoutput/ and make sure
 * you can predict the outputs of those programs. */

// vim:foldlevel=2
