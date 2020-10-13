#include <stdio.h>
#include <stdlib.h>
#include <vector>
using std::vector;
#include <time.h>

int poly_eval(const vector<int>& a, int x)
{
	int sum=0; /* storage for result */
	int xi = 1; /* store x^i */
	for (size_t i = 0; i < a.size(); i++) {
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

/* fill vector with random-ish 32 bit values. */
void randVec(vector<int>& V, size_t n)
{
	srand48(time(0));
	for (size_t i = 0; i < n; i++) {
		V.push_back(lrand48());
	}
}

int main()
{
	/* Now time for a speed test :D */
	vector<int> f;
	// randVec(f,1<<27);
	randVec(f,1<<24);
	int x = 519; /* test input */
	int y; /* f(x) */
	clock_t s,e; /* start + end times */
	double d; /* difference in seconds */

	s = clock();
	y = poly_eval(f,x);
	e = clock();
	d = (e-s)/((double)CLOCKS_PER_SEC);
	printf("Normal computed f(%i)=%i in %f sec.\n",x,y,d);

	s = clock();
	y = poly_eval2(f,x);
	e = clock();
	d = (e-s)/((double)CLOCKS_PER_SEC);
	printf("Horner computed f(%i)=%i in %f sec.\n",x,y,d);

	/* NOTE: on my computer (Sandybridge), the two versions perform quite
	 * similarly if optimization (-O2) is enabled.  YMMV.  Btw, if you want
	 * to see the differences in generated code between the optimized and
	 * not, I have included the assembly listings for both.  You can generate
	 * assembly listings like this with g++:
	 * $ g++ -O2 -S -fverbose-asm file.cpp
	 * */

	return 0;
}

// vim:foldlevel=2
