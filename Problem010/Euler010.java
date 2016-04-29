//Find the sum of all primes below two million.

//142913828922

public class Euler010 {
	
	public static void main(String[] args){
		long startTime = System.currentTimeMillis();
		System.out.println(calc());
		System.out.println((System.currentTimeMillis()-startTime)+"ms");
	}
	
	public static boolean isPrime(long seed){
		if (seed <= 1) return false;
		if (seed == 2) return true;
		for (long i = 2; i*i <= seed; i++){
			if (seed % i == 0) return false;
		}
		return true;
	}
	
	public static long calc(){
		long sum = 0;
		for (int i = 0; i < 2000000; i++){
			if (isPrime(i)){
				sum += i;
			}
		}
		return sum;
	}
	
}
