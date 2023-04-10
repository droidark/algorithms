/*
    DIVISIBLE SUM PAIR

    Given an array of integers and a positive integer k, determine the number of (i, j) pairs where i < j and ar[i] + ar[j] is divisible by k.

    Example
    ar = [1, 2, 3, 4, 5 ,6]
    k = 5

    Three pairs meet criteria: [1, 4], [2, 3] and [4, 6]
*/
package xyz.krakenkat.app.hackerrank;

public class DivisibleSumPairs {
    public int divisibleSumPairs(int n, int k, int[] ar) {
        int counter = 0;
        for(int i = 0; i < n; i++) {
            for(int j = 0; j < n; j++) {
                if(i < j && (ar[i] + ar[j]) % k == 0)
                    counter++;
            }
        }
        return counter;
    }
}