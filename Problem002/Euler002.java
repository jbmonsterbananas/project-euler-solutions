//By considering the terms in the Fibonacci sequence whose values do not exceed
//four million, find the sum of the even-valued terms.

//4613732

import java.util.ArrayList;

public class Euler002 {
	
	public static void main(String[] args){
		long startTime = System.currentTimeMillis();
		System.out.println(calc(1,2));
		System.out.println((System.currentTimeMillis()-startTime)+"ms");
	}
	
	public static int calc(int one, int two){
		int sum = 0;
		ArrayList<Integer> fibonacci = new ArrayList<Integer>();
		fibonacci.add(one);
		while (two <= 4000000){
			fibonacci.add(two);
			int temp = one;
			one = two;
			two = temp + two;
		}
		for (int i : fibonacci){
			if (i % 2 == 0){
				sum += i;
			}
		}
		return sum;
	}
	
}
