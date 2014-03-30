class QuickUnion

  attr_accessor :nodes, :connections

  def initialize(n)
    @nodes= *(0..(n-1))
  end

  def union(p,q)
    nodes[q] = p
  end

  def connected(p,q)
  end
end
