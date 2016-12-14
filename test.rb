require './graph.rb'
require './node.rb'
require './BellmanFord.rb'

graph = Graph.new

#graph.add_node(node0 = Node.new("0"))
#graph.add_node(node1 = Node.new("1"))
#graph.add_node(node2 = Node.new("2"))
#graph.add_node(node3 = Node.new("3"))
#graph.add_node(node4 = Node.new("4"))

graph.add_node(node1 = Node.new("1"))
graph.add_node(node2 = Node.new("2"))
graph.add_node(node3 = Node.new("3"))
graph.add_node(node4 = Node.new("4"))
graph.add_node(node5 = Node.new("5"))

#graph.add_edge(node0, node1, 1)
#graph.add_edge(node0, node4, 2)
#graph.add_edge(node1, node2, 4)
#graph.add_edge(node2, node4, 1)
#graph.add_edge(node2, node3, 20)
#graph.add_edge(node4, node3, -25)
#graph.add_edge(node1, node4, 1)

graph.add_edge(node1, node2, 5)
graph.add_edge(node1, node3, 3)
graph.add_edge(node2, node5, 4)
graph.add_edge(node3, node4, 2)
graph.add_edge(node4, node5, 25)
graph.add_edge(node4, node2, -2)

bf = BellmanFord.new(graph, node1)
shortest_path = bf.shortest_path_to(node4)

shortest_path.each do |n|
 print n.to_s + ' '
end


