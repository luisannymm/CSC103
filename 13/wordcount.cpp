#include <iostream>
using std::cin;
using std::cout;
#include <string>
using std::string;

/* our main program will just read all of stdin and print
 * the count of words at the end. */

int main()
{
	bool justreadws = true; /* keep track of state/token */
	/* NOTE: we use boolean here since there are only two states;
	 * in general you would want to use an int or better, an
	 * "enum" (give integer constants nice names). */
	char c; /* hold character from stdin */
	size_t count = 0;
	while (scanf("%c",&c) > 0) {
		/* move token around diagram according to c; whenever
		 * we traverse the highlighted arrow, increase count
		 * of words. */
		/* first take care of whitespace state: */
		if (justreadws) {
			if (c == ' ' || c == '\t' || c == '\n') {
				/* "self" arrow... nothing to do? */
			} else { /* green arrow! */
				/* move token: */
				justreadws = false;
				count++;
			}
		} else { /* non-ws state */
			if (c == ' ' || c == '\t' || c == '\n') {
				/* move token: */
				justreadws = true;
			} else {
				/* nothing to do... */
			}
		}
	}
	cout << count << "\n";
	return 0;
	/* NOTE: we use scanf above because cin will ignore whitespace when
	 * reading characters by default (I am sure you can convince it to
	 * do otherwise, but I have no patience...).  You can learn how to
	 * use scanf from its manual page: run the command "man scanf". */
	/* TODO: try to modify the above to also store a vector of all the
	 * words found.  (Hint: for this, you will want to fill out some of
	 * the branches above where it says "nothing to do"...) */
}

/* TODO: (this will likely be a little challenging...) Try to write
 * a program that reads C/C++ source and removes the comments.
 * Start by drawing a state transition diagram which will help you figure
 * out if the character you are reading is inside of a comment or not.
 * */

// vim:foldlevel=2
