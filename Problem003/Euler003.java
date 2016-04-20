//What is the largest prime factor of the number 600851475143 ?

//6857

public class Euler003 {
	public static void main(String[] args){
		long startTime = System.currentTimeMillis();
		long l = 600851475143L;
		System.out.println(getPrime(l));
		System.out.println((System.currentTimeMillis()-startTime)+"ms");
	}
	
	public static long getPrime(long seed){
		for (long i = 2; i < seed; i++){
			if (isFactor(seed,i) && isPrime(seed/i)) return seed/i;
		}
		return -1;
	}
	
	public static boolean isFactor(long number, long factor){
		if (number % factor == 0) return true;
		return false;
	}
	
	public static boolean isPrime(long seed){
		for (int i = 2; i < seed; i++){
			if (seed % i == 0) return false;
		}
		return true;
	}
	
}
