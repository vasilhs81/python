package euler;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import utils.*;




public class Problem81Vertex implements Vertex {
	private int value;
	private int x;
	private int y;
	
    private final Set<Edge> edges;

    public Problem81Vertex(){
        super();
        edges = new HashSet<>();
    }
    
    
    @Override
    public Set<Edge> getEdges() {
        return edges;
    }

    
    
	
	public int getValue() {
		return value;
	}

	protected void setValue(int value) {
		this.value = value;
	}

	public int getX() {
		return x;
	}

	protected void setX(int x) {
		this.x = x;
	}

	public int getY() {
		return y;
	}

	protected void setY(int y) {
		this.y = y;
	}
	public String toString() {
		return "("+this.x+","+this.y+","+this.value+")";
		
	}
	public Problem81Vertex(int value, int x, int y) {
		this.value = value;
		this.x = x;
		this.y = y;
        edges = new HashSet<>();
	}
	
	
	public int hasValue() {return value;}
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Problem81Vertex other = (Problem81Vertex) obj;
		if(other.getX()==x && other.getY()==y)
		return true;
		return false;	
		
		
	}
//	public String getId();
//	public String toString();


	
	
	
	public String getId() {
		return null;
	}

	/*@Override
	public int hashValue() {
		return value;
	}
*/
	
	
	
}
