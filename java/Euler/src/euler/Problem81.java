/*
In the 5 by 5 matrix below, the minimal path sum from the top left to the bottom right, 
by only moving to the right and down, is indicated in bold red and is equal to 2427.
Find the minimal path sum, in matrix.txt (right click and "Save Link/Target As..."), 
a 31K text file containing a 80 by 80 matrix, from the top left to the bottom right 
by only moving right and down.
*/

package euler;
import java.util.LinkedList;

import utils.*;
public class Problem81 extends utils.CAN{

	
	
	
	
	public static void run() {
		//
		double[][] testData= {
				{131,673,234,103,18},
				{201,96,342,965,150},
				{630,803,746,422,111},
				{537,699,497,121,956},
				{805,732,524,37,331}};
		

		double [][]d=readMatrixFile("matrix.txt",":",80);
		
		
		
		
		Problem81Graph gr=new Problem81Graph(d);
		
		DijkstraAlgorithm dij=new DijkstraAlgorithm(gr);
		dij.execute(gr.getStartVertex());
		
//		print(""+dij.getShortestDistance(gr.getDestinationVertex()));
		
		LinkedList<Vertex> list=dij.getPath(gr.getDestinationVertex());
		int sum=0;
		for (Vertex v:list) {
			sum+=v.getValue();
			//print(""+v.getValue());
		
		}
	print(sum+"");
	}
	
	
	public static void main(String[] args) {
		run();
	}

}

/*

public class Euler81 {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int N = 80;
        int[][] dp = new int[N][N];
        for(int i=0;i<N;i++) {
            String[] a = in.next().split(",");
            for(int j=0;j<N;j++) {
                dp[i][j]=Integer.parseInt(a[j]);
            }
        }
        for(int i=N-1;i>=0;i--) {
            for(int j=N-1;j>=0;j--) {
                int best = Integer.MAX_VALUE;
                if(i<N-1)best = Math.min(best,dp[i+1][j]);
                if(j<N-1)best = Math.min(best,dp[i][j+1]);
                if(best==Integer.MAX_VALUE)best = 0;
                dp[i][j]+=best;
            }
        }
        System.out.println(dp[0][0]);
    }
}


*/

