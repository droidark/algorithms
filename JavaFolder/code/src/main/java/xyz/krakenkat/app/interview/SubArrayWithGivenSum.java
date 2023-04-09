package xyz.krakenkat.app.interview;

/*
	FIND SUB ARRAY WITH GIVEN SUM

	Given an array arr[] of non-negative integers and an integer sum,
	find a subarray that adds to a given sum.
	
	Example 1:
  		Input: arr[] = {1, 4, 20, 3, 10, 5}, sum = 33
		Output: Sum found between indexes 2 and 4
		Explanation: Sum of elements between indices 2 and 4 is 20 + 3 + 10 = 33

	Example 2:
		Input: arr[] = {1, 4, 0, 0, 3, 10, 5}, sum = 7
		Output: Sum found between indexes 1 and 4
		Explanation: Sum of elements between indices 1 and 4 is 4 + 0 + 0 + 3 = 7

	Example 3:
		Input: arr[] = {1, 4}, sum = 0
		Output: No subarray found
		Explanation: There is no subarray with 0 sum

	- - - - - - - - - - -
	
	More references, please visit:
		https://www.geeksforgeeks.org/find-subarray-with-given-sum/
		https://www.youtube.com/watch?v=Ofl4KgFhLsM
*/


public class SubArrayWithGivenSum {

	public int[] getSubArrayWithGivenSum(int[] array, int num) {
		StringBuilder str = new StringBuilder();

		for(int i = 0; i < array.length; i++) {
			int sumVal = 0, count = i;
			while(count < array.length) {
				if (sumVal == num) { // First condition, when the sum is equals to the  number to look.
					break;
				} else if (sumVal > num) { // When sumVal is greater than the number to look.
					str = new StringBuilder(); // Clean the StringBuilder
					count--; // The count decrease to consider the exceed number
					break;
				}
				else {
					sumVal += array[count];
					str.append(count + " ");
				}
				count++;
			}
			if(sumVal == num) {
				break;	//	if num is found, the loop is broke.
			}
		}

		String[] strArray = str.toString().split(" ");
		
		return strArray.length > 1 
			? new int[] {Integer.parseInt(strArray[0]), Integer.parseInt(strArray[strArray.length - 1])}
			: new int[] {0};
	}
}
