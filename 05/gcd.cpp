#include <iostream>
using std::cin;
using std::cout;

/* compute gcd of two integers given on stdin */
int main()
{
	int m,n;
	cin >> m >> n;
	/* compute largest candidate (min(m,n)) */
	int min = m;
	/* if our guess was wrong, fix it: */
	if (min > n) {
		min = n;
	}
	for (int d = min; d > 0; d--) {
		/* apply test; if it worked, report answer
		 * and quit. */
		if (m%d == 0 && n%d == 0) {
			/* then d is the gcd! */
			cout << d << "\n";
			break;
		}
	}
	/* TODO: try to rewrite the above with a while loop instead.
	 * NOTE: you can use the following trick to toggle between
	 * the two versions -- just switch the 0 to 1 and recompile
	 * to use the original version again. */
#if 0
	cout << "original version\n";
	/* (Move the for loop solution here...) */
#else
	cout << "while loop version\n";
	/* (Put your while loop solution here...) */
#endif
	return 0;
}

/* basic exercises on loops: */
/* TODO: write a loop that prints the sum of the first n odd cubes. */
/* TODO: sum the squares of all integers from 1..100.
 * I.e., compute 1+4+9+...+10000  (note that the sum has 100 terms) */

/* brute force examples */
/* TODO: write a brute force test for perfect cubes.  Check if
 * n = k^3 for some integer k. */
/* TODO: write a program that computes the least common multiple (lcm)
 * of two integers given as input. */
/* TODO: (this one is more involved...) print a list of all right triangles
 * such that (a) the sides are integer length; and (b) no side is longer
 * than 30 units.  You can "print" it just by printing the side lengths.
 * Try to avoid printing duplicates!   E.g., (3,4,5) is really the same
 * as (4,3,5)...  If you need a hint, maybe consider giving the sides in
 * increasing order by length.
 * */

/* misc. exercises; might help with invariants: */
/* TODO: write a program that reads (arbitrarily many) integers from
 * stdin and outputs the *second* smallest one.  NOTE: you don't need
 * to store many numbers (all at once, that is) to do this!  You'll
 * only need a few integer variables.  Think about invariants!
 * Perhaps write this in a new file. */
/* TODO: for an integer given as input, compute the largest power of
 * 2 that divides it.  Just report the exponent -- e.g., if input is
 * 40 == 2^3 * 5^1, then the answer should be 3 (the exponent of 2
 * in the prime factorization).  Note that this does NOT require you
 * to factor the integer! */

// vim:foldlevel=2
