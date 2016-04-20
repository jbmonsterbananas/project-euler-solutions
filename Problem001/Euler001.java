//Find the sum of all the multiples of 3 or 5 below 1000.

//233168

public class Euler001 {
	
	public static void main(String[] args){
		long startTime = System.currentTimeMillis();
		System.out.println(calc(1000));
		System.out.println((System.currentTimeMillis()-startTime)+"ms");
	}
	
	public static int calc(int max){
		int i = 1;
		int sum = 0;
		while (i < max){
			if (i % 3 == 0 && i % 5 == 0) sum += i;
			else if (i % 3 == 0) sum += i;
			else if (i % 5 == 0) sum += i;
			i++;
		}
		return sum;
	}
	
}
