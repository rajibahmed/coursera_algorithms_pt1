require "minitest/autorun"
require_relative "../quick_find"

describe QuickFind do

  before do
    @qf = QuickFind.new(10)
  end

  it "should have node lengh of 10" do
    @qf.nodes.count.must_equal 10
  end

  it "should have changes to value when union" do
    @qf.union(3,4)
    @qf.union(1,3)
    @qf.union(5,6)
    @qf.connected(3,4).must_equal true
    @qf.connected(5,4).must_equal false
    @qf.connected(1,4).must_equal true
  end
end
