package xyz.krakenkat.app.coding;

public class TicTacToe {
    public byte[][] board;

    public TicTacToe() {
        this.board = new byte[3][3];
    }

    public void printBoard() {
        for(int i = 0; i < this.board.length; i++) {
            for(int j = 0; j < this.board.length; i++) {
                System.out.println();
            }
        }
    }
}
