package euler;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

import utils.*;

;

public class Problem83Graph extends Graph {
    private final int dim ;
    public Problem83Graph(double[][] data) {
        super(new ArrayList<Vertex>(data.length), new ArrayList<Edge>(data.length));
        dim = data.length;
        Vertex v = null;
        Edge e = null;
        for (int i = 0; i < dim; i++) {
            for (int j = 0; j < dim; j++) {
                v = new Problem81Vertex((int) (data[i][j]), i, j);
                if (e != null) {
                    e.setDestination(v);
                    e.getDestination().getEdges().add(e);
                    
                    e = new Problem81Edge(e.getDestination(), e.getSource());
                    e.getDestination().getEdges().add(e);
                    e.getSource().getEdges().add(e);
                }
                vertexes.add(v);
                if (j != dim - 1) {
                    e = new Problem81Edge(v, null);
                    edges.add(e);
                    e.getSource().getEdges().add(e);
                } else {
                    e = null;
                }

                if (i != 0) {
                    Edge e1 = new Problem81Edge(vertexes.get((i - 1) * dim + j), v);
                    edges.add(e1); //add up
                    e1.getSource().getEdges().add(e1);
                    e1.getDestination().getEdges().add(e1);
                    
                    e1 = new Problem81Edge(v, vertexes.get((i - 1) * dim + j));
                    edges.add(e1); //add down
                    e1.getSource().getEdges().add(e1);
                    e1.getDestination().getEdges().add(e1);

                }
            }

        }

//double [][]data=CAN.readMatrixFile("matrix.txt",",",80);
    }
    
    public Set<Vertex> getStartVertexes(){
        Set<Vertex> _set = new HashSet<>();
        
        for (int i = 0; i < dim; i++) {
            _set.add(vertexes.get( i*dim));
        }
        return _set;
    }
    public Set<Vertex> getEndVertexes(){
        Set<Vertex> _set = new HashSet<>();
        
        for (int i = 0; i < dim; i++) {
            _set.add(vertexes.get( i*dim + dim -1));
        }
        return _set;
    }
    

    public Vertex getStartVertex() {
        return vertexes.get(0);
    }
    
    public Vertex getEndVertex() {
        return vertexes.get(vertexes.size()-1);
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
