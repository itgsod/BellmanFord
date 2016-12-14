class Graph
    attr_accessor :nodes, :edges
    
    def initialize (nodes,edges)
        @nodes = []
        @edges = []
    end
    
    def add_node(node)
        @nodes << node
    end
    
    def add_edge(from,weight,to)
        @edges << Edge.new(from,weight,to)
    end


end

class Node
    attr_accessor :value
    
    def initialize (value)
        @value = value
    end
    



end
class Edge

    attr_accessor :from, :weight, :to
    
    def initialize (from, weigth, to)
        @from, @weigth, @to = from, weigth, to
    end
    

end


class BellanFord
    
    def initialize(graph, source_node)
       @graph, @source_node = graph, source_node
       @distance_to = {}
    end
    
    def shotest_path(node)
    
    
    end
    
    def update_distances(distance)
        @graph.nodes.each do |node|
           distance_to[node] = distance 
        end
    end
    
    def relax
    
    
    end

    def

end




end
