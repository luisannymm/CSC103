#include <iostream>
using std::cin;
using std::cout;
#include <vector>
using std::vector;

int poly_eval(const vector<int>& a, int x)
{
	int sum=0; /* storage for result */
	int xi = 1; /* store x^i */
	for (size_t i = 0; i < a.size(); i++) {
		// conceptually, want sum += a[i]*x^i;
		// could use math library: sum += a[i]*pow(x,i);
		/* using pow seems wasteful: easy to compute x^i if
		 * you already know x^(i-1).  Let's avoid recomputing
		 * pow(x,i) from scratch! */
		sum += a[i]*xi;
		xi *= x;
		/* NOTE: each iteration of the loop performs 2 mutliplications.
		 * Multiplications are more expensive (CPU-wise) than addition
		 * (on my computer ~4-7 clock cycles vs 1/3 of a cycle!)
		 * Question: can we do this with fewer multiplications? */
	}
	return sum;
}

/* NOTE: a[i] are the coefficients of the polynomial; x is the
 * point where you want to evaluate.
 * NOTE: the polynomial represented by a is:
 * f(x) = a[0] + a[1]*x + ... + a[n]*x^n
 * (where n = a.size()-1)
 * */
int poly_eval2(const vector<int>& a, int x)
{
	int result=0;
	for (size_t i = a.size()-1; i != (size_t)(-1); i--) {
		/* multiply current partial result by x, then add a[i] */
		result = result*x + a[i];
	}
	return result;
}

/* TODO: maybe try writing the above functions from scratch to
 * make sure you can do it yourself. */

int main()
{
	/* test code: */
	vector<int> f = {1,2,3,4};
	printf("f(2) == %i\n",poly_eval(f,2));
	printf("f(2) == %i\n",poly_eval2(f,2));
	return 0;
}

// vim:foldlevel=2
