package utils;
import java.util.*;
import org.apache.commons.math.analysis.interpolation.* ;
import org.apache.commons.math.analysis.polynomials.PolynomialFunctionNewtonForm;



/**contains some statistical static methods ...
 * Distribution.java This class generates various random variables for
 * distributions not directly supported in Java
 */
public class Distribution {
	final static double SMALL = 0.001;

	public static void Newton  () {
		double []x= {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15};
		double []y= {7,19,37,61,91,109,127,169,217,271,331,397,469,547,631,721};
		PolynomialFunctionNewtonForm p;
		DividedDifferenceInterpolator d=new DividedDifferenceInterpolator();
		try {
			p=d.interpolate(x, y);
			double [] a=p.getCoefficients();
			CAN.print(a);
			CAN.print("degree="+p.degree());
			CAN.print("f(10)="+p.value(15));
		}catch(Exception e) {e.printStackTrace();}
		
	}
	
	public static int getPoisson(double lambda) {
		double L = Math.exp(-lambda);
		double p = 1.0;
		int k = 0;

		do {
			k++;
			p *= Math.random();
		} while (p > L);

		return k - 1;
	}

	public static int nextPoisson(double lambda) {
		double elambda = Math.exp(-1 * lambda);
		double product = 1;
		int count = 0;
		int result = 0;
		while (product >= elambda) {
			product *= Math.random(); // nextDouble();
			result = count;
			count++; // keep result one behind
		}
		return result;
	}

	public static double nextExponential(double b) {
		double randx;
		double result;
		randx = Math.random();// nextDouble();
		result = -1 * b * Math.log(randx);
		return result;
	}

	public static double Sum(double[] ar) {
		double tmp = 0.0;
		for (double r : ar)
			tmp += r;

		return tmp;

	}

	public static double Sum(Double[] ar) {
		double tmp = 0.0;
		for (double r : ar)
			tmp += r;

		return tmp;

	}

	public static double Sum(int[] ar) {
		if (ar == null)
			return 0.0;
		double tmp = 0.0;
		for (int r : ar)
			tmp += r;

		return tmp;

	}

	public static double Sum(short[] ar) {
		if (ar == null)
			return 0.0;
		double tmp = 0.0;
		for (short r : ar)
			tmp += r;

		return tmp;

	}

	public static double Sum(Integer[] ar) {
		if (ar == null)
			return 0.0;
		double tmp = 0.0;
		for (int r : ar)
			tmp += r;

		return tmp;

	}

	public static double Sum(Short[] ar) {
		if (ar == null)
			return 0.0;
		double tmp = 0.0;
		for (short r : ar)
			tmp += r;

		return tmp;

	}

	public static double Sum2(double[] ar) {
		if (ar == null)
			return 0.0;
		double tmp = 0.0;
		for (double r : ar)
			tmp += Math.pow(r, 2);

		return tmp;

	}

	public static double Sum2(int[] ar) {
		if (ar == null)
			return 0.0;
		double tmp = 0.0;
		for (int r : ar)
			tmp += Math.pow(r, 2);

		return tmp;

	}

	public static double getMean(int[] ar) {
		if (ar == null)
			return 0.0;
		return Sum(ar) / ar.length;

	}

	public static double getMean(Integer[] ar) {
		if (ar == null)
			return 0.0;
		return Sum(ar) / ar.length;

	}

	public static double getMean(short[] ar) {
		if (ar == null)
			return 0.0;
		return Sum(ar) / ar.length;

	}

	public static double getMean(Short[] ar) {
		if (ar == null)
			return 0.0;
		return Sum(ar) / ar.length;

	}

	public static double[] getProbs(int[] ar, int min, int max) {
		if (ar == null)
			return null;
		double[] ar2 = new double[max - min];
		for (int i = 0; i < ar.length; i++) {
			if (ar[i] >= min && ar[i] < max) {
				ar2[ar[i] - min]++;

			}

		}
		for (int i = 0; i < ar2.length; i++)
			ar2[i] /= ar.length;
		return ar2;

	}

	public static double[] getIntegralProbs(int[] ar) {
		if (ar == null)
			return null;
		int m = CAN.max(ar);
		double[] ar2 = new double[m + 1];
		for (int t : ar) {
			for (int i = 0; i < ar2.length; i++) {
				if (t <= i)
					ar2[i]++;
			}

		}

		for (int i = 0; i < ar2.length; i++)
			ar2[i] /= ar.length;

		return ar2;
	}

	public static double[] getIntegralProbs(Double[] ar) {
		if (ar == null)
			return null;
		int m = (int) Double.parseDouble((CAN.max(ar)).toString() + 1);
		double[] ar2 = new double[m + 1];
		for (double t : ar) {
			for (int i = 0; i < ar2.length; i++) {
				if (t <= i)
					ar2[i]++;
			}

		}

		for (int i = 0; i < ar2.length; i++)
			ar2[i] /= ar.length;

		return ar2;
	}

	public static double[] getProbs(short[] ar, int min, int max) {
		if (ar == null)
			return null;

		double[] ar2 = new double[max - min];
		//
		for (int i = 0; i < ar.length; i++) {
			if (ar[i] >= min && ar[i] < max) {
				ar2[ar[i] - min]++;

			}

		}
		for (int i = 0; i < ar2.length; i++)
			ar2[i] /= ar.length;
		return ar2;

	}

	public static double[] getProbs(double[] ar, int min, int max) {
		if (ar == null)
			return null;

		double[] ar2 = new double[max - min];
		for (int i = 0; i < ar.length; i++) {
			if (ar[i] >= min && ar[i] < max) {
				ar2[(int) (ar[i] - min)]++;

			}

		}
		for (int i = 0; i < ar2.length; i++)
			ar2[i] /= ar.length;
		return ar2;

	}

	public static double getMean(double[] ar) {
		if (ar == null)
			return 0.0;
		return Sum(ar) / ar.length;

	}

	
	public static double getF(double[] ar) {
		if (ar == null)
			return 0.0;
		double m=getMean(ar);
		double v=getVariance(ar,m);
		return m*m/(m*m+v);

	}	
	
	public static double getMean(Double[] ar) {
		if (ar == null)
			return 0.0;
		return Sum(ar) / ar.length;

	}

	public static double getSdev(double[] ar) {
		if (ar == null)
			return 0.0;
		double m = getMean(ar);
		double sum = 0.0;
		for (double d : ar) {
			sum += ((d - m) * (d - m));

		}
		return Math.sqrt(sum / ar.length);

	}

	public static double getSdev(Double[] ar) {
		if (ar == null)
			return 0.0;
		double m = getMean(ar);
		double sum = 0.0;
		for (double d : ar) {
			sum += ((d - m) * (d - m));

		}
		return Math.sqrt(sum / ar.length);

	}

	public static double getSdev(double[] ar, double mean) {
		if (ar == null)
			return 0.0;
		double sum = 0.0;
		for (double d : ar) {
			sum += ((d - mean) * (d - mean));

		}
		return Math.sqrt(sum / ar.length);

	}

	public static double getVariance(double[] ar, double mean) {
		if (ar == null)
			return 0.0;
		double sum = 0.0;
		for (double d : ar) {
			sum += ((d - mean) * (d - mean));

		}
		return sum / ar.length;

	}

	public static double getSdev(int[] ar, double mean) { //returns standard deviations
		if (ar == null)
			return 0.0;
		double sum = 0.0;
		for (double d : ar) {
			sum += ((d - mean) * (d - mean));

		}
		return Math.sqrt(sum / ar.length);

	}

	public static double getSdev(short[] ar, double mean) {
		if (ar == null)
			return 0.0;
		double sum = 0.0;
		for (double d : ar) {
			sum += ((d - mean) * (d - mean));

		}
		return Math.sqrt(sum / ar.length);

	}

	public static double getSdev(Double[] ar, double mean) {
		if (ar == null)
			return 0.0;
		double sum = 0.0;
		for (double d : ar) {
			sum += ((d - mean) * (d - mean));

		}
		return Math.sqrt(sum / ar.length);

	}

	public static double Sumlog(double[] ar) {
		double tmp = 0.0;
		for (double r : ar) {
			if (r == 0)
				r = SMALL;
			tmp += Math.log(r);
		}
		return tmp;

	}

	public static double[] multVectors(double[]... ds) {

		double[] res = new double[ds[0].length];
		for (int i = 0; i < res.length; i++) {
			res[i] = ds[0][i];
			for (int j = 1; j < ds.length; j++)
				res[i] *= ds[j][i];
		}

		return res;
	}

	public static double[] sumVectors(double[]... ds) {

		double[] res = new double[ds[0].length];
		for (int i = 0; i < res.length; i++) {
			res[i] = ds[0][i];
			for (int j = 1; j < ds.length; j++)
				res[i] += ds[j][i];
		}

		return res;
	}

	public static double[] powVectors(double[] ds, double p) {
		double[] res = new double[ds.length];
		for (int i = 0; i < res.length; i++)
			res[i] = Math.pow(ds[i], p);

		return res;
	}

	public static double[] squareVectors(double[] ds) {
		double[] res = new double[ds.length];
		for (int i = 0; i < res.length; i++)
			res[i] = ds[i] * ds[i];

		return res;
	}

	public static double[] logVectors(double[] ds) {
		double[] res = new double[ds.length];
		for (int i = 0; i < res.length; i++)
			res[i] = Math.log(ds[i]);

		return res;
	}

	/*
	 * Regression abstract Class
	 */

	public abstract static class Regression {
		protected double[] x;
		protected double[] y;
		protected int n;

		public abstract String getName();

		public double A, B, r;

		public abstract void print();

		public abstract void compute();

		public Regression(double[] x, double[] y) {
			this.x = x;
			this.y = y;
			n = x.length;

		}

		public Regression() {
		}

		public Regression(int[] x, double[] y) {
			n = x.length;
			this.x = new double[n];
			for (int j = 0; j < n; j++)
				this.x[j] = x[j] + 0.0;
			this.y = y;

		}

		public Regression(double[] xy, final int minX, final int maxX,
				final int step) {
			ArrayList<Double> xs = new ArrayList<Double>();
			ArrayList<Double> ys = new ArrayList<Double>();
			for (int i = minX; i < maxX; i += step) {
				if (xy[(i - minX) / step] != 0) {
					xs.add(i + 0.0);
					ys.add(xy[(i - minX) / step]);

				}
			}
			x = CAN.Double_to_double(xs.toArray(new Double[0]));
			y = CAN.Double_to_double(ys.toArray(new Double[0]));
			n = x.length;

		}

		public Regression(double[] xy) {
			ArrayList<Double> xs = new ArrayList<Double>();
			ArrayList<Double> ys = new ArrayList<Double>();
			for (int i = 0; i < xy.length; i++) {
				if (xy[i] != 0) {
					xs.add(i + 1.0);
					ys.add(xy[i]);

				}
			}
			x = CAN.Double_to_double(xs.toArray(new Double[0]));
			y = CAN.Double_to_double(ys.toArray(new Double[0]));
			n = x.length;

		}

		public double[] getRealData(double min, double max, double step) {
			// LinkedList <Double> list =new LinkedList<Double>();
			int nn = (int) Math.ceil((max - min) / step);
			double[] res = new double[nn];

			for (int i = 0; i < nn; i++)
				res[i] = min + i * step;

			
			return getRealData(res);


		}

		public double[] getRealData() {
			return getRealData(x);

		}

		public abstract double[] getRealData(double[] dx);

		public void setX(double[] x) {
			this.x = x;
			this.n = x.length;
		}

		public void setY(double[] y) {
			this.y = y;
		}

		public double getA() {

			return A;

		}

		public double getB() {
			return B;

		}

		public double getr() {
			return r;

		}

	}

	/*
	 * Exponential Regression y=A*exp(Bx)
	 */

	public static class ExpRegression extends Regression {
		final static String NAME = "Exponential Regression (y=A*exp(B*x))";

		public String getName() {
			return NAME;
		}

		public ExpRegression() {
		}

		public void print() {
			CAN.print("Exp.Regression: y=" + A + " *e^(n*" + B + ")\nr=" + r);

		}

		public double[] getRealData(double[] dx) {
			double[] res = new double[dx.length];
			for (int i = 0; i < dx.length; i++) {
				res[i] = A * Math.exp(B * dx[i]);

			}
			return res;

		}

		// deprecated
		/*
		 * 
		 * public void computeInv() { //1-E^(-l) for (int i = 0; i < y.length;
		 * i++) y[i]-=1.0;
		 * 
		 * 
		 * double xln[]=new double [n]; double sumx=Sum(x);
		 * CAN.print("sumx="+sumx); double sumlny=Sumlog(y);
		 * CAN.print("sumlny="+sumlny);
		 * 
		 * for(int j=0; j<n; j++) { if(y[j]==0) xln[j]=x[j]*Math.log(SMALL);
		 * else xln[j]=x[j]*Math.log(y[j]); } //CAN.print("xln="+xln);
		 * B=(n*Sum(xln)-sumx*sumlny)/(n*Sum2(x)-sumx*sumx);
		 * A=Math.exp((sumlny-B*sumx)/n);
		 * 
		 * 
		 * }
		 */

		public ExpRegression(double[] x, double[] y) {
			super(x, y);
		}

		public ExpRegression(double[] xy) {
			super(xy);
		}

		public ExpRegression(int[] x, double[] y) {
			super(x, y);
		}

		public ExpRegression(double[] xy, int minX, int maxX, int step) {
			super(xy, minX, maxX, step);
		}

		public void compute() {
			// for(int i=0; i<y.length; i++)
			// if(y[i]==0)
			// y[i]=Double.MIN_VALUE;

			double lny[] = logVectors(y);
			double sumx2 = Sum(squareVectors(x));
			double sumx = Sum(x);
			double sumlny = Sum(lny);
			double sumxlny = Sum(multVectors(x, lny));

			B = (n * sumxlny - sumx * sumlny) / (n * sumx2 - sumx * sumx);
			A = Math.exp((sumlny - B * sumx) / n);
			r = (n * sumxlny - sumx * sumlny)
					/ Math.sqrt((n * sumx2 - sumx * sumx)
							* (n * Sum(squareVectors(lny)) - sumlny * sumlny));

		}

	}

	/*
	 * Power Regression y=A*x^B
	 */

	public static class PowerRegression extends Regression {
		public void print() {
			CAN.print("Power Regression: y=" + A + " *n^(" + B + ")\nr=" + r);
		}

		public double[] getRealData(double[] dx) {
			double[] res = new double[dx.length];
			for (int i = 0; i < dx.length; i++) {
				res[i] = A * Math.pow(dx[i], B);

			}
			return res;

		}

		final static String NAME = "Power Regression (y=A*x^B)";

		public String getName() {
			return NAME;
		}

		public PowerRegression() {
		}

		public PowerRegression(double[] x, double[] y) {
			super(x, y);
		}

		public PowerRegression(double[] xy) {
			super(xy);
		}

		public PowerRegression(int[] x, double[] y) {
			super(x, y);
		}

		public PowerRegression(double[] xy, int minX, int maxX, int step) {
			super(xy, minX, maxX, step);
		}

		public void compute() {

			double lny[] = logVectors(y);
			double lnx[] = logVectors(x);
			double sumlnx2 = Sum(squareVectors(lnx));
			double sumlnx = Sum(lnx);
			double sumlny = Sum(lny);
			double sumlnxlny = Sum(multVectors(lnx, lny));

			B = (n * sumlnxlny - sumlnx * sumlny)
					/ (n * sumlnx2 - sumlnx * sumlnx);
			A = Math.exp((sumlny - B * sumlnx) / n);
			r = (n * sumlnxlny - sumlnx * sumlny)
					/ Math.sqrt((n * sumlnx2 - sumlnx * sumlnx)
							* (n * Sum(squareVectors(lny)) - sumlny * sumlny));

		}

	}

	
	
	/*
	 * Linear Regression y=A+Bx
	 */
	public static class LinearRegression extends Regression {

		// public final static String name="LinearRegression ()"

		final static String NAME = "Linear Regression (y=A+B*x)";

		public String getName() {
			return NAME;
		}

		LinearRegression() {
		}

		public void print() {
			CAN.print("Linear Regression: y=" + A + " +n*(" + B + ")\nr=" + r);
		}

		public LinearRegression(double[] xy, int minX, int maxX, int step) {
			super(xy, minX, maxX, step);
		}

		public double[] getRealData(double[] dx) {
			double[] res = new double[dx.length];
			for (int i = 0; i < dx.length; i++) {
				res[i] = A + B * dx[i];

			}
			return res;

		}

		public LinearRegression(double[] x, double[] y) {
			super(x, y);
		}

		public LinearRegression(double[] xy) {
			super(xy);
		}

		public LinearRegression(int[] x, double[] y) {
			super(x, y);
		}

		public void compute() {
			double sumx = Sum(x);
			double sumy = Sum(y);

			double sumxy = Sum(multVectors(x, y));
			double sumx2 = Sum(squareVectors(x));

			B = (n * sumxy - sumx * sumy) / (n * sumx2 - sumx * sumx);
			A = (sumy - B * sumx) / n;
			r = (n * sumxy - sumx * sumy)
					/ Math.sqrt((n * sumx2 - sumx * sumx)
							* (n * Sum(squareVectors(y)) - sumy * sumy));

		}

	}

	/*
	 * Logarithmic Regression y=A+B*ln(x)
	 */
	public static class LogarithmicRegression extends Regression {
		public LogarithmicRegression() {
		}

		final static String NAME = "Logarithmic Regression (y=A+B*ln(x))";

		public String getName() {
			return NAME;
		}

		public void print() {
			CAN.print("Logarithmic Regression: y=" + A + " +lnn*(" + B
					+ ")\nr=" + r);
		}

		public LogarithmicRegression(double[] xy, int minX, int maxX, int step) {
			super(xy, minX, maxX, step);
		}

		public double[] getRealData(double[] dx) {
			double[] res = new double[dx.length];
			for (int i = 0; i < dx.length; i++) {
				res[i] = A + B * Math.log(dx[i]);

			}
			return res;

		}

		public LogarithmicRegression(double[] x, double[] y) {
			super(x, y);
		}

		public LogarithmicRegression(double[] xy) {
			super(xy);
		}

		public LogarithmicRegression(int[] x, double[] y) {
			super(x, y);
		}

		public void compute() {

			double sumy = Sum(y);
			double lnx[] = logVectors(x);
			double sumlnx = Sum(lnx);
			double sumlnxy = Sum(multVectors(lnx, y));
			double sumlnx2 = Sum(squareVectors(lnx));

			B = (n * sumlnxy - sumlnx * sumy) / (n * sumlnx2 - sumlnx * sumlnx);
			A = (sumy - B * sumlnx) / n;
			r = (n * sumlnxy - sumlnx * sumy)
					/ Math.sqrt((n * sumlnx2 - sumlnx * sumlnx)
							* (n * Sum(squareVectors(y)) - sumy * sumy));

		}

	}

	public static void test1() {
		int[] ar = { 1, 1, 2, 3, 3, 4, 5 };

		CAN.print(Distribution.getIntegralProbs(ar));

		Double[] arr = new Double[100];
		for (int i = 0; i < arr.length; i++) {
			arr[i] = nextExponential(2.2);

		}

		CAN.println(Distribution.getIntegralProbs(arr));

	}

	public static void test2() {
		double d1[] = { 1.0, 1.0, 1.0 };
		double d2[] = { 2.0, 2.0, 3.0 };
		CAN.print(multVectors(d1, d2));

	}

	
	public static void main(String[] args) {
		//test2();
		Newton();
		
	}

}