class BellmanFord
  def initialize(graph, source_node)
    @graph = graph
    @source_node = source_node
    @path_to = {}
    @distance_to = {}

    compute_shortest_path
  end

  def shortest_path_to(node)
    path = []
    while node != @source_node
    # Add node at first element of path
      path.unshift(node)        
      node = @path_to[node]
    end
    path.unshift(@source_node)
  end

  # private_class_method
  
  def compute_shortest_path
  # All edges are initialized to infinity
    
    update_distance_of_all_edges_to(Float::INFINITY)
    @distance_to[@source_node] = 0

    # Then we relax(approximate) each edge
    @graph.nodes.size.times do
      @graph.edges.each do |edge|
        relax(edge)
      end
    end
  end

  def update_distance_of_all_edges_to(distance)
    @graph.nodes.each do |node|
      @distance_to[node] = distance
    end
  end

  def relax(edge)              
  #Approximate the length of each edge
    if @distance_to[edge.to] > @distance_to[edge.from] + edge.weight
      @distance_to[edge.to] = @distance_to[edge.from] + edge.weight
      @path_to[edge.to] = edge.from
    end
  end
end


