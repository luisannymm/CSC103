#include <iostream>
using std::cin;
using std::cout;
#include <cstdio>

int main()
{
	/* IDEA: print by rows. */
	int n,m;
	cin >> n >> m;
	for (int i = 0; i < n; i++) {
		/* body should print a single row */
		for (int j = 0; j < m; j++) {
			cout << "* ";
			// printf("(%i,%i) ",i,j);
		}
		cout << "\n";
	}
	/* NOTE: i++ is the same as i = i+1; */
	return 0;
}

/* TODO: change this so you get a "hollow" rectangle.  E.g. if n==4
 * and m==5, you would have this: */
// * * * * *
// *       *
// *       *
// * * * * *

// vim:foldlevel=2
