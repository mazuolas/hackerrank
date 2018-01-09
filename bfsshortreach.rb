#!/bin/ruby
class Node
  attr_accessor :value, :edges

  def initialize(v)
    @value = v
    @edges = []
  end

  def add_edge(e)
    @edges << e
  end

  def find_distance(target)
    distance = 6
    queue = @edges.dup
    seen = queue.dup
    until queue.empty?
      return distance if queue.include?(target)
      distance += 6
      children = []
      queue.each do |n|
        n.edges.each do |e|
          unless seen.include?(e)
            children << e
            seen << e
          end
        end
      end
      queue = children
    end
    -1
  end
end

def bfs(n, m, edges, s)
    # Complete this function
    nodes = []
    (n+1).times do |n|
      nodes << Node.new(n)
    end
    edges.each do |edge|
      u, v = edge[0], edge[1]
      nodes[u].add_edge(nodes[v])
      nodes[v].add_edge(nodes[u])
    end
    target = nodes[s]
    distances = []
    (n+1).times do |n|
      next if (n == 0 || n == s)
      distances << nodes[n].find_distance(target)
    end
    distances
end

q = gets.strip.to_i
for a0 in (0..q-1)
    n, m = gets.strip.split(' ')
    n = n.to_i
    m = m.to_i
    edges = Array.new(m)
    for edges_i in (0..m-1)
        edges_t = gets.strip
        edges[edges_i] = edges_t.split(' ').map(&:to_i)
    end
    s = gets.strip.to_i
    result = bfs(n, m, edges, s)
    print result.join(" ")


end

# n = 4
# m = 2
# edges = [[1,2],[1,3]]
# s = 1
# p bfs(n, m, edges, s)
