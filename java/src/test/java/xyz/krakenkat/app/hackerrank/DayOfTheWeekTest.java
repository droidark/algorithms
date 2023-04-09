package xyz.krakenkat.app.hackerrank;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInfo;

public class DayOfTheWeekTest {
    
    private final DayOfTheWeek dayOfTheWeek = new DayOfTheWeek();

    @Test
    @DisplayName("Should be true")
    void testOne(TestInfo testInfo) {
        // Given
        int year = 2021, month = 8, day = 20;
        
        // When
        String result = dayOfTheWeek.findDay(month, day, year);

        // Then
        assertEquals("FRIDAY", result);
    }
}
