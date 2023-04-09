/*
BETWEEN TWO SETS

There will be two arrays of integers. Determine all integers that satisfy the following two conditions:

The elements of the first array are all factors of the integer being considered
The integer being considered is a factor of all elements of the second array
These numbers are referred to as being between the two arrays. Determine how many such numbers exist.

Example

a = [2, 6]
b = [24, 36]

There are two numbers between the arrays: 6 and 12

6%2=0; 6%6=0; 24%6=0 and 36%6=0 for the first value
12%2=0; 12%6=0; 24%12=0 and 36%12=0 for the second value. Return 2

*/
package xyz.krakenkat.app.hackerrank;

import java.util.List;

public class BetweenTwoSets {
    public int getTotalX(List<Integer> a, List<Integer> b) {
        int counter = 0;
        boolean factorOne = true;
        boolean factorTwo = true;
		
		for(int i = 1; i <= b.get(0); i++) {
            for(Integer j : a) {
                if(i % j != 0) {
                    factorOne = false;
                    break;
                } else {
                    factorOne = true;
                }
            }

            if(factorOne) {
                for(Integer j : b) {
                    if(j % i != 0) {
                        factorTwo = false;
                        break;
                    } else {
                        factorTwo = true;
                    }
                }
            }

            if(factorOne && factorTwo)
                counter++;
        }		
		return counter;
    }
}
