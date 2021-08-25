package xyz.krakenkat.app.hackerrank;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.Arrays;
import java.util.List;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInfo;

public class SubArrayDivisionTest {

    private final SubArrayDivision subArrayDivision = new SubArrayDivision();

    @Test
    @DisplayName("Should be true")
    void testOne(TestInfo testInfo) {
        // Given
        List<Integer> s = Arrays.asList(1, 1, 1, 1, 1, 1);
        int d = 3;
        int m = 2;

        // When
        int actual = subArrayDivision.birthday(s, d, m);

        // Then
        assertEquals(0, actual);
    }

    @Test
    @DisplayName("Should be true")
    void testTwo(TestInfo testInfo) {
        // Given
        List<Integer> s = Arrays.asList(2, 2, 1, 3, 2);
        int d = 4;
        int m = 2;

        // When
        int actual = subArrayDivision.birthday(s, d, m);

        // Then
        assertEquals(2, actual);
    }
}
