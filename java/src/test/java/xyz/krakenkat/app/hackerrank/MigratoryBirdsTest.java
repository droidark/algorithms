package xyz.krakenkat.app.hackerrank;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.List;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

public class MigratoryBirdsTest {
    
    private final MigratoryBirds migratoryBirds = new MigratoryBirds();

    @Test
    @DisplayName("Should return 1")
    void testOne() {
        // Given
        List<Integer> arr = List.of(1, 1, 2, 2, 3);

        // When
        int actual = migratoryBirds.getMigratoryBirds(arr);

        // Then
        assertEquals(1, actual);
    }

    @Test
    @DisplayName("Should return 4")
    void testTwo() {
        // Given
        List<Integer> arr = List.of(1, 4, 4, 4, 5, 3);

        // When
        int actual = migratoryBirds.getMigratoryBirds(arr);

        // Then
        assertEquals(4, actual);
    }

    @Test
    @DisplayName("Should return 3")
    void testThree() {
        // Given
        List<Integer> arr = List.of(1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4);

        // When
        int actual = migratoryBirds.getMigratoryBirds(arr);

        // Then
        assertEquals(3, actual);
    }
}
