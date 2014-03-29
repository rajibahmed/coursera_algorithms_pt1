class QuickFind

  attr_accessor :nodes, :connections

  def initialize(n)
    @nodes= *(0..(n-1))
  end

  def union(px,py)
    pval = nodes[px]
    qval = nodes[py]
    if nodes[px]!=nodes[py]
      nodes[py]=nodes[px]
    end
    nodes.each_with_index do |value,index|
     if value == qval
       nodes[index] = pval
     end
    end
  end

  def connected(px, py)
     nodes[px] == nodes[py]
  end
end
