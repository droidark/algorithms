package xyz.krakenkat.app.hackerrank;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInfo;

public class BreakingTheRecordsTest {
    
    private final BreakingTheRecords breakingTheRecords = new BreakingTheRecords();

    @Test
    @DisplayName("Should be true")
    void testOne(TestInfo testInfo) {
        // Given
        int[] scores = {10, 5, 20, 20, 4, 5, 2, 25, 1};

        // When
        int[] result = breakingTheRecords.breakingRecords(scores);

        // Then
        assertArrayEquals(new int[] {2, 4}, result);
    }
}
