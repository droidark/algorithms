package xyz.krakenkat.app.coding;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

public class MoveZerosToEndTest {
    
    private final MoveZerosToEnd moveZerosToEnd = new MoveZerosToEnd();

    @Test
    @DisplayName("should be true")
    void testOne() {
        // Given
        int[] arr = {0, 1, 0, 3, 12};

        // When
        int[] actual = moveZerosToEnd.move(arr);

        // Then
        assertArrayEquals(new int[] {1, 3, 12, 0, 0}, actual);
    }

    @Test
    @DisplayName("should be true")
    void testTwo() {
        // Given
        int[] arr = {1, 4, 60, 2, 3, 5, 0, 34, 534, 0};

        // When
        int[] actual = moveZerosToEnd.move(arr);

        // Then
        assertArrayEquals(new int[] {1, 4, 60, 2, 3, 5, 34, 534, 0, 0}, actual);
    }

    @Test
    @DisplayName("should be true")
    void testThree() {
        // Given
        int[] arr = {0, 1, 4, 60, 2, 3};

        // When
        int[] actual = moveZerosToEnd.move(arr);

        // Then
        assertArrayEquals(new int[] {1, 4, 60, 2, 3, 0}, actual);
    }

    @Test
    @DisplayName("should be true")
    void testFour() {
        // Given
        int[] arr = {0, 0, 0, 0, 4};

        // When
        int[] actual = moveZerosToEnd.move(arr);
        
        // Then
        assertArrayEquals(new int[] {4, 0, 0, 0, 0}, actual);
    }

    @Test
    @DisplayName("should be true")
    void testFive() {
        // Given
        int[] arr = {10, 10, 10, 10, 0};

        // When
        int[] actual = moveZerosToEnd.move(arr);
        
        // Then
        assertArrayEquals(new int[] {10, 10, 10, 10, 0}, actual);
    }

    @Test
    @DisplayName("should be true")
    void testSix() {
        // Given
        int[] arr = {0, 0, 0};

        // When
        int[] actual = moveZerosToEnd.move(arr);
        
        // Then
        assertArrayEquals(new int[] {0, 0, 0}, actual);
    }
}
