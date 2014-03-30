class QuickUnion

  attr_accessor :nodes, :connections

  def initialize(n)
    @nodes= *(0..(n-1))
  end

  #solve with recursion
  def root_v1(value) 
    parent = nodes[value]
    grand_parent = nodes[parent]
    if(parent!=grand_parent)
      root(parent)
    else
      parent
    end
  end

  def root_v2(value)
    while(value!=nodes[value]) do 
      value = nodes[value]
    end
    value
  end

  def root(value)
    root_v2(value) 
  end

  def union(p,q)
    root_of_p = root(p)
    root_of_q = root(q)
    nodes[root_of_p]=root_of_q
  end

  def connected?(p,q)
    root(p)==root(q)
  end
end
