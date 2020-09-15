#include <iostream>
using std::cin;
using std::cout;

/* Exercise: print a triangle of *'s having n rows.  E.g. if n==4: */
// *
// * *
// * * *
// * * * *

int main()
{
	size_t n; /* for the number of rows. */
	cin >> n;
	/* NOTE: size_t is an *unsigned* integer type that is
	 * as large as a machine register (usually 64 bits).
	 * NOTE: "unsigned" means you can only store non-negative
	 * numbers (0,1,2,...).  For most computers you will be
	 * programming, registers are 64 bits, and so the range of
	 * values for size_t is 0..2^64-1 */
	for (size_t i = 0; i < n; i++) {
		/* print a row of i+1 stars */
		for (size_t j = 0; j <= i; j++) {
			cout << "* ";
		}
		cout << "\n";
	}
	cout << "\n";
	/* what about the same thing, but reflected over the "y-axis"? */
	for (size_t i = 0; i < n; i--) {
		/* print a row of n-i spaces followed by i *'s */
		/* TODO: figure out the rest... */
	}
	return 0;
}

/* TODO: make yet another version that prints a "hollow" triangle
 * (see the related exercise with rectangles from a few lectures
 * back). */

// vim:foldlevel=2
