package xyz.krakenkat.app.interview;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

public class SubArrayWithGivenSumTest {

    private final SubArrayWithGivenSum subArrayWithGivenSum = new SubArrayWithGivenSum();

    @Test
    @DisplayName("Should return [2, 5]")
    void testOne() {
        // Given
        int[] arr = {10, 3, 5, 8, 6, 12, 20, 15, 31};
        int num = 31;

        // When
        int[] actual = subArrayWithGivenSum.getSubArrayWithGivenSum(arr, num);

        // Then
        assertArrayEquals(new int[] {2, 5}, actual);
    }

    @Test
    @DisplayName("Should return [1, 4]")
    void testTwo() {
        // Given
        int[] arr = {1, 4, 0, 0, 3, 10, 5};
        int num = 7;

        // When
        int[] actual = subArrayWithGivenSum.getSubArrayWithGivenSum(arr, num);

        // Then
        assertArrayEquals(new int[] {1, 4}, actual);
    }

    @Test
    @DisplayName("Should return [0]")
    void testThree() {
        // Given
        int[] arr = {1, 4};
        int num = 0;

        // When
        int[] actual = subArrayWithGivenSum.getSubArrayWithGivenSum(arr, num);

        // Then
        assertArrayEquals(new int[] {0}, actual);
    }
}
