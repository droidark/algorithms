package xyz.krakenkat.app.hackerrank;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInfo;

public class DivisibleSumPairsTest {
    
    private final DivisibleSumPairs divisibleSumPairs = new DivisibleSumPairs();

    @Test
    @DisplayName("Should be true")
    void testOne(TestInfo testInfo) {
        // Given
        int[] ar = {1, 2, 3, 4, 5, 6};
        int n = 6;
        int k = 5;

        // When
        int actual = divisibleSumPairs.divisibleSumPairs(n, k, ar);

        // Then
        assertEquals(3, actual);
    }

    @Test
    @DisplayName("Should be true")
    void testTwo(TestInfo testInfo) {
        // Given
        int[] ar = {1, 3, 2, 6, 1, 2};
        int n = 6;
        int k = 3;

        // When
        int actual = divisibleSumPairs.divisibleSumPairs(n, k, ar);

        // Then
        assertEquals(5, actual);
    }
}
