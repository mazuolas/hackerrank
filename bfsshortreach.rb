#!/bin/ruby

def bfs(n, m, edges, s)
    # Complete this function
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
