class QuickUnion

  attr_accessor :nodes, :connections

  def initialize(n)
    @nodes= *(0..(n-1))
  end

  #solve with recursion
  def root(value) 
    parent = nodes[value]
    grand_parent = nodes[parent]
    if(parent!=grand_parent)
      root(parent)
    else
      parent
    end
  end

  def union(p,q)
    nodes[p]=q
  end

  def connected?(p,q)
    root(p)==root(q)
  end
end
