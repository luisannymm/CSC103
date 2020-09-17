#include <iostream>
using std::cin;
using std::cout;

int main(void)
{
	/* read integers; echo them back out, one per line. */
	int n;
	cin >> n;
	while (cin.good()) {
		/* NOTE: the good() function returns true if the read
		 * (the previous cin statement) "worked".  It gives
		 * you false if you hit the end of the file, or
		 * encountered any other error. */
		cout << "n == " << n << "\n";
		cin >> n;
	}
	return 0;
}

/* TODO: experiment with the following ways to give this program input
 * from the shell:
 * 1. Run it, type numbers separated by spaces or new lines, and then press
 *    ctrl+d to end the input.  (Remember if in the virtual machine, you should
 *    use the left control key, as the right one is the "host key" by default.)
 * 2. echo stuff into your program:
 *    $ echo 2 3 8 {1..10} 17 | ./read-stdin
 * 3. Store numbers in a file, and give the file contents as input:
 *    $ edit /tmp/numbers
 *    [type in some numbers and save the file...]
 *    $ ./read-stdin < /tmp/numbers
 * */

// vim:foldlevel=2
