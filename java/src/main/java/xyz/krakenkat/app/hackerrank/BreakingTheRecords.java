/*
    BREAKING THE RECORDS

    Maria plays college basketball and wants to go pro. Each season she maintains a record of her play.
    She tabulates the number of times she breaks her season record for most points and least points in a game. Points scored in the first game establish her record for the season, and she begins counting from there.

    For example, assume her scores for the season are represented in the array scores=[12, 24, 10, 24]. Scores are in the same order as the games played. She would tabulate her results as follows:

    GAME    SCORE   MINUMUM MAXIMUN MIN MAX
     0       12        12      12    0   0
     1       24        12      24    0   1
     2       10        10      24    1   1
     3       24        10      24    1   1
    
    Given the scores for a season, find and print the number of times Maria breaks her records for most and least points scored during the season.
*/
package xyz.krakenkat.app.hackerrank;

public class BreakingTheRecords {
    public int[] breakingRecords(int[] scores) {
        int values[] = {0, 0};
        int min = scores[0], max = scores[0];
        for(int i = 1; i < scores.length; i++) {
            if(scores[i] < min) {
                values[1]++;
                min = scores[i];
            }
            if(scores[i] > max) {
                values[0]++;
                max = scores[i];
            }
        }
        return values;
    }
}
