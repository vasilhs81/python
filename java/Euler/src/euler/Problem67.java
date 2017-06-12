package euler;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

import utils.*;
public class Problem67 extends utils.CAN{

	
	
	
	
	public static void run() {
			

		int [][]d=readMatrixFileInt("triangle0.txt"," ",15);
		
		
		
		
		Problem67Graph gr=new Problem67Graph(d);

		
		List<Vertex> list=gr.getDestinationVertexes();
		List<Integer> sums=new ArrayList<Integer>();
		DijkstraAlgorithm dij=new DijkstraAlgorithm(gr);
		dij.execute(gr.getStartVertex());	
		
		for(Vertex v:list) {
			print("\n");
		LinkedList<Vertex> path=dij.getPath(v);
		int sum=0;
		for (Vertex v1:path) { 
			sum+=v1.getValue();
			print(""+v1);
		}
		sums.add(sum);	
		print("->"+sum);
		
			
			//sums.add(dij.getShortestDistance(v));		
		
		
		
		}
		
//		print(CAN.Integer_to_int(sums.toArray(new Integer[0])));
		Object obj = Collections.min((sums));
		print(""+Math.abs(Integer.parseInt(obj.toString())));
		
//		print(""+dij.getShortestDistance(gr.getDestinationVertex()));
		
	
	
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

