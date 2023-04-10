package xyz.krakenkat.app.coding;

public class MoveZerosToEnd {
    public int[] move(int[] arr) {
        for(int i = 0; i < arr.length; i++) {
            if((i - 1) > -1 && arr[i -1] == 0 && arr[i] != 0) {
                arr[i - 1] = arr[i];
                arr[i] = 0;
                i-=2;
            }            
        }
        return arr;
    }
}
