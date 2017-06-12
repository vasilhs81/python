package euler;

import java.util.ArrayList;

import utils.*;

;

public class Problem81Graph extends Graph {

    public Problem81Graph(double[][] data) {
        super(new ArrayList<Vertex>(data.length), new ArrayList<Edge>(data.length));
        final int dim = data.length;
        Vertex v = null;
        Edge e = null;
        for (int i = 0; i < dim; i++) {
            for (int j = 0; j < dim; j++) {
                v = new Problem81Vertex((int) (data[i][j]), i, j);
                if (e != null) {
                    e.setDestination(v);
                }
                vertexes.add(v);
                if (j != dim - 1) {
                    e = new Problem81Edge(v, null);
                    edges.add(e);
                    e.getSource().getEdges().add(e);
                    e.getDestination().getEdges().add(e);
                    
                } else {
                    e = null;
                }

                if (i != 0) {
                    Edge e1 = new Problem81Edge(vertexes.get((i - 1) * dim + j), v);
                    edges.add(e1);
                    e1.getSource().getEdges().add(e1);
                    e1.getDestination().getEdges().add(e1);
                }

            }

        }

//double [][]data=CAN.readMatrixFile("matrix.txt",",",80);
    }

    public Vertex getStartVertex() {
        return vertexes.get(0);
    }

    public Vertex getDestinationVertex() {
        return vertexes.get(vertexes.size() - 1);
    }

    public static void main(String[] args) {

        ArrayList list = new ArrayList(10);
        for (int i = 0; i < 10; i++) {
            list.add(i);
        }

        for (int i = 0; i < 10; i++) {
            System.out.println(list.get(i));
        }

    }

}
