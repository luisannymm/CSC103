#include <iostream>
using std::cin;
using std::cout;
#include <vector>
using std::vector;

void reverse(vector<int>& V)
{
	size_t n = V.size();
	for (size_t i = 0; i < n/2; i++) {
		/* swap V[i] <--> V[n-1-i] */
		int temp = V[i];
		V[i] = V[n-1-i];
		V[n-1-i] = temp;
	}
}

bool subsetsum(vector<int> V, int t)
{
	/* warmup: just print space of possible solutions: */
	size_t n = V.size();
	for (size_t i = 0; i < n; i++) {
		for (size_t j = i+1; j < n; j++) {
			/* check: is i,j an answer? */
			if (V[i]+V[j] == t)
				return true;
		}
	}
	return false;
}

/* TODO: modify the above function so that in the case where
 * a solution is found, it also "returns" the pair of indexes
 * found to work.  (Use by reference params...) */

int main()
{
	/* test code */
	vector<int> V;
	int x;
	while (cin >> x) {
		V.push_back(x);
	}
	reverse(V);
	for (size_t i = 0; i < V.size(); i++) {
		cout << V[i] << " ";
	}
	cout << "\n";
	cout << "answer for 9 was " << subsetsum(V,9) << "\n";
	return 0;
}

/* TODO: write a function called "push_front(V,x)" for a vector, which
 * adds parameter x to index 0 of vector V by moving all the other values
 * to higher indexes.  (This should show you why inserting elements is only
 * efficient at the *end* of a vector.) */
/* TODO: there were a lot of exercises in ../09/reverse.cpp... please
 * revisit those if you haven't yet completed them all. */

// vim:foldlevel=2
