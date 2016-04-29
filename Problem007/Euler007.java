//What is the 10 001st prime number?

//104743

public class Euler007 {
	
	public static void main(String[] args){
		long startTime = System.currentTimeMillis();
		System.out.println(calc());
		System.out.println((System.currentTimeMillis()-startTime)+"ms");
	}
	
	public static int calc(){
		int i = 2;
		int primeNum = 0;
		while(primeNum < 10001){
			if (isPrime(i))
				primeNum++;
			i++;
		}
		return i-1;
	}
	
	public static boolean isPrime(int seed){
		for (int i = 2; i < seed; i++){
			if (seed % i == 0) return false;
		}
		return true;
	}
	
}
