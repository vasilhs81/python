//
//# The minimal path sum in the 5 by 5 matrix below, by starting in any cell in the left column and finishing
//# in any cell in the right column, and only moving up, down, and right, is indicated
//# in red and bold; the sum is equal to 994.
//#
//#
//# Find the minimal path sum, in matrix.txt (right click and "Save Link/Target As..."),
//# a 31K text file containing a 80 by 80 matrix, from the left column to the right column.
//
//
//# Dijkstra's algorithm for shortest paths
//# David Eppstein, UC Irvine, 4 April 2002
//
//# http://aspn.activestate.com/ASPN/Cookbook/Python/Recipe/117228
//
package euler;

import java.util.LinkedList;
import java.util.Set;

import utils.*;

public class Problem82 extends utils.CAN {

    private final static double[][] testData = {
        {131, 673, 234, 103, 18},
        {201, 96, 342, 965, 150},
        {630, 803, 746, 422, 111},
        {537, 699, 497, 121, 956},
        {805, 732, 524, 37, 331}};

    private int sumPath(DijkstraAlgorithm dij, Vertex endVertex) {
        LinkedList<Vertex> list = dij.getPath(endVertex);
        int sum = 0;
        for (Vertex v : list) {
            sum += v.getValue();
        }
        return sum;
    }
    
    private void printShortestPath(DijkstraAlgorithm dij, Vertex endVertex){
        LinkedList<Vertex> list = dij.getPath(endVertex);
        for (Vertex v : list) {
            System.out.println(v.getValue());
        }
        
    }
    

    public void run(double[][] d) {
        Problem82Graph gr = new Problem82Graph(d);
        System.out.println("Graph Intialized");
        DijkstraAlgorithm dij = new DijkstraAlgorithm(gr);
        Set<Vertex> startVertexes = gr.getStartVertexes();
        Set<Vertex> endVertexes = gr.getEndVertexes();
        int minValue = Integer.MAX_VALUE;

        Vertex startGood = null;
        Vertex endGood = null;
        
        for (Vertex sv : startVertexes) {
//            System.out.println("Running Iteration for Start Vertex: " + sv.getValue());
            dij.execute(sv);
            for (Vertex ev : endVertexes) {
//                System.out.println("Get Shortest Path for End Vertex: " + ev.getValue());
                int s = sumPath(dij, ev);
                if (s < minValue) {
                    minValue = s;
//                    System.out.println("Minimum Value: " + minValue);
                }
            }
        }

        System.out.println("minValue = " + minValue);

    }

    public static void main(String[] args) {
        Problem82 p = new Problem82();

        double [][]d=readMatrixFile("p082_matrix.txt",",",80);
        p.run(d);
        
        //p.run(testData); //994

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
                if(i<N-1)best = java.lang.Math.min(best,dp[i+1][j]);
                if(j<N-1)best = java.lang.Math.min(best,dp[i][j+1]);
                if(best==Integer.MAX_VALUE)best = 0;
                dp[i][j]+=best;
            }
        }
        System.out.println(dp[0][0]);
    }
}


 */
