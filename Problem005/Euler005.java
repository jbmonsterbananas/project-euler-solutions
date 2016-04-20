//What is the smallest positive number that is evenly divisible by all of
// the numbers from 1 to 20?

//232792560

public class Euler005 {
	
	public static void main(String[] args){
		long startTime = System.currentTimeMillis();
		System.out.println(2*2*2*2*3*3*5*7*11*13*17*19);
		System.out.println((System.currentTimeMillis()-startTime)+"ms");
	}
	
}
// 2 - 2
// 3 - 3
// 4 - 2*2
// 5 - 5
// 6 - 2*3
// 7 - 7
// 8 - 2*2*2
// 9 - 3*3
//10 - 2*5
//11 - 11
//12 - 2*2*3
//13 - 13
//14 - 2*7
//15 - 3*5
//16 - 2*2*2*2
//17 - 17
//18 - 2*9
//19 - 19
//20 - 2*2*5