#include <iostream>
using std::cin;
using std::cout;
#include <cmath> /* for sqrt */

/* prototype for quadratic function solver: */
double qf(double a, double b, double c, double& r1, double& r2);
/* NOTE: a,b,c represent the polynomial f(x) = ax^2 + bx + c;
 * The return value of qf is the discriminant D=b^2-4ac.
 * If D > 0, then the real roots of f(x) will be written to
 * r1 and r2.  If D == 0, r1 will have the sole real root.
 * If D < 0, then there are no real roots, and so r1,r2 have
 * no meaning.
 * */
/* TODO: briefly comment out the above prototype and then try to
 * compile so that you can observe the resulting error messages. */

int main()
{
	/* simple test for qf function: */
	double x1,x2; /* storage for roots */
	/* f(x) = 2x^2 + 3x - 5 */
	// double D = qf(2,3,-5,x1,8.0);
	/* NOTE: above would fail because 8.0 is not a piece
	 * of memory you can write to!  (Not an "lvalue") */
	/* TODO: make sure you understand why a constant like 8.0
	 * can not be used for either of the last 2 parameters.
	 * In fact, change one of them to a constant, then try to
	 * compile so you can see the error messages. */
	double D = qf(2,3,-5,x1,x2);
	/* We check on the return value to know which (if any)
	 * of the output parameters have meaningful values: */
	if (D > 0) {
		printf("roots are (%f,%f)\n",x1,x2);
	} else if (D == 0) {
		printf("double root at %f\n",x1);
	} else {
		printf("no real roots!\n");
	}
	return 0;
}

double qf(double a, double b, double c, double& r1, double& r2)
{
	double D = b*b - 4*a*c; /* discriminant */
	if (D >= 0) { /* at least one real root */
		r1 = (sqrt(D) - b)/(2*a);
		r2 = (-sqrt(D) - b)/(2*a);
		/* NOTE: we write to r2 even if D==0, but this is no big
		 * deal -- function still works as advertised in the comments
		 * above (under the prototype). */
	}
	return D;
	/* TODO: make sure this makes sense.  Could you have done it
	 * on your own? */
}

/* TODO: try to come up with function prototypes for the following tasks:
 * 1. A function that converts pounds to kilograms.
 * 2. A function that prints an n x m rectangle of '*' characters to stdout.
 * 3. A function that takes a string as input and outputs the number of
 *    vowels in the input.
 * 4. A function that takes a string as input and outputs the number of
 *    occurrences of each vowel (a,e,i,o,u) found in the input.
 * */
/* TODO: start reading l3.pdf for next time */
