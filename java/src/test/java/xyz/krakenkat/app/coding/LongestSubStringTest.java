package xyz.krakenkat.app.coding;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

public class LongestSubStringTest {

    private final LongestSubString longestSubString = new LongestSubString();

    @Test
    @DisplayName("Should be 3")
    void testOne() {
        // Given
        String s = "abccbabb";

        // When
        int actual = longestSubString.getLongestSubString(s);

        // Then
        assertEquals(3, actual);
    }

    @Test
    @DisplayName("Should be 4")
    void testTwo() {
        // Given
        String s = "abcbac2b";

        // When
        int actual = longestSubString.getLongestSubString(s);

        // Then
        assertEquals(4, actual);
    }

    @Test
    @DisplayName("Should be 4")
    void testThree() {
        // Given
        String s = "aaabcda";

        // When
        int actual = longestSubString.getLongestSubString(s);

        // Then
        assertEquals(4, actual);
    }

    @Test
    @DisplayName("Should be 4")
    void testFour() {
        // Given
        String s = "abccdea";

        // When
        int actual = longestSubString.getLongestSubString(s);

        // Then
        assertEquals(4, actual);
    }

    @Test
    @DisplayName("Should be 5")
    void testFive() {
        // Given
        String s = "abcdeeabcfa2";

        // When
        int actual = longestSubString.getLongestSubString(s);

        // Then
        assertEquals(5, actual);
    }
}
