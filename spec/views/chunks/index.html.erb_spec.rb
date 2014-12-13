require 'spec_helper'

describe "chunks/index" do
  before(:each) do
    assign(:chunks, [
      stub_model(Chunk,
        :order_id => 1,
        :bean_id => 1,
        :quantity => 1.5
      ),
      stub_model(Chunk,
        :order_id => 1,
        :bean_id => 1,
        :quantity => 1.5
      )
    ])
  end

  it "renders a list of chunks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
