package euler;

import java.util.ArrayList;
import java.util.TreeSet;

import utils.CAN;
import utils.CombinationGenerator;
public class Problem243 extends utils.CAN{

	
	//Helper class with no important role...
	//it helps to find all the reducible fractions for
	//a given denominator
	
	static class Denomimator<E extends java.lang.Number>{
		final java.lang.Number value;
		final TreeSet<java.lang.Number> factors;
		
		public void initFactors(long v) {
			
			 
			 while (v% 2 == 0) {
				factors.add(2L);
				v/=2;
			}
			for (int i = 3; i <= v / i; i+=2) {
				while (v % i == 0) {
					factors.add((long)i);
					v /= i;
				}
			}
			if (v > 1) {
				factors.add(v);
			}
			
			
			
			
		}
		
		
		public Denomimator(E va) {
			value=va;
			
			 factors = new TreeSet<java.lang.Number>();
			
			
			 if(va.getClass().getName()=="java.lang.Long")
			 initFactors(va.longValue());
			 else if(va.getClass().getName()=="java.lang.Integer") 
				 initFactors(va.intValue());
			 else print("Not supported type:"+va.getClass().getName());
		}
		public void initFactors(int v) {
			
			while (v% 2 == 0) {
				factors.add(2);
				v/=2;
			}
			for (int i = 3; i <= v / i; i+=2) {
				while (v % i == 0) {
					factors.add(i);
					v /= i;
				}
			}
			if (v > 1) {
				factors.add(v);
			}
			
			
			
		}

	public long[] getCommonFactors(long v) {
	ArrayList<Long> list =new ArrayList<Long>();
	if(v%2==0) {
		if(factors.contains(2))
		list.add(2L);
		do {			
			v/=2;
		}while(v% 2 == 0);
		
	}
	
	
	for (long i = 3L; i <= v / i; i+=2) {
	if(v%i==0) {
		if(factors.contains(i)) list.add(i);
		do {
			v /= i;			
			
		}while(v % i == 0);

		}
	}
	
	if (v > 1L && factors.contains(v)) list.add(v);
	
	return CAN.Long_to_long(list.toArray(new Long[0]));
	
	
}
	public int[] getCommonFactors(int v) {
		ArrayList<Integer> list =new ArrayList<Integer>();
		if(v%2==0) {
			if(factors.contains(2))
				list.add(2);
			do {			
				v/=2;
			}while(v% 2 == 0);
			
		}
		
		
		for (int i = 3; i <= v / i; i+=2) {
			if(v%i==0) {
				if(factors.contains(i)) list.add(i);
				do {
					v /= i;			
					
				}while(v % i == 0);
				
			}
		}
		
		if (v > 1 && factors.contains(v)) list.add(v);
		
		return CAN.Integer_to_int(list.toArray(new Integer[0]));
		
		
	}
		
public int commonFactors(int v) {
	int j=0;
	if(v%2==0) {
		if(factors.contains(2))
		j++;
		do {			
			v/=2;
		}while(v% 2 == 0);
		
	}
	
	
	for (int i = 3; i <= v / i; i+=2) {
	if(v%i==0) {
		if(factors.contains(i)) j++;
		do {
			v /= i;			
			
		}while(v % i == 0);

		}
	}
	
	if (v > 1 && factors.contains(v)) j++;
	
	return j;
	
}
public long commonFactors(long v) {
	long j=0L;
	if(v%2==0) {
		if(factors.contains(2L))
			j++;
		do {			
			v/=2;
		}while(v% 2 == 0);
		
	}
	
	
	for (long i = 3L; i <= v / i; i+=2L) {
		if(v%i==0) {
			if(factors.contains(i)) j++;
			do {
				v /= i;			
				
			}while(v % i == 0);
			
		}
	}
	
	if (v > 1L && factors.contains(v)) j++;
	
	return j;
	
}

public boolean hasCommonFactor(long v) {
	if(v%2==0) {
		if(factors.contains(2L))
		return true;
		do {			
			v/=2;
		}while(v% 2 == 0);
		
	}
	
	
	for (long i = 3L; i <= v / i; i+=2) {
	if(v%i==0) {
		if(factors.contains(i)) return true;
		do {
			v /= i;			
			
		}while(v % i == 0);

		}
	}
	
	if (v > 1 && factors.contains(v)) return true;
	
	return false;
	
	
	
	
	
}
public boolean hasCommonFactor(int v) {
	if(v%2==0) {
		if(factors.contains(2))
			return true;
		do {			
			v/=2;
		}while(v% 2 == 0);
		
	}
	
	
	for (int i = 3; i <= v / i; i+=2) {
		if(v%i==0) {
			if(factors.contains(i)) return true;
			do {
				v /= i;			
				
			}while(v % i == 0);
			
		}
	}
	
	if (v > 1 && factors.contains(v)) return true;
	
	return false;
	
	
	
	
	
}
		
		
		
		
		
		
	}
	
	
	
	
	
	
	/*
	 * Simple test code , that gives the number of reducible 
	 * fractions and their rate with denominator ,for denominator in range:3-3001
	 * It uses the static class <Denominator> and brute-force (so
	 * it's a bit slowly for a larger range..)
	 * 
	 * It shows clearly that the denominators with the larger number
	 * of reducible fraction (=> lowest resiliance) are the 
	 * products of primes (e.g. 2*3, 2*3*5,2*3*5*7 etc.) 
	 * 
	 * all the numbers which are smaller than a specific product
	 * of prime, they have smaller resiliance (=>biggest rate at third column) 
	 * e.g. all the numbers <30 ,they have bigger resiliance (and smaller 3nd column)
	 * than 30.
	 * 
	 * The numbers which are bigger than a specific product of primes,
	 * might have smaller or larger resiliance, but certainly ,smaller
	 * 3nd column rate, than the next product prime.
	 * The multiples of the prime-products have always better resiliance
	 * for example 60=(2*3*5)*2 has better resiliance than (2*3*5)=30
	 *
	 * So, if we want to find the smaller number,with resiliance <Rmax
	 * all we have to do ,is to check the prime-products ,and their
	 * multiples...
	 */
	
	public static void test00() {
		
		for(int i=3; i<3001; i++) {
			Denomimator<Integer> d=new Denomimator<Integer>(i);
			int k=0;
			for(int j=2; j<i; j++)
			if(d.hasCommonFactor(j)) {
				k++;
				
		}
			
			System.out.println(""+i +"\t"+k+"\t"+(double)k/i*100);
		}
		print("END");
		
		
	}
	
	
	/*
	 * e.g. getAllCompinations([2,3,5],2) =>[6,10,15]
	 */
	
	public static int []getAllCompinations(int []elements,int a){
		int[] indices;
		CombinationGenerator x = new CombinationGenerator (elements.length, a);
		int []res=new int[x.getTotal().intValue()];
		
		int tmp=0;
		while (x.hasMore ()) {
		  res[tmp]=1;
		  indices = x.getNext ();
		  for (int i = 0; i < indices.length; i++) {
		    res[tmp]*=elements[indices[i]];
		  }
		tmp++;
		}

		
	return res;	
	}
	
	
	/*
	 * Returns how many numbers can be Reduced,when the prime multiplant is
	 * denominator.
	 * E.g. getNumOfReducibleFractions([2,3,5]) returns 21 that is:
	 * 2/30,3/30,4/30,5/30,6/30,8/30,9/30,10/30,12/30,14/30,15/30
	 * ,16/30,18/30,20/30,21/30,22/30,24/30,25/30,26/30,27/30,28/30
	 */
	public static long getNumOfReducibleFractions(int[] primes) {
		
		long A=1;
		for(int i:primes)A*=i;
		
		int flag=1,k=primes.length;
		double SUM=0.0;
		for(int i=1;i<k; i++) {
			//Set<Integer>L=showAllCompinations(primes,i);
			int []L=getAllCompinations(primes,i);
			double S=0.0;
			for(int j:L)S+=1.0/j;
			S=S*A-L.length;
			SUM+=flag*S;
			flag*=-1;
		}
		
//		print("Result="+Math.round(SUM));
		return Math.round(SUM);
	}
	
	/*
	 * getNumOfReducibleFractions(int[] primes,long d)
	 * same as above,but now we specify which denominator
	 * we have:
	 * e.g. getNumOfReducibleFractions([2,3,5],60) =>43
	 * be carefull:the second argument must be multiple of
	 * the product of primes: 60=(2*3*5)*2
	 */
	
	public static long getNumOfReducibleFractions(int[] primes,long d) {

		/*
		 * The type is:
		 * d*(1/p1 + 1/p2 + ... +1/pn)-n - 
		 * - d*( 1/(p1*p2) + 1/(p1*p3) + 1/(p2*p3) +... ) -k +
		 * + d*( 1/(p1*p2*p3) + 1/(p2*p3*p4) +...) - m - ...
		 * 
		 * e.g.: primes={2,3,5} ,d=60
		 * sum={60*(1/2+1/3+1/5)-3} - {60*( 1/6+1/15+1/10)-3} + {60*(1/30)-1}
		 * 
		 * explain:
		 * 60*(1/2+1/3+1/5) are all the dividers of 60
		 * with the 2,3,5.  E.g. 60/2=30 that is {2,4,6,8,..,60}
		 * 60/3=20 =>{3,6,9,..60} etc. but we don't want the last
		 * element of the set (60) so we must reduce ..
		 * 60/3-1=19 , 60/2-1=29 , etc..
		 * 
		 */
		long A=d;
	
		
		int flag=1;
		int k=primes.length;
		
		long aa=1;
		for(int j:primes)
			aa*=j;
		if(aa==k)k--;

		double SUM=0.0;
		for(int i=1;i<=k; i++) {
			int []L=getAllCompinations(primes,i);
			double S=0.0;
			for(int j:L)S+=1.0/j;
			S=S*A-L.length;
			SUM+=flag*S;
			flag*=-1;
		}
		
		return Math.round(SUM);
	}
	
	
	
	
	
		
	/*
	 * finds Resilience for the product of primes arguments
	 * e.g. findR(2,3,5) =>
	 * d=30 a=8 R=0.27586206896551724
	 * where d:2*3*5 , a:number of fractions of d that cannot 
	 * be reduced ,that is :1/30,7/30,11/30,13/30,17/30,19/30,
	 * ,23/30,29/30,
	 * and R=a/(d-1).Arguments must be primes.
	 */
	
	public static void findR(int ...ar) {
		long d=1;
		for(int i:ar)d*=i;
		final long a=d-getNumOfReducibleFractions(ar)-1;

		double R=(double)a/(d-1);
		
		print(ar);
		print("d="+d+" a="+a+" R="+R);

		
		
	}
	

	public static void run() {
		final double Rm=15499.0/94744.0;
		long d=2,best=-1;
		int []ar=null;

		// First we check the prime products,till we find 
		//the first smallest than Rm ,resiliance 
		for(int i=1;i<80; i++) {
			d*=PRIME[i];
			ar=new int[i+1];
			System.arraycopy(PRIME,0,ar, 0,i+1);
			final long a=d-getNumOfReducibleFractions(ar)-1;

			if((double)a/(d-1)<Rm) {best=d; break;}
			
		}

		/*
		 *Now that we have the first prime product with resiliance<Rm
		check the multiples of the prime products with less factors
	 	e.g. the best we find till now is {2,3,5,7,11,13,17,19,23,29} 
	 	which gives R= 0.1579472252903013
	 	So take {2,3,5,7,11,13,17,19,23},{2,3,5,7,11,13,17,19},...
	 	and check the multiples of them.. 
		 */
		
	L1:
		while(ar.length>2) {
		if(best!=-1) {
			d=(d/(ar[ar.length-1]));
			final int newSize=ar.length-1;
			ar=new int[newSize];
			
			System.arraycopy(PRIME,0,ar,0,newSize);
			for(long j=2; j<PRIME[ar.length]; j++) {
			final long a=j*d-getNumOfReducibleFractions(ar,j*d)-1;
//			print("@@1d="+(j*d)+" a="+a+" a/d:"+(double)a/(j*d-1));
			if((double)a/(j*d-1)<Rm) {best=j*d; break L1;}
				
				
				
			}
			
			
		}
		
		
		}
	
		
			print("Found:"+best);
		
	}	
	
	public static void main(String[] args) {
//		run();
		findR(2,3,5,7,11,13,17,19,23,29);
//		test00();
					
	}

}
