package euler;

import java.util.ArrayList;
import java.util.List;

import utils.*;


public class Problem67Graph extends Graph {
	
	int [][]data;
	Vertex head;
	public void recur(Vertex v,int i,int j) {
		if(i!=data.length-1) {
			Vertex vl=new Problem81Vertex((int)(-data[i+1][j]),i+1,j);
			int il,ir;
			if((il=vertexes.indexOf(vl))>=0)
				vl=vertexes.get(il);
			else vertexes.add(vl);	
			Vertex vr=new Problem81Vertex((int)(-data[i+1][j+1]),i+1,j+1);
			
			
			if((ir=vertexes.indexOf(vr))>=0)
				vr=vertexes.get(ir);
			else vertexes.add(vr);
			Edge el=new Problem81Edge(v,vl);
			Edge er=new Problem81Edge(v,vr);
			edges.add(el);
			edges.add(er);
			if(il<0)
				recur(vl,i+1,j);
			if(ir<0)
				recur(vr,i+1,j+1);
		}			
				
	}
	
	
	public Problem67Graph(int [][] data) {
	super(new ArrayList<Vertex>(data.length),new ArrayList<Edge>(data.length));
	this.data=data;
	head=new Problem81Vertex(-data[0][0],0,0);
	vertexes.add(head);
	recur(head,0,0);
	for(Vertex v:vertexes)
		CAN.print(""+v);
	
	for(Edge e:edges)
		CAN.print(""+e);
	
	
	
}


public Vertex getStartVertex() {
	return head;
}

public List<Vertex> getDestinationVertexes() {
	ArrayList<Vertex>list =new ArrayList<Vertex>();
	for(Vertex v:vertexes) 
		if(v.getX()==data.length-1)
			list.add(v);
	
	return list;
}

public static void main(String[]args) {
	
	ArrayList list=new ArrayList(10);
	for(int i=0; i<10; i++)
		list.add(i);
	
for(int i=0; i<10; i++)
	System.out.println(list.get(i));

}
	
	
}
