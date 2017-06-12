package euler;
import utils.CAN;
public class Problem9 extends CAN {
private int a,b,c,k;

public boolean isSolved() {return c>0;}

public Problem9(int k) {
	this.k=k;
	a=b=c=-1;
}

public void solve() {

	for(b=1; b<k/2; b++) {
		
		if((k*k-2*b*k)%(2*k-2*b)==0) {
			a=(k*k-2*b*k)/(2*k-2*b);
			c=k-a-b;
			break;
			
		}
		
		
	}
	
	
}
	

public void showResults() {
	println("a="+a+",b="+b+",c="+c);
	println("abc="+a*b*c);
	}

	
	/**
	 * @param args
	 */
	public static void main(String[] args) {

		Problem9 p=new Problem9(10000);
		p.solve();
		p.showResults();
		
	}

}
