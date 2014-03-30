require "minitest/autorun"
require_relative "../lib/quick_union"

describe QuickUnion do

  before do
    @qf = QuickUnion.new(10)
  end

  it "should have node lengh of 10" do
    @qf.nodes.count.must_equal 10
  end

  it "should have changes to value when union" do
    @qf.union(2,1)
    @qf.union(3,1)
    @qf.union(5,3)
    @qf.union(7,5)
    @qf.union(9,5)
    
    @qf.connected?(7,9).must_equal true
    @qf.connected?(2,3).must_equal true
    @qf.connected?(0,4).must_equal false
  end

end
