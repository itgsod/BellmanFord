require './edge.rb'

class Graph
  attr_accessor :nodes
  attr_accessor :edges

  def initialize
    @nodes = []
    @edges = []
  end

  def add_node(node)
    nodes << node # Push node at the end of nodes
    node.graph = self # The new node becomes a new object in graph 
  end

  def add_edge(from, to, weight)
    edges << Edge.new(from, to, weight)
  end
end
