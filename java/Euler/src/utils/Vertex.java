package utils;

import java.util.Set;

public interface Vertex {
    public Set<Edge> getEdges();
	public int getValue();
	public boolean equals(Object obj);
//	public String getId();
	public String toString();
	public int getX();
	public int getY();
}
