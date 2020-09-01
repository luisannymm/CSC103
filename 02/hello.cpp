/* NOTE: #include basically copy+pastes the contents of a file
 * into your program, right where the #include line is! */
#include <iostream>
/* (if you want to see where iostream is, look in
 * /usr/include/c++/9.3/...) */
using std::cout;
/* NOTE: some variables have a first name and a last name!
 * The first name is "cout" and the last name is "std".
 * To call a variable by just its first name, use a 'using'
 * statement, like above.  This feature is called a "namespace"
 * in case you want to do some independent research.
 * */

/* NOTE: we also need to declare a main() function, which
 * serves as the offical "starting point" for the program. */
int main()
{
	/* NOTE: quotes are necessary!  By default, all the names you
	 * type in a program refer to *variables* and not literal
	 * expressions.  */
	cout << "hello class :D\n";
	/* NOTE: the semicolon is like punctuation in written language;
	 * Think of it like the full stop ('.') in English.  You use it
	 * to delimit one statement from another. */
	/* TODO: remove the semicolon, try to compile, take note of the error
	 * message that will result. */
	return 0;
	/* NOTE: the return 0 above is to communicate an exit
	 * code back to the program that started our program.
	 * That return statement also has the effect of ending our
	 * program.
	 * NOTE: the shell uses the exit code as an indicator
	 * of whether or not this program "worked".  0 means
	 * "it worked", and anything else means "nope".
	 * */
	/* TODO: see for yourself: test out the following shell command
	 * using different return codes:
	 * $ ./a.out && echo "it worked"
	 * You'll notice that "it worked" is only printed when you return 0.
	 * */
}

/* TODO: follow the tutorial on "building on the command line" from our
 * homepage.  Then just spend some time experimenting and see what you
 * can learn.  */

// vim:foldlevel=2
