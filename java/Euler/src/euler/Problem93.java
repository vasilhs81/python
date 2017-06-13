

/*
By using each of the digits from the set, {1, 2, 3, 4}, exactly once, 
and making use of the four arithmetic operations (+, -, *, /) and brackets/parentheses, 
it is possible to form different positive integer targets.

For example,

8 = (4 * (1 + 3)) / 2
14 = 4 * (3 + 1 / 2)
19 = 4 * (2 + 3) - 1
36 = 3 * 4 * (2 + 1)

Note that concatenations of the digits, like 12 + 34, are not allowed.

Using the set, {1, 2, 3, 4}, it is possible to obtain thirty-one different target numbers 
of which 36 is the maximum, and each of the numbers 1 to 28 can 
be obtained before encountering the first non-expressible number.

Find the set of four distinct digits, a < b < c < d, for which the longest 
set of consecutive positive integers, 1 to n, can be obtained, 
giving your answer as a string: abcd.

*/

package euler;
import java.util.ArrayList;
import java.util.TreeSet;

public class Problem93 extends utils.CAN{

	final static long MAX=1000000000;
	int S1,P1;
	
	int []getDigitsSP(long a){
		
		ArrayList<Integer>list =new ArrayList<Integer>();
		S1=0;
		P1=1;
		for(long j=1;; j*=10 ) {
			int tmp=(int)(a/j);
			if(tmp==0)break;
			int digit=tmp%10;
			S1+=digit;
			P1*=digit;
			list.add(digit);
					
		}
		return Integer_to_int_rev(list.toArray(new Integer[0]));
		
		
	}
	
	
	
	void check(){
		long n,n2,n3,n4,n5,n6;
		
		
		long j;		
		for(n5=15; n5<MAX; n5+=15) {
		n=n5/5; n2=n*2; n3=n*3; n4=n*4; n6=n*6;
		int max=-1,min=10,num=0;
		//n=n2/2;	
		int S=0,P=1;
		boolean hasMult2s=false;
		
		for(j=1; j<MAX; j*=10) {
			int tmp=(int)(n5/j);
			if(tmp==0)break;
			int digit=tmp%10;
			if(digit>max)max=digit;
			if(digit<min)min=digit;
			S+=digit;
			if(digit!=0)P*=digit;
			if(digit%2==0)hasMult2s=true;
			num++;
					
		}
	
	if((n/(j/10))%10!=1)continue; //must have a 1 in first digit so 6*1 doesn't leave kratoymeno
	

	long maxN=(long)(max*Math.pow(10,num-1));	
	long minN=(long)(min*Math.pow(10,num-1));	
if(hasMult2s==true) {
	int []ar;
	ar=getDigitsSP(n);
	if(S!=S1 ||P!=P1 ||ar.length!=num)continue;

	
	
	//all must have the same sum and product of digits..
	ar=getDigitsSP(n2); 
	if(S!=S1 ||P!=P1 ||ar.length!=num)continue;

	ar=getDigitsSP(n3);
	if(S!=S1 ||P!=P1||ar.length!=num)continue;
	
	ar=getDigitsSP(n4);
	if(S!=S1 ||P!=P1||ar.length!=num)continue;

	ar=getDigitsSP(n6);
	if(S!=S1 ||P!=P1||ar.length!=num)continue;
	
	
	print("n="+n+" n2="+n2);
	
	
}
}
	}
	
	
	
	public static void main(String[] args) {
		Problem93 p=new Problem93();
		p.check();
		//print(getDigits(123456789));
		
		
	}

}
