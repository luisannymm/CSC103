/* more about *datatypes*. */

#include <iostream>
using std::cout;
using std::cin;
#include <string>
using std::string;

int main()
{
	/* each variable you declare must have a datatype!  The
	 * datatype is an annotation that describes what kind of
	 * value will be in the variable. Here are some common
	 * ones: */
	int i = 9; /* stores integer data in the range [INT_MIN,INT_MAX].
	              INT_MIN is usually around -2^{31} and INT_MAX is
			      around 2^31-1. */
	char c = 'a'; /* stores a SINGLE character, like 'a' or 'b'. */
	double d = 0.3; /* stores floating point values */
	bool b = true; /* stores true/false values. */

	/* note that variables of different types might require different
	 * amounts of space.  you can find out how much is required using
	 * the 'sizeof()' operator: */
	cout << "int requires " << sizeof(int) << " bytes.\n";
	cout << "char requires " << sizeof(char) << " bytes.\n";
	cout << "double requires " << sizeof(double) << " bytes.\n";
	cout << "bool requires " << sizeof(bool) << " bytes.\n";

	/* what happens when you make an assignment between different
	 * types?  It depends; sometimes an automatic conversion happens,
	 * other times compilation fails. */
	i = c; /* this will give i the ascii value of 'a' */
	cout << "i is now " << i << "\n";
	#if 0
	// this won't work (doesn't really make sense even)
	string s = "hello class :D :D :D";
	i = s;
	#endif
	/* NOTE: you can use the preprocessor (#if ... #endif) to comment out
	 * large blocks of code. */

	/* Some remarks on floating point: for one, be careful with
	 * rounding errors! */
	double f = 0.1;
	if (f + f + f == d) {
		cout << "3f == d\n";
	} else {
		cout << "they weren't equal???\n";
	}
	/* yikes!  The issue: floating point numbers are stored in a type
	 * of scientific notation with finite precision.  Rounding can cause
	 * strange phenomena like the above.  Advice: only use floating point
	 * when it is really necessary. */

	/* You can also run into other surprises, like situations
	 * where basic algebraic identities fail to hold. E.g., if
	 * d+f = e+f, then... d == e.  Yet even this simple identity
	 * could fail with floating point.  TODO: try to find an example
	 * violating the law above.  That is, declare three doubles,
	 * d,e,f, and give them values such that d != e, and yet
	 * the sum of d+f is equal to e+f. */

	/* What about expressions with different types?
	 * When mixing floating point and integer, the result is
	 * floating point: */
	cout << "i+d == " << i+d << "\n";

	/* You can also form expressions that explicitly have a
	 * different type (this is called typecasting). */
	cout << "c == " << c << "\n";
	cout << "c == " << (int)c << "\n";

	/* Integer division perhaps deserves special attention: */
	int x = 7;
	int y = 3;
	cout << "7/3 == " << x/y << "\n";
	cout << "7/3 == " << (double)x/y << "\n";

	/* Another "gotcha" worth pointing out: integers as booleans. */
	/* NOTE: integer values can be used as booleans using the following
	 * convention: 0 means false, and ANYTHING ELSE means true. */
	if (23) {
		cout << "I guess 23 is true\n";
	}
	/* DANGER: if you use assignment in place of equality, bad things
	 * might happen: */
	if (x == 23) {
		cout << "x was 23 I guess.\n";
	} else {
		cout << "x was not 23.\n";
	}
	// y = (x = 23);
	y = (x == 23);  /* the boolean (x==23) will be converted to an int */
	cout << "y == " << y << "\n";

	return 0;
}

/* NOTE: Here is the if-statement's general form:
 * if (<boolean expression>) {
 *     // arbitrary statements...
 * } else if (<boolean expression>) {
 *     // arbitrary statements...
 * } else {
 *     // arbitrary statements...
 * }
 * */
/* and there are at least the following boolean operators:
 * ==
 * <
 * >
 * <=
 * >=
 * !=
 * */

/* TODO: write a small program that reads 3 integers (from stdin, using
 * cin), and prints the *average* of the 3 to stdout (using cout).
 * TODO: do the same for 5 integers, but ONLY USE TWO VARIABLES! */
/* TODO: try to use the Makefile I've provided.  Just run the command
 * "make" and it will run g++ for you with some recommended flags.
 * In particular, it will enable lots of warnings.
 * Advice: you should pretty much always compile with the flag -Wall.
 * From here out, I will usually give you makefiles to facilitate.
 * (BTW, the makefile will produce an executable with a similar name
 * to the cpp file.)
 * */

// vim:foldlevel=2
