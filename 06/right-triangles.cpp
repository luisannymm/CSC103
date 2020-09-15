#include <iostream>
using std::cin;
using std::cout;
#include <cstdio>

/* GOAL: read a single integer n and print all right
 * triangles with integer sides, and each side has
 * length <= n.  (we won't draw the triangles; we'll
 * just print the list of side lengths for now.)
 * E.g., if the upper bound was n=5, probably the only
 * one would be (3,4,5).  (Note: 3^2+4^2 = 5^2)
 * */
int main()
{
	int n; /* upper bound on side length. */
	cin >> n;
	/* IDEA: we will again use brute force... */
	/* We first need to generate a list of all the
	 * candidates.  We'll go through the side lengths,
	 * where 1 <= a <= b < c <= n
	 * (This will avoid showing permutations of what should
	 * be the same solution, and also reduces the amount of
	 * work for our computer...)
	 * */
	for (int a = 1; a <= n; a++) {
		for (int b = a; b <= n; b++) {
			for (int c = b+1; c <= n; c++) {
				/* now we just need to filter the list! */
				if (a*a + b*b == c*c)
					printf("(%i,%i,%i)\n",a,b,c);
			}
		}
	}
	/* TODO: modify this program (or write a new one) so that the
	 * input n describes an upper bound on the *perimeter* of the
	 * triangle instead of the side length. */
	return 0;
}

// vim:foldlevel=2
