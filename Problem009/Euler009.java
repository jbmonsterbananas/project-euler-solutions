//There exists exactly one Pythagorean triplet for which a + b + c = 1000.
// Find the product abc.

//31875000

public class Euler009 {
	
	public static void main(String[] args){
		long startTime = System.currentTimeMillis();
		System.out.println(calc());
		System.out.println((System.currentTimeMillis()-startTime)+"ms");
	}
	
	public static boolean isTriple(int a, int b, int c){
		if ((a*a) + (b*b) == c*c) return true;
		return false;
	}
	
	public static int calc(){
		for (int a = 0; a < 1000; a++){
			for (int b = 0; b < 1000; b++){
				double c = Math.sqrt((a*a)+(b*b));
				if (c % 1 != 0) continue;
				if (isTriple(a,b,(int)c))
					if (a+b+c == 1000){
						if (a==0 || b==0 || c==0) continue;
						return a*b*(int)c;
					}
			}
		}
		return -1;
	}
	
}
