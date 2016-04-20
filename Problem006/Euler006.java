//Find the difference between the sum of the squares of the first one
// hundred natural numbers and the square of the sum.

//25164150

public class Euler006 {
	
	public static void main(String[] args){
		long startTime = System.currentTimeMillis();
		int sum = 0;
		int sum2 = 0;
		for (int i = 1; i <= 100; i++){
			sum += i;
			sum2 += i*i;
		}
		System.out.println((sum*sum)-sum2);
		System.out.println((System.currentTimeMillis()-startTime)+"ms");
	}
	
}
