package utils;
public interface Edge {
	public Vertex getDestination();
	public Vertex getSource();
	public void setDestination(Vertex b);
	public void setSource(Vertex b);
	public int getWeight();
	public String toString();
	
	
	
	
}
