package euler;

import utils.Edge;
import utils.Vertex;

public class Problem81Edge implements Edge {

	private  Vertex source;
	private Vertex destination;
	private  int weight; 

	
	
	
	public void setSource(Vertex source) {
		this.source = source;
		if(source!=null && destination!=null)
		this.weight = source.getValue()+destination.getValue();
	}

	public void setDestination(Vertex destination) {
		this.destination = destination;
		if(source!=null && destination!=null)
		this.weight = source.getValue()+destination.getValue();
		
	}

	public Problem81Edge(Vertex source, Vertex destination) {
		this.source = source;
		this.destination = destination;
		if(source!=null && destination!=null)
		this.weight = source.getValue()+destination.getValue();
		else this.weight=-1;
	}

	@Override
	public Vertex getDestination() {
		return destination;
	}

	
	public String toString() {
		return "{"+source+"->"+destination+","+getWeight()+"}";
		
		
	}
	
	
	
	@Override
	public Vertex getSource() {
		return source;
	}

	@Override
	public int getWeight() {
		return weight;
	}

	
	public void setWeight(int w) {weight=w;}
}
