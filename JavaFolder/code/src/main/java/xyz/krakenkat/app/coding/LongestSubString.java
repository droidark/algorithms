/*
    LONGEST SUBSTRING
    
    Given a string s, implement a methodfor finding the length of the longest
    substring without repeating characters. String s can consist of English
    letters, numbers,symbols and spaces.

    Example 1
    Input: s = "abccbabb"
    Output: 3
    Explication: The answers is 3 which "abc" and "cba" length.

    Example 2
    Input: s = "abcbca2b"
    Output: 4
    Explication: The answer is 4 which is "bca2" length.
*/
package xyz.krakenkat.app.coding;

public class LongestSubString {
    
    public int getLongestSubString(String s) {
        int maxLength = 0, tmp = 1, start = 0;
       
       for (int i = 1; i < s.length(); i++) {
        for (int j = start; j < i; j++) {
            if (s.charAt(i) != s.charAt(j)) {
                tmp++;
            } else {
                start = i;
            }
        }
        maxLength = tmp > maxLength ? tmp : maxLength;
        tmp = 1;
       }
       return maxLength;
    }
}
