//Find the largest palindrome made from the product of two 3-digit numbers.

//906609

public class Euler004 {
	
	public static void main(String[] args){
		long startTime = System.currentTimeMillis();
		System.out.println(calc());
		System.out.println((System.currentTimeMillis()-startTime)+"ms");
	}
	
	public static boolean isFactor(int seed, int factor){
		if (seed % factor == 0) return true;
		return false;
	}
	
	public static boolean isPalindrome(int n){
		String s = new Integer(n).toString();
		for (int i = 0; i < s.length(); i++){
			if (s.charAt(i) != s.charAt(s.length()-1-i)) return false;
		}
		return true;
	}
	
	public static int calc(){
		int big = 997799;
		int factor = 999;
		while (big > 10000){
			if (isFactor(big, factor)) return big;
			else {
				if (big/factor > factor) {
					factor = 999;
					do big--;
					while(!isPalindrome(big));
				}
				factor -= 2;
			}
		}
		return -1;
	}
	
}
