require 'minitest/autorun'

require "./graph.rb"
require './node.rb'
require './edge.rb'
require './BellmanFord.rb'

describe BellmanFord do
  before do
    @graph = Graph.new

    @graph.add_node(@node0 = Node.new("Node #0"))
    @graph.add_node(@node1 = Node.new("Node #1"))
    @graph.add_node(@node2 = Node.new("Node #2"))
    @graph.add_node(@node3 = Node.new("Node #3"))
    @graph.add_node(@node4 = Node.new("Node #4"))
  end

  it 'finds the shortest path with negative weights' do
    @graph.add_edge(@node0, @node1, 1)
    @graph.add_edge(@node0, @node4, 2)
    @graph.add_edge(@node1, @node2, 4)
    @graph.add_edge(@node2, @node4, 1)
    @graph.add_edge(@node2, @node3, 20)
    @graph.add_edge(@node3, @node4, -25)
    @graph.add_edge(@node4, @node2, 1)

    shortest_path = BellmanFord.new(@graph, @node0).shortest_path_to(@node4)
    #shortest_path = BellmanFord.new(@graph, @node0).shortest_path_to(@node2)
    shortest_path.must_equal [@node0, @node1, @node2, @node3, @node4]
    #shortest_path.must_equal [@node0, @node1, @node2]
  end
end
