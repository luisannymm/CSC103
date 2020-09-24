#include <iostream>
using std::cin;
using std::cout;
#include <vector>
using std::vector;
#include <string>
using std::string;

/* read lines from stdin; print them out in reverse order. */
int main()
{
	string line;
	vector<string> V;
	while (getline(cin,line)) {
		V.push_back(line);
	}
	/* at this point, we've read all of stdin.
	 * now print back out in reverse.  NOTE: you can
	 * get the number of elements in a vector V from
	 * the function V.size() */
	for (size_t i = V.size()-1; i != (size_t)-1; i--) {
		cout << V[i] << "\n";
	}
	return 0;
}

/* TODO: if you haven't already, read at least the first half or so of l3.pdf
 * (up until the section on arrays.)  Also read Prof. Li's notes, of course. */
/* TODO: experience anew the magic of today's lecture: change the
 * condition in the for loop to be "i>=0", and try to debug using
 * gdb.  Reminder of the steps:
 * 0. compile with "make -B debug"
 * 1. save an input file for convenience, e.g. via this command:
 *    $ echo -e "aaa\nbbb\nccc" > /tmp/inputlines
 * 2. start debugging your program with gdb: run "gdb ./reverse"
 * 3. now from within gdb, run the command "tui enable" so you can
 *    see your code as you debug
 * 4. have gdb run your program: enter "run < /tmp/inputlines" into gdb
 * 5. you will see something about a segmentation fault.  Time to figure
 *    out where/how that happened.
 * 6. use the gdb command "bt" (for a backtrace).  It will show you all
 *    the function calls that were happening when your program crashed.
 * 7. Find the thing you wrote (the main function).  There will be a
 *    number next to it to the left.  In my case it was 4.
 * 8. Run the gdb command "frame 4" (if yours was also 4, which is likely)
 * 9. Now you can see your main program, and the line where things went
 *    wrong will be highlighted.  You can now look at variable contents.
 *    Type, for example, "print i" to see what was in the variable i.
 * */
/* TODO: write a function that takes a vector (say of integers) and searches
 * for a particular value x, returning true if and only if x is found. */
/* TODO: write a function that takes a vector of integers, and returns a
 * new vector of integers which contains only the odd integers. */
/* TODO: write a function that takes a vector V of integers which
 * is *sorted*, and returns a vector of the unique integers from V.
 * E.g., if V = {1,2,2,3,3,3,4}, then the result should
 * be {1,2,3,4}. */

/* NOTE: the exercises below might be more challenging. */

/* TODO: Try to do the prior exercise (removing duplicates in a sorted
 * vector) in a different way: modify the input vector *in-place*: that
 * is, have your function return void, and don't allocate any new vectors
 * in the function; just modify the vector that is given to the function
 * directly.
 * NOTE: to remove elements from the end, you can of course use pop_back(),
 * but another way is the "resize(n)" function, which will set the size to
 * be exactly n, removing the elements V[n],V[n+1],... if the original size
 * exceeded n.
 * */
/* TODO: write a *binary search* on a sorted vector.  The idea is to
 * kind of emulate the process you use to find a particular page in a book:
 * 1. open the book to some page in the middle.
 * 2. if the page number was too high, open to the middle of the pages to the
 *    left; if it was too low, open to the middle of the pages to the right
 * 3. continue as above until you found the right page.
 * */
/* TODO: write a function that takes a vector and places the elements
 * in sorted order.  There is a solution in l3.pdf, but you should try to
 * come up with something on your own first if possible. */

// vim:foldlevel=2
