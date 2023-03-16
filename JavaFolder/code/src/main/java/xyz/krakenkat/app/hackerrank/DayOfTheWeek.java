package xyz.krakenkat.app.hackerrank;
import java.time.LocalDate;

public class DayOfTheWeek {
    public String findDay(int month, int day, int year) {
        LocalDate today = LocalDate.of(year, month, day);
        return today.getDayOfWeek().toString();
    }
}