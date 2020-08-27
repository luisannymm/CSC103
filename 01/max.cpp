#include <iostream>
using std::cin;
using std::cout;
/* NOTE: the above let's us use cin/cout.
 * We will elaborate next time... */

/* main defines the "starting point" of the program */
int main()
{
	/* variables: storage for ... whatever.  In our case,
	 * we want to store numbers. */
	int green; /* this makes a new "note" with the name "green" */
	/* NOTE: conceptually, we want "green" to always contain
	 * the largest number we've heard so far. */
	/* how to write on the paper? */
	green = 999; /* "assign" 999 to variable "green" */
	// <-----   think of the data as "flowing" right to left.
	int blue = 777;

	/* how to "listen" for new numbers? */
	while (cin >> blue) {
		/* "listen" for a number; write it on "blue" */
		/* now compare contents of green with blue;
		 * if blue is bigger, copy it to green. */
		if (blue > green) {
			/* then copy blue to green */
			green = blue;
		}
	}
	/* how to announce our answer? */
	cout << "The largest number was " << green << "\n";
	return 0;
}

/* TODO: Get started on the reading.  In particular, the first
 * lecture from Prof Li, and my first lecture (l1.pdf).  You
 * can find links on the reading schedule. */
/* TODO: Try to get the virtual machine running on your
 * computer, and then try out the tutorial on compiling:
 * https://www-cs.ccny.cuny.edu/~wes/CSC103/commandline.html
 * */
/* TODO: This program doesn't work on all inputs (see what
 * happens when only a few small numbers are given as input).
 * See if you can fix it so it always works!  */
/* TODO: introduce some errors and observe the compiler
 * messages that result.  In particular, maybe try these:
 * 1. Try to assign to a constant, e.g., "999 = blue;"
 * 2. Remove the quotes surround the text "The largest..."
 * 3. Use "<<" for cin, or ">>" for cout.  This can produce
 *    a quite nasty message!
 * */
/* Reminder: if you compiled simply with "g++ max.cpp",
 * then you can run your program with some numbers as
 * input like this:
 * $ echo 23 77 28 191 273 | ./a.out
 * You can also just run it with "./a.out" and type the numbers
 * in.  Then press ctrl+d when you are done entering numbers.
 * */

// vim:foldlevel=3
