package utils;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;


public class DijkstraAlgorithm
{
  private final List<Edge> edges;
  private Set<Vertex> settledNodes;
  private Set<Vertex> unSettledNodes;
  private Map<Vertex, Vertex> predecessors;
  private Map<Vertex, Integer> distance;
  
  public DijkstraAlgorithm(Graph graph)
  {
    edges = new ArrayList(graph.getEdges());
  }
  
  public void execute(Vertex source)
  {
    settledNodes = new HashSet();
    unSettledNodes = new HashSet();
    distance = new HashMap();
    predecessors = new HashMap();
    distance.put(source, 0);
    unSettledNodes.add(source);
    while (unSettledNodes.size() > 0) {
      Vertex node = getMinimum(unSettledNodes);
      settledNodes.add(node);
      unSettledNodes.remove(node);
      findMinimalDistances(node);
    }
  }
  
  private void findMinimalDistances(Vertex node) {
    List<Vertex> adjacentNodes = getNeighbors(node);
    for (Vertex target : adjacentNodes)
    {
       int t1=  getShortestDistance(target);
       int t2 = getShortestDistance(node);
       int t3 = getDistance(node, target);
      if (t1 > t2 + t3) {
        distance.put(target, 
          t2 +t3 );
        predecessors.put(target, node);
        unSettledNodes.add(target);
      }
    }
  }
  
  private int getDistance(Vertex node, Vertex target)
  {
    Set<Edge> _e = new HashSet<>(node.getEdges());
    _e.retainAll(target.getEdges());
    for (Edge edge : _e) {
    //for (Edge edge : edges) {
      if ((edge.getSource().equals(node)) && 
        (edge.getDestination().equals(target))) {
        return edge.getWeight();
      }
    }
    throw new RuntimeException("Should not happen");
  }
  
  private List<Vertex> getNeighbors(Vertex node) {
    List<Vertex> neighbors = new ArrayList();
    
    //for (Edge edge : edges) {
    for (Edge edge : node.getEdges()) {
      if ((edge.getSource().equals(node)) && 
        (!isSettled(edge.getDestination()))) {
        neighbors.add(edge.getDestination());
      }
    }
    return neighbors;
  }
  
  /**
  * Find the minimum distance to a set of destinations
  * @param vertexes
  * @return 
  */
  
  private Vertex getMinimum(Set<Vertex> vertexes) {
    Vertex minimum = null;
    for (Vertex vertex : vertexes) {
      if (minimum == null) {
        minimum = vertex;
      }
      else if (getShortestDistance(vertex) < getShortestDistance(minimum)) {
        minimum = vertex;
      }
    }
    
    return minimum;
  }
  
  private boolean isSettled(Vertex vertex) {
    return settledNodes.contains(vertex);
  }
  
  public int getShortestDistance(Vertex destination) {
    Integer d = distance.get(destination);
    if (d == null) {
      return Integer.MAX_VALUE;
    }
    return d;
  }
  




  public LinkedList<Vertex> getPath(Vertex target)
  {
    LinkedList<Vertex> path = new LinkedList();
    Vertex step = target;
    
    if (predecessors.get(step) == null) {
      return null;
    }
    path.add(step);
    while (predecessors.get(step) != null) {
      step = (Vertex)predecessors.get(step);
      path.add(step);
    }
    
    Collections.reverse(path);
    return path;
  }
  
  public static void main(String[] args) {}
}
