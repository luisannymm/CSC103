#include <iostream>
using std::cin;
using std::cout;

int main()
{
	int green,blue,pink;
	/* green will hold the sum of all integers so far;
	 * blue will be used to hold new values;
	 * pink is temporary storage for sums.
	 * NOTE: generally it would be a good idea to give the variables
	 * names that reflect their meaning. */
	
	/* step 1: listen for number; write to green */
	cin >> green;
	while (cin >> blue) { /* step 2: write next number on blue */
		/* step 3: add green and blue; store in pink */
		pink = green + blue;
		/* step 4: copy pink to green */
		green = pink;
	} /* step 5: go back to step 2 */
	/* NOTE: we don't really need the pink note; the following
	 * is fine in C/C++:
	 * green = green + blue;
	 * green += blue; // this is the same as the above!
	 * */

	/* step 6: report answer (stored on green note) */
	cout << "sum of all numbers was " << green << "\n";
	return 0;
}

/* TODO: our program is still potentially wrong on one very special case.
 * Consider the following input/output from running it on my computer:
 * $ echo "" | ./sum
    sum of all numbers was -949636480
 * Do you see what's wrong?  A more sensible answer for the sum of no
 * numbers is probably 0.  See if you can use the "fold" pattern outlined
 * in the notes to make a more elegant -- and more correct -- solution.
 * */
/* TODO: if it isn't totally obvious how to do so, write a program
 * that computes the product of all numbers given (on stdin).  (Maybe
 * start a new file called "product.cpp" for this.)  */
/* TODO: given an integer n, find exponent of the largest power of two that
 * divides n.  Example: if n = r*8 with r odd, then you should output 3
 * since 8 = 2^3.  (You are just recovering the exponent of the 2 in the
 * number's factorization into primes.)
 * (IDEA: keep on dividing n by two until we can't,
 * and keep track of how many times it worked.) */
/* TODO: try the exercises at the end of l1.pdf, and start reading l2.pdf,
 * as well as lectures 5-8 from Prof. Li. */
/* TODO: I left you with a makefile this time.  Instead of running g++
 * manually, just run the command "make" and it will run g++ with some
 * nice flags for you.  (NOTE: binary will be named "sum" and not "a.out"
 * in this case.)
 * */

#if 0
NOTE: here are some ways you can test out the program:

Type in numbers manually:
+[04]$ ./sum
3
7
5
10
Sum was 25
(Hit ctrl+d to end the input.)

Use the `echo` command:
+[04]$ echo 3 7 5 10
3 7 5 10
+[04]$ echo 3 7 5 10 | ./sum
Sum was 25

`echo` a range of numbers:
+[04]$ echo {1..10}
1 2 3 4 5 6 7 8 9 10
+[04]$ echo {1..10} | ./sum
Sum was 55

Make a test file:
+[04]$ echo {1..10} > numbers
+[04]$ cat numbers
1 2 3 4 5 6 7 8 9 10
+[04]$ ./sum < numbers
Sum was 55

TODO: try to understand the above shell commands.
#endif

// vim:foldlevel=2
