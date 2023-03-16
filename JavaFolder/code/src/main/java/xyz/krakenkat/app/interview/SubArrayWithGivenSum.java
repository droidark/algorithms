package xyz.krakenkat.app.interview;

public class SubArrayWithGivenSum {

	public static void main(String[] args) {

		test(new int[] {
				10,3,5,8,6,12,20,15,31
		}, 31);
		
	}

	
	public static void test(int[] array, int num) {
		StringBuilder str= new StringBuilder();
		for(int i=0; i < array.length; i++) {
			int sumVal=0;
			int count=i;
			while(count<array.length) {
				if(sumVal == num) { //primera condicion cuando la suma sea igual al numero a bucar
					break;
				}
				else if(sumVal>num) { // cuando sobrepase el sumVal al n�mero a buscar 
					str= new StringBuilder(); // se borra el stringbuilder 
					count--; //se retorno el indice para tomar en cuenta el n�mero que sobrepaso
					break;
				}
				else {
					sumVal+=array[count];
					str.append(count+" ");
				}
				count++;
			}
			if(sumVal==num) {
				break;   //si encuentra la suma entonces rompe el ciclo for 
			}
		}
		
		String[] strArray= str.toString().split(" ");
		
		System.out.println("["+strArray[0]+","+strArray[strArray.length-1]+"]");	
	}
	
}
