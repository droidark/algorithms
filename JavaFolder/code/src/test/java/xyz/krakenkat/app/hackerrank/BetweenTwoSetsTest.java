package xyz.krakenkat.app.hackerrank;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.Arrays;
import java.util.List;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInfo;

public class BetweenTwoSetsTest {

    private final BetweenTwoSets betweenTwoSets = new BetweenTwoSets();
    
    @Test
    @DisplayName("Should be true")
    void testOne(TestInfo testInfo) {
        // Given
        List<Integer> a = Arrays.asList(2, 4);
        List<Integer> b = Arrays.asList(16, 32, 96);

        // When
        int result = betweenTwoSets.getTotalX(a, b);

        // Then
        assertEquals(3, result);
    }    
}
