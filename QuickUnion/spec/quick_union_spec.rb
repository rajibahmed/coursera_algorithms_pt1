require "minitest/autorun"
require_relative "../quick_union"

describe QuickUnion do

  before do
    @qf = QuickUnion.new(10)
  end

  it "should have node lengh of 10" do
    @qf.nodes.count.must_equal 10
  end

  it "should have changes to value when union" do
    @qf.union(4,3)
    @qf.union(3,8)
    @qf.union(9,4)
    @qf.union(6,5)
    # @qf.connected(3,4).must_equal true
    # @qf.connected(5,4).must_equal false
    # @qf.connected(1,4).must_equal true
    p @qf.nodes
  end
end
