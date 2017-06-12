package utils;
import java.util.List;

//import sun.security.provider.certpath.Vertex;
public class Graph {
	public final List<Vertex> vertexes;
	protected final List<Edge> edges;

	public Graph(List<Vertex> vertexes, List<Edge> edges) {
		this.vertexes = vertexes;
		this.edges = edges;
	}

	public void addVertex(Vertex v) {vertexes.add(v);}
	public void addEdge(Edge e) {edges.add(e);}
	
	
	
	public List<Vertex> getVertexes() {
		return vertexes;
	}

	public List<Edge> getEdges() {
		return edges;
	}
	

}
