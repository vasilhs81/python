package utils;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.text.*;
import java.io.*;
import java.util.*;
import java.awt.Toolkit;

import java.util.regex.*;


////contains global static fields and methods 

public class CAN {
//	static Random ra = new Random();


	final static int MAX_REAL = 100;
	final static int DIM = 3;



	public static String[] readStringsFile(String file) {
		BufferedReader in;
		LinkedList<String> list = new LinkedList<String>();
		String s = null;
		try {
			in = new BufferedReader(new FileReader(file));

			while ((s = in.readLine()) != null)
				list.add((s));
			in.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		String[] d = new String[list.size()];
		for (int i = 0; i < d.length; i++) {

			d[i] = list.removeFirst();
		}

		return d;

	}
	public static List<String> readStringsFileL(String file) {
		BufferedReader in;
		LinkedList<String> list = new LinkedList<String>();
		String s = null;
		try {
			in = new BufferedReader(new FileReader(file));
			
			while ((s = in.readLine()) != null)
				list.add((s));
			in.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
		
	}

	
	public static double[] readDoublesFile(String file) {
		BufferedReader in;
		LinkedList<Double> list = new LinkedList<Double>();
		String s = null;
		try {
			in = new BufferedReader(new FileReader(file));

			while ((s = in.readLine()) != null)

				list.add(Double.parseDouble(s));
			in.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		double[] d = new double[list.size()];
		for (int i = 0; i < d.length; i++) {

			d[i] = list.removeFirst();
		}

		return d;
	}
	public static double[][] readMatrixFile(String file,String delim,int dim) {
		BufferedReader in;
//		LinkedList<Double> list = new LinkedList<Double>();
		double [][] ar=new double[dim][];
		
		String s = null;
		int index=0;
		try {	
			in = new BufferedReader(new FileReader(file));
			
			String[] ds=null;
			while ((s = in.readLine()) != null && index<dim) {
				ds=s.split(delim);
			    if(ds.length>0) {
			    			ar[index]=new double[ds.length];
			    			for(int j=0; j<ds.length &&j<dim; j++)
			    				ar[index][j]=(Double.parseDouble(ds[j]));
			    }
    			index++;	    
		}
				
			in.close();
			
		} catch (Exception e) {	e.printStackTrace();}
		
		return ar;
	}
	public static int[][] readMatrixFileInt(String file,String delim,int dim) {
		BufferedReader in;
//		LinkedList<Double> list = new LinkedList<Double>();
		int[][] ar=new int[dim][];
		
		String s = null;
		int index=0;
		try {	
			in = new BufferedReader(new FileReader(file));
			
			String[] ds=null;
			while ((s = in.readLine()) != null && index<dim) {
				ds=s.split(delim);
				if(ds.length>0) {
					ar[index]=new int[ds.length];
					for(int j=0; j<ds.length &&j<dim; j++)
						ar[index][j]=(Integer.parseInt(ds[j]));
				}
				index++;	    
			}
			
			in.close();
			
		} catch (Exception e) {	
			e.printStackTrace();
			System.exit(0);
		}
		
		return ar;
	}

	public static <T> T loadState(String file) {
		T hm = null;
		try {
			ObjectInputStream in = new ObjectInputStream(new FileInputStream(
					file));
			hm = (T) in.readObject();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return hm;

	}

	public static <T> void saveState(String file, T t) {
		try {
			ObjectOutputStream out = new ObjectOutputStream(
					new FileOutputStream(file));
			out.writeObject(t);
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public static void beep() {
		Toolkit.getDefaultToolkit().beep();

	}

	public static double[] Double_to_double(Double[] D) {
		double[] y = new double[D.length];
		for (int i = 0; i < D.length; i++) {

			y[i] = D[i];

		}
		return y;

	}

	public static int[] Integer_to_int(Integer[] D) {
		int[] y = new int[D.length];
		for (int i = 0; i < D.length; i++) {

			y[i] = D[i];

		}
		return y;

	}
	public static long[] Long_to_long(Long[] D) {
		long[] y = new long[D.length];
		for (int i = 0; i < D.length; i++) {
			
			y[i] = D[i];
			
		}
		return y;
		
	}
	public static int[] Integer_to_int_rev(Integer[] D) {
		int[] y = new int[D.length];
		for (int i = 0; i < D.length; i++) {
			
			y[D.length-i-1] = D[i];
			
		}
		return y;
		
	}

	public static double[] int_to_double(int[] iar) {
		double d[] = new double[iar.length];
		for (int i = 0; i < d.length; i++) {

			d[i] = iar[i] + 0.0;
		}
		return d;
	}

	public static String readFile(String file) {
		BufferedReader in;
		String s = null, s2 = null;
		try {
			in = new BufferedReader(new FileReader(file));

			while ((s = in.readLine()) != null)
				s2 += s + "\n";
			in.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return s2;
	}

	public static void write(String file, double[] a)  {
		PrintStream sout = System.out;
		PrintStream out=null;
		try {
		
		 out = new PrintStream(new BufferedOutputStream(
				new FileOutputStream(file, false)), true); // autoflush
		System.setOut(out);

		for (double i : a) {
			// System.out.printf("%d\n",i);
			// System.out.print(Double.toString(i)+" ");
			System.out.println(Double.toString(i));

		}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
		if(out!=null)
		out.close();
		System.setOut(sout);
		}
	}

	public static void write(String file, Double[] a) throws Exception {
		PrintStream sout = System.out;

		PrintStream out = new PrintStream(new BufferedOutputStream(
				new FileOutputStream(file, false)), true); // autoflush
		System.setOut(out);

		for (double i : a) {
			// System.out.printf("%d\n",i);
			// System.out.print(Double.toString(i)+" ");
			System.out.println(Double.toString(i));

		}

		out.close();
		System.setOut(sout);
	}

	public static void write(String file, Integer[] a) throws Exception {
		PrintStream sout = System.out;

		PrintStream out = new PrintStream(new BufferedOutputStream(
				new FileOutputStream(file, false)), true); // autoflush
		System.setOut(out);

		for (int i : a) {
			// System.out.printf("%d\n",i);
			// System.out.print(Double.toString(i)+" ");
			System.out.println(Double.toString(i));

		}

		out.close();
		System.setOut(sout);
	}

	public static void write(String file, String text)  {
		
		PrintStream out=null;
		try { 
		out= new PrintStream(new BufferedOutputStream(
				new FileOutputStream(file, false)), true); // autoflush

		out.print(text);
		}catch (Exception e) {
e.printStackTrace();
		}finally {
		if(out!=null)
			out.close();
		}
	}

	
public static void write (String file,String []text) throws Exception{
	PrintStream out =
		new PrintStream(
		new BufferedOutputStream(
		new FileOutputStream(file,true)),true); //autoflush
	
	for (String s:text) {
		out.println(s);

	}
	out.close();
}

public static void write (String file,Object[]text){
	PrintStream out=null;
	try {
 out=
		new PrintStream(
		new BufferedOutputStream(
		new FileOutputStream(file,true)),true); //autoflush
	
	for (Object s:text) {
//		if(s!=null)
		out.println(s);
//			System.out.println(s);
	}
	

	}catch (Exception e) {e.printStackTrace();}
	finally {
		if(out!=null)
			out.close();
		
		
	}
	}

public static void write (String file,Object[]text,boolean append){
	PrintStream out=null;
	try {
 out=
		new PrintStream(
		new BufferedOutputStream(
		new FileOutputStream(file,append)),true); //autoflush
	
	for (Object s:text) {
//		if(s!=null)
		out.println(s);
//			System.out.println(s);
	}
	

	}catch (Exception e) {e.printStackTrace();}
	finally {
		if(out!=null)
			out.close();
		
		
	}
	}
public static void write (String file,String []text,boolean append) throws Exception{
	PrintStream out =
		new PrintStream(
		new BufferedOutputStream(
		new FileOutputStream(file,append)),true); //autoflush
	
	for (String s:text) {
		out.println(s);
	}
	out.close();
}	
	
	public static void write(String file, String text, boolean append)
			throws Exception {
		PrintStream out = new PrintStream(new BufferedOutputStream(
				new FileOutputStream(file, append)), true); // autoflush

		out.print(text);
		out.close();

	}

	public static void write(String file, int[] a) throws Exception {
		PrintStream sout = System.out;
		PrintStream out = new PrintStream(new BufferedOutputStream(
				new FileOutputStream(file, false)), true); // autoflush
		System.setOut(out);

		for (int i : a) {

			// System.out.printf(l, format, args)("%d\n",i);
			System.out.println(Integer.toString(i));

		}
		out.close();
		System.setOut(sout);
	}

	static boolean compare(int[] c1, int[] c2) {
		byte count = 0;
		for (byte j = 0; j < DIM; j++) {
			if (c1[j] == c2[j])
				count++;

		}
		if (count == DIM)
			return true;
		return false;
	}

	public static void printe(String s) {
		printR(s);
		System.exit(0);

	}

public	static void print(int[] a) {
		if (a == null)
			return;
		String s = "";
		for (int j = 0; j < a.length; j++) {
			s += a[j];
			if (j != a.length)
				s += ",";
		}
		print(s);

	}
public static void print(String[]sa) {
	for (String s:sa)
		print(s);
	
}
	
public		static void print(double[] a) {
		if (a == null)
			return;
		String s = "";
		for (int j = 0; j < a.length; j++) {
			s += a[j];
			if (j != a.length)
				s += ",";
		}
		print(s);

	}
public		static void print(long[] a) {
		if (a == null)
			return;
		String s = "";
		for (int j = 0; j < a.length; j++) {
			s += a[j];
			if (j != a.length)
				s += ",";
		}
		print(s);
		
	}

public		static void println(double[] a) {
		if (a == null)
			return;
		String s = "";
		for (int j = 0; j < a.length && j < MAX_REAL; j++) {
			s += a[j];
			if (j != a.length)
				s += "\n";
		}
		print(s);

	}

public		static void println(double[] a, boolean all) {
		if (a == null)
			return;
		String s = "";
		for (int j = 0; j < a.length && (j < MAX_REAL || all == true); j++) {
			s += a[j];
			if (j != a.length)
				s += "\n";
		}
		print(s);

	}

public		static void println(double[] a, double[] b) {
		if (a == null || b == null)
			return;
		String s = "";
		for (int j = 0; j < a.length && j < MAX_REAL && j < b.length; j++) {
			s += a[j] + "\t" + b[j];
			if (j != a.length && j != b.length)
				s += "\n";
		}
		print(s);

	}

public		static void println(int[] a, double[] b) {
		if (a == null || b == null)
			return;
		String s = "";
		for (int j = 0; j < a.length && j < MAX_REAL && j < b.length; j++) {
			s += a[j] + "\t" + b[j];
			if (j != a.length && j != b.length)
				s += "\n";
		}
		print(s);

	}

public		static void println(int[] a) {
		if (a == null)
			return;
		String s = "";
		for (int j = 0; j < a.length && j < MAX_REAL; j++) {
			s += a[j];
			if (j != a.length)
				s += "\n";
		}
		print(s);

	}

	public	static void println(int[] a, boolean all) {
		if (a == null)
			return;
		String s = "";
		for (int j = 0; j < a.length && (j < MAX_REAL || all == true); j++) {
			s += a[j];
			if (j != a.length)
				s += "\n";
		}
		print(s);

	}

	public	static void print(String s) {
		System.out.println(s);
		// System.in.readln();

	}

	public	static void println(String s) {
		print(s+"\n");
		
	}
	
	
	public	static int printR(String s) {
		int c = 'n';
		System.out.println(s);
		System.out.flush();
		try {
			// System.in.reset();
			while (true) {
				c = System.in.read();
				if (c == 'n' || c == 'y')
					break;
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
		return c;
	}

	public	static int printRN(String s) {
		int c = '0';
		System.out.println(s);
		System.out.flush();
		try {
			// System.in.reset();
			while (true) {
				c = System.in.read();
				if (c >= '0' && c <= '9')

					break;

			}

		} catch (IOException e) {
			e.printStackTrace();
		}
		return (c - '0');
	}

	/*
	 * static char printCh(String s) {
	 * 
	 * System.out.println(s); try{ char c=System.in.read(); }catch(IOException
	 * e){}
	 * 
	 * }
	 */
	public static <T extends Comparable<T>> T max(T[] ar) {

		T t = ar[0];
		for (T tt : ar) {
			if (tt.compareTo(t) > 0)
				t = tt;
		}

		return t;

	}

	
	public static String formatDouble(double d) {
		// double d = 1.234567;
		DecimalFormat df = new DecimalFormat("#.###");
		// System.out.print(df.format(d));
		return df.format(d);
	}

	public static String formatDouble(double d, int n) {
		// double d = 1.234567;
		String s = "#.";
		for (int i = 0; i < n; i++)
			s += "#";

		DecimalFormat df = new DecimalFormat(s);
		// System.out.print(df.format(d));
		return df.format(d);
	}

	public static double min(double[] ar) {
		double t = ar[0];
		for (double tt : ar)
			if (tt < t)
				t = tt;

		return t;

	}

	public static double max(double[] ar) {
		double t = ar[0];
		for (double tt : ar)
			if (tt > t)
				t = tt;

		return t;

	}

	public static <T extends Comparable<T>> T min(T[] ar) {

		T t = ar[0];
		for (T tt : ar) {
			if (tt.compareTo(t) < 0)
				t = tt;
		}

		return t;
		// Integer

	}

	static int max(int... ar) {
		int res = 0;
		for (int i : ar) {
			if (i > res)
				res = i;

		}
		return res;

	}
	static int min(int... ar) {
		int res = ar[0];
		for (int i : ar) {
			if (i < res)
				res = i;
			
		}
		return res;
		
	}

	public static String convertTime(long timeMillis) {
		//e.g. Date timeMillis = new Date();
		  DateFormat dataformat =  DateFormat.getDateInstance(DateFormat.SHORT);     
		        		 return dataformat.format(timeMillis);    
		      }
	public static String convertTime(long timeMillis,String format) {
//examples of format strings:"yyyyMMdd" or "yyyy-MM-dd"

		SimpleDateFormat targetFormat = new SimpleDateFormat(format);
return targetFormat.format(timeMillis);

	}
	public static int numOfMatches(String s,String f) {
		int count=0;
		int index=0;
		while((index=s.indexOf(f,index+1))>0)
		count++;
		
		return count;
		
		
		
	}
	public static String [] scan(String spat,String text){
	Pattern pat = Pattern.compile(spat);
	Matcher m= pat.matcher(text);
	ArrayList<String> ar=new ArrayList<String>();

	int total=m.groupCount()+1;
	String []mm;
	while(m.find()){
	mm=new String[total];

	for(int i=0; i<total; i++)
	{
	mm[i]=m.group(i);
	//ar.add(m.group());
	}

	for (int i = 0; i < mm.length; i++) 
		ar.add(mm[i]);	
	
	
	}
	//print(ar.size());
	return ar.toArray(new String [0]);



	}
	
	public static String implode(String glueString,String ...inputArray) {
			 
			/** Output variable */
			String output = "";
			 
			if (inputArray.length > 0) {
			    StringBuilder sb = new StringBuilder();
			    sb.append(inputArray[0]);
			 
			    for (int i=1; i<inputArray.length; i++) {
			        sb.append(glueString);
			        sb.append(inputArray[i]);
			    }
			 
			    output = sb.toString();
			}
			 
			return output;
			}
	
	
	public static String left(String s,int num) {
		if(num>s.length()) {
			System.err.println("Wrong argument num calling function left");
			return null;
		}
		if(num<0)
			return s;
		return s.substring(0,num);
		
	} 
	
	public static String right(String s,int num) {
		if(num>s.length()) {
			System.err.println("Wrong argument num calling function left");
			return null;
		}
		if(num<0)return s;
		return s.substring(s.length()-num,s.length());
		
	} 
		
//	public static String replace(String)
	
		public int binaryToint(String binary) {
		int l = 0;
		char b;
		for (int i = 0; i < binary.length(); i++) {
			b = binary.charAt(i);
			l += (b == '1' ? java.lang.Math.pow(2, i) : 0);

		}
		return l;
	}

	
public static void copyFile(File src,File dest)throws IOException{
	FileInputStream fin = new FileInputStream(src);
    byte[] buffer = new byte[4096];
    BufferedOutputStream zout=new BufferedOutputStream(new FileOutputStream(dest));
    for (int n; (n = fin.read(buffer)) > 0;)
    zout.write(buffer, 0, n);
  
    zout.close();
	
	
	
}


//////////////////////// ************** //////////////////
////here goes the new one algos

//checks whether an int is prime or not.
public static boolean isPrime(int n) {
    //check if n is a multiple of 2
	if (n<=1) return false;
   if (n==2) return true;

	if (n%2==0) return false;
    //if not, then just check the odds
	int m=(int) java.lang.Math.sqrt(n);
   
    for(int i=3;i<=m;i+=2) {
        if(n%i==0)
            return false;
    }
    return true;
}

public static List<Long> primeFactors(long numbers) {
	long n = numbers; 
	List<Long> factors = new ArrayList<Long>();
	for (int i = 2; i <= n / i; i++) {
		while (n % i == 0) {
			factors.add((long)i);
			n /= i;
		}
	}
	if (n > 1) {
		factors.add(n);
	}
	return factors;
}
public static List<Long> primeFactorsOpt(long numbers) {
	long n = numbers; 
	List<Long> factors = new ArrayList<Long>();
	while (n % 2 == 0) {
		factors.add((long)2);
		n/=2;
	}
	for (int i = 3; i <= n / i; i+=2) {
		while (n % i == 0) {
			factors.add((long)i);
			n /= i;
		}
	}
	if (n > 1) {
		factors.add(n);
	}
	return factors;
}
public static List<Integer> primeFactors(int numbers) {
	int n = numbers; 
	List<Integer> factors = new ArrayList<Integer>();
	for (int i = 2; i <= n / i; i++) {
		while (n % i == 0) {
			factors.add(i);
			n /= i;
		}
	}
	if (n > 1) {
		factors.add(n);
	}
	return factors;
}
public static List<Integer> primeFactorsOpt(int numbers) {
	int n = numbers; 
	List<Integer> factors = new ArrayList<Integer>();
	while (n % 2 == 0) {
		factors.add(2);
		n/=2;
	}
	for (int i = 3; i <= n / i; i+=2) {
		while (n % i == 0) {
			factors.add(i);
			n /= i;
		}
	}
	if (n > 1) {
		factors.add(n);
	}
	return factors;
}


static int []getDigits(long a){
	ArrayList<Integer>list =new ArrayList<Integer>();
	for(long j=1;; j*=10 ) {
		int tmp=(int)(a/j);
		if(tmp==0)break;
		list.add(tmp%10);
				
	}
	return Integer_to_int_rev(list.toArray(new Integer[0]));
	
	
}



public static int[] findAllPrimesLessThan(int upperBound) {

	ArrayList<Integer> list =new ArrayList<Integer>(upperBound);
    int upperBoundSquareRoot = (int) java.lang.Math.sqrt(upperBound);

    boolean[] isComposite = new boolean[upperBound + 1];

    for (int m = 2; m <= upperBoundSquareRoot; m++) {

          if (!isComposite[m]) {

                list.add(m);

                for (int k = m * m; k <= upperBound; k += m)

                      isComposite[k] = true;

          }

    }

    for (int m = upperBoundSquareRoot; m <= upperBound; m++)

          if (!isComposite[m])

                list.add(m);

    return Integer_to_int(list.toArray(new Integer[0]));
}

public static int[] findAllPrimesLess(int upperBound) {

	TreeSet<Integer> set =new TreeSet<Integer>();
    int upperBoundSquareRoot = (int) java.lang.Math.sqrt(upperBound);

    boolean[] isComposite = new boolean[upperBound + 1];

    for (int m = 2; m <= upperBoundSquareRoot; m++) {

          if (!isComposite[m]) {

                set.add(m);

                for (int k = m * m; k <= upperBound; k += m)

                      isComposite[k] = true;

          }

    }

    for (int m = upperBoundSquareRoot; m <= upperBound; m++)

          if (!isComposite[m])

                set.add(m);


    return Integer_to_int(set.toArray(new Integer[0]));
}


public final static int[] PRIME= {
	2,3,5,7,11,13,17,19,23,29,31,31,37,41,43,
	47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,
	113,127,131,137,139,149,151,157,163,167,173,179,
	181,191,193,197,199,211,223,227,229,233,239,241,251,
	257,263,269,271,277,281,283,293,307,311,313,317,331,
	337,347,349,353,359,367,373,379,383,389,397,401,409,
	419,421,431,433,439,443,449,457,461,463,467,479,487,
	491,499,503,509,521,523,541,547,557,563,569,571,577,
	587,593,599,601,607,613,617,619,631,641,643,647,653,
	659,661,673,677,683,691,701,709,719,727,733,739,743,
	751,757,761,769,773,787,797,809,811,821,823,827,829,
	839,853,857,859,863,877,881,883,887,907,911,919,929,
	937,941,947,953,967,971,977,983,991,997};
//////////////////////////////////
public static Set<Integer> showAllCompinations(int[] v,int r) {
	TreeSet<Integer> list =new TreeSet<Integer>();	
//	int john = 0;
		int n=v.length;
		
		if(r==1) {
			for (int m1=0; m1<n; m1++) list.add(v[m1]);
			return list;
			
			
		}
		
		for (int m1=0; m1<n; m1++) {
		for (int m2=0; m2<n; m2++) {
				
			
		if (r==2) {
			if (m1==m2) {continue;}

		//john += v[m1]*v[m2];
			list.add(v[m1]*v[m2]);
		} //end if r==2
		for (int m3=0; m3<n; m3++) {
		if (r==3) {
		if (m1==m2 || m2==m3 || m1==m3) {continue;}
		
		//john += v[m1]*v[m2]*v[m3];
		list.add(v[m1]*v[m2]*v[m3]);
		} //end if r==3
		for (int m4=0; m4<n; m4++) {
		if (r==4) {
		
		if (m1==m2 || m1==m3 || m1==m4 || m2==m3 || m2==m4 || m3==m4) {continue;}
		
		//john += v[m1]*v[m2]*v[m3]*v[m4];
		list.add(v[m1]*v[m2]*v[m3]*v[m4]);
		} //end if r==4
		for (int m5=0; m5<n; m5++) {
		if (r==5) {
		
		if (m1==m2 || m1==m3 || m1==m4 || m1==m5 || m2==m3 || m2==m4 || m3==m5 || m3==m4 || m3==m5 || m4==m5) {continue;}
		
		//john += v[m1]*v[m2]*v[m3]*v[m4]*v[m5];
		list.add(v[m1]*v[m2]*v[m3]*v[m4]*v[m5]);
		} //end if r==5

		} //end for m5
		} //end for m4
		} //end for m3
		} // end for m2
		} // end for m1


		/*for(int i:list) 
			print(" "+i);
		*/	
		return list;
	
	
	
}





		
public static void main(String[] args) {
//System.out.println(left("abcde",2));
//System.out.println(right("abcdef",3));
//	print(Integer_to_int(primeFactorsOpt(56).toArray(new Integer[0])));
	
//	print(Long_to_long(primeFactorsOpt(111199803012345239L).toArray(new Long[0])));
	
//	print(findAllPrimesLessThan(10));
	print(findAllPrimesLess(10));
	
/*int [] a={2,3,5,7,11};
showAllCompinations(a,2);*/
}

}//
