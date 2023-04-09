/*
    MIGRATORY BIRDS

    Given an array of bird sightings where every element represents a bird type id,
    determine the id of the most frequently sighted type. If more than 1 type has
    been spotted that maximum amount, return the smallest of their ids.

    Example
        arr = [1, 1, 2, 2, 3]
        There are two each of types 1 and 2, and one sighting of type 3.
        Pick the lower of the two types seen twice: type 1.

    Function Description
        Complete the migratoryBirds function in the editor below.
        getMigratoryBirds has the following parameter(s):
            int arr[n]: the types of birds sighted

    Returns
        int: the lowest type id of the most frequently sighted birds

    Input Format
        The first line contains an integer, n, the size of arr.
        The second line describes arr as n space-separated integers,
        each a type number of the bird sighted.

    Constraints
        5 <= n <= 2 x 10^5
        It is guaranteed that each type is 1, 2, 3, 4, or 5.
*/
package xyz.krakenkat.app.hackerrank;

import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class MigratoryBirds {
    public int getMigratoryBirds(List<Integer> arr) {
        
        Map<Integer, Integer> birds = new TreeMap<>();
        
        for (int i = 0; i < arr.size(); i++) {
            if (!birds.containsKey(arr.get(i))) {
                birds.put(arr.get(i), 1);
            } else {
                birds.put(arr.get(i), (birds.get(arr.get(i)) + 1));
            }
        }

        int maxKey = 1, maxValue = 1;
        for (Map.Entry<Integer, Integer> entry : birds.entrySet()) {
            if (entry.getValue() > maxValue) {
                maxKey = entry.getKey();
                maxValue = entry.getValue();                
            }
        }
        return maxKey;
    }
}
