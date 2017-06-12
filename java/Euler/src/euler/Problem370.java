package euler;

import java.util.TreeSet;
import utils.*;


public class Problem370 extends CAN{

	




//private int a,b,c,P=-1;
final static double e=1.0+Math.sqrt(5.0);	
final static double sq=Math.sqrt(5.0);	
	public static long calcNumOfTriangles0(long maxP) {
		long sum1=0,sum2=0;
		long N=maxP;
		
		if(N%2==0)
			sum1=(2+N/2)*(N/2-1)-N/2;
		else sum1=(2+(N-1)/2)*((N-1)/2-1);
		
		if(N%3==0) {
			print("first case");
			sum2=(3*(2+N/3)*(N/3-1))/2;
		}
		else if((N+1)%3==0) {
			print("second case");
			sum2=(3*(2+(N+1)/3)*((N+1)/3-1))/2-(N+1)/3;
		}
		else if((N+2)%3==0){
			long k=(N+2)/3;
			sum2=(3*(2+k)*(k-1))/2-2*k;
			print("third case k="+k);
			
		}
		
		println("sum1="+sum1+" sum2="+sum2);
		return sum1-sum2;
	}
	
	public static long calcNumOfTriangles(long maxP) {

		long N=maxP;
if(N%3==0)return N/3;
if((N+1)%3==0) return (N+1)/3-1;
if((N+2)%3==0) return (N+2)/3-2;
	return -1;	
	}
	


	
	public static long calcExackNumOfTriangles(long N) {
double sum=0.0;
double n=(double)N;
		for(double i=Math.ceil(n/3.0); i<Math.ceil(n/2.0)-1; i++) {
			sum+=1+i-Math.ceil((n-i)/2.0);
			
			
		}
		
		return (long)sum;
		
	}
	public static long calcExackNumOfTriangles2(long N) {
		double sum=0.0;
		double P=(double)N;
	double a,b;
		int nb=(int)(Math.floor(P/3.0)-Math.floor(P/(e)));
		for (int j=0; j<nb; j++) {
			b=Math.floor(P/3.0)-j;
			a=(P-b+Math.sqrt(P*P-2.0*P*b-3.0*b*b))/2.0;
			if(Math.floor(a)==a)sum++;
		}
		
		
	return (long)sum;
	}
		
public static long calcNumOfTriangles2(long maxP) {

		long N=maxP;
long sum=0;
double a,b,c;

int k=0,l=0;
for(double P=3.0; P<=N; P++) {
	int nb=(int)(Math.floor(P/3.0)-Math.floor(P/(e)));
	for (int j=0; j<nb; j++) {
		b=Math.floor(P/3.0)-j;
		a=(P-b+Math.sqrt(P*P-2.0*P*b-3.0*b*b))/2.0;
		if(Math.floor(a)==a) {
			
			if(P%3!=0)
			println("Y P="+P+" j="+j+" b="+b+" a="+a);
			k++;
			sum++;
		}
			
	/*	else
			if(P%3!=0)
			println("N P="+P+" j="+j+" b="+b+" a="+a);*/
	
	
	}
	
	
	/*if(k>0) {
		if(k>7) {
			print(""+P+"\t"+k);
			l++;
		}
		k=0;
	}
	
*/


}
//print("Total:"+l);	
//println("@"+(Math.floor(16/3.0)-Math.floor(16/(1.0+Math.sqrt(5.0)))));

return sum;	
	}	
	


public static long calcNumOfTriangles3(long maxP) {

	long N=maxP;
long sum=0;
double a,b,c;

for(double P=3.0; P<=N; P++) {
int nb=(int)(Math.floor(P/3.0)-Math.floor(P/(e)));
for (int j=0; j<nb; j++) {
	b=Math.floor(P/3.0)-j;
	a=(P-b+Math.sqrt(P*P-2.0*P*b-3.0*b*b))/2.0;
	if(Math.floor(a)==a) {
		

		sum++;
	}
		
}




}
return sum;	
}


///////////doesn' work......
public static long calcNumOfTriangles4(long maxP) {
	
	long N=maxP;
	long sum=0;
	double a,b,c;
	
	for(double P=3.0; P<=N; P++) {
		int nb=(int)(Math.floor(P/3.0)-Math.floor(P/(e)));
		for (int j=0; j<nb; j++) {
			b=Math.floor(P/3.0)-j;
//			a=(P-b+Math.sqrt(P*P-2.0*P*b-3.0*b*b))/2.0;

			a=Math.floor(b*e/2.0)-b;
			c=b-Math.floor(b*(Math.sqrt(5.0)-1.0)/2.0);
			sum+=Math.abs(a-c);	
		}
		
		
		
		
	}
	return sum;	
}
public static long calcNumOfTrianglesNew(long maxP) {
	
	final long N=maxP;
	long sum=0;
	double a=0.0,b=0.0,c=0.0;
	
	for(double P=3.0; P<=N; P++) {
		final int na=(int)(Math.floor(P/2.0)-Math.floor(P/(3.0+sq)));
		final int nb=(int)((P/3.0)-Math.floor((sq+1.0)*P/(6.0+2.0*sq)));
		final int nc=(int)(Math.floor(P/2.0)-Math.floor(P/3.0));
		
		//if(na<=nb &&na<=nc) {
			for (int j=0; j<na; j++) {
				a=Math.floor(P/2.0)-j;
				b=a*(Math.sqrt(4.0*P/a-3.0)-1.0)/2.0;
				if(Math.floor(b)==b ) {
					print("Yes P="+P+" a="+a+" b="+b+" j="+j);	
					sum++;
				}
			}
		

		print("@1 P="+P+" sum="+sum+" a="+a+" b="+b+" na="+na);	
	/*	
	}else if(nb<na && nb<=nc) {
			for (int j=0; j<nb; j++) {
				b=Math.floor(P/3.0)-j;
				final double l=P/b;
				a=b/((l-1)+Math.sqrt(l*l-2.0*l-3.0)/2.0);
				if(Math.floor(a)!=a)
				a=b/((l-1)-Math.sqrt(l*l-2.0*l-3.0)/2.0);
				
				if(Math.floor(a)==a )sum++;
			}
			print("@2 P="+P+" sum="+sum+" a="+a+" b="+b);	
				
		}else {
			for (int j=0; j<nc; j++) {
				c=Math.floor(P/2.0)-j;
				b=c/(Math.sqrt(4.0*P/c-3.0)-1.0)/2.0;
				if(Math.floor(b)==b )sum++;
			}
			
			print("@3 P="+P+" sum="+sum+" c="+c+" b="+b);	
		}
				
*/		
		
	}
	return sum;	
}



public static void  regres() {
	
	
	double [] dd=readDoublesFile("euler/a99.dat");
	Distribution.Regression reg=new Distribution.PowerRegression(dd);
	reg.compute();
	reg.print();
	
	
}
public static void  regres2() {
	
	
	double [] a=readDoublesFile("bin/euler/a0.dat");
	double [] b=readDoublesFile("bin/euler/a1.dat");
	Distribution.Regression reg=new Distribution.ExpRegression(a,b);
	reg.compute();
	reg.print();
	
	
}

public static void test() {
	TreeSet <Integer> list =new TreeSet<Integer>();
	int [] list2=new int[40];

int a=0;
	for(int n=0; n<40; n++) {
		a=3*n*n+9*n+7;
		list2[n]=a;
		
	}
	
	
	long k=0;
	for(int j=3; j<=2000; j++) {
	
	long n=Problem370.calcNumOfTriangles3(j);
	//System.out.print(j+"\t"+n+"\t"+(n-k)+"\t");
//	print(Integer_to_int(primeFactors(j).toArray(new Integer[0])));
	
//	printR("n="+n+" k="+k+" j="+j);
	if((n-k)>0 && j%3!=0) {

		for(Integer i:list) 
			if(j%i==0)
				{
				k=n;
				break;
		}
	if(k!=n)list.add(j);
	}
	k=n;
}
	for(Integer i:list2) 
	list.remove(i);
	
	for(Integer i:list2) 
		System.out.print(i+" ");
	
	print("\n");
	
	for(Integer i:list) 
		System.out.print(i+" ");
	
	
	
}
 
public static void main(String[]args) {

	long n2=Problem370.calcExackNumOfTriangles(10000000);
	printR("press y");
	long n4=Problem370.calcExackNumOfTriangles(10000000);
	
//	long n4=Problem370.calcNumOfTrianglesNew(193);
	
	print(n2+" "+n4);
	
	
	
}
	

	public static void main2(String[]args) {
	test();
	
}




	
	public static void main1(String[] args) {
//long n=Problem370.calcNumOfTriangles2((long)Math.pow(10, 6));
		
		/*long n=Problem370.calcNumOfTriangles3(50);
		long n2=Problem370.calcNumOfTriangles4(50);
		System.out.println(n);
		System.out.println(n2);*/
		
		
		long k=0;
		for(int j=3; j<56; j++) {
		
		long n=Problem370.calcNumOfTriangles2(j);
		System.out.print(j+"\t"+n+"\t"+(n-k)+"\t");
		print(Integer_to_int(primeFactors(j).toArray(new Integer[0])));
		k=n;
	}
		
	int i=0;
	while(3*i<=56)i++;
		print(""+i);
		long n=Problem370.calcNumOfTriangles3(56);	
		System.out.println(n);
//		regres2();

		/*double bb=25.0*Math.pow(10, 12);
		double bb2=25.0*Math.pow(10, 9);
		//double a=bb/(1.8385519609725642 *Math.pow(bb2,-0.07125671433307405));
		double a=543.9063030185381*Math.pow(bb2,1.071256714333054);
		print("a="+a);*/
	}

}
