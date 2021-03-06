/*
    SUBARRAY DIVISION

    Two children, Lily and Ron, want to share a chocolate bar. Each of the squares has an integer on it.

    Lily decides to share a contiguous segment of the bar selected such that:

    The length of the segment matches Ron's birth month, and,
    The sum of the integers on the squares is equal to his birth day.
    Determine how many ways she can divide the chocolate.

    Example:
    s = [2, 2, 1, 3, 2]
    d = 4
    m = 2

    Lily wants to find segments summing to Ron's birth day, d = 4 with a length equalling his birth month, m = 2. In this case, there are two segments meeting her criteria: [2, 2] and [1, 3].
*/

import java.util.Arrays;
import java.util.List;

public class SubArrayDivision {
    
    public static int birthday(List<Integer> s, int d, int m) {
        int endPointer = 0, counter = 0;

        for(int startPointer = 0; startPointer < s.size(); startPointer++) {
            endPointer = startPointer + m;
            if(endPointer <= s.size()) {
                int sum = 0;
                for(int i = startPointer; i < endPointer; i++) {
                    sum += s.get(i);
                }
                if(sum == d)
                    counter++;
            }
        }
        return counter;
    }
    
    public static void main(String[] args) {

        //List<Integer> s = Arrays.asList(1, 2, 1, 3, 2);
        List<Integer> s = Arrays.asList(1, 1, 1, 1, 1, 1);
        int d = 3;
        int m = 2;

        System.out.println(birthday(s, d, m));

    }
}