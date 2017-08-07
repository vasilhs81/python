package euler;


public class Problem3 {
	public static long primeFactorsOpt(long numbers) {
		long n = numbers;
		long maxF=1;
		if(n % 2 == 0) {
		maxF=2;
		do {
			n/=2;
		}while (n % 2 == 0);
		}
		long m=(long)Math.sqrt(n);
		for (int i = 3; i <= n / i&&i<=m; i+=2) {
			if(n % i == 0) {
			if(i>maxF)maxF=i;
			do {
				n /= i; 
			}while (n % i == 0);
			
			}
		m=(long)Math.sqrt(n);
		}
		
		if (n > maxF)
			maxF=n;
		
		return maxF;
	}
	
	
	
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		System.out.print(primeFactorsOpt(600851475143L));
	}

}
