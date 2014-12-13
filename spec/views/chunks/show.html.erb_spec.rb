require 'spec_helper'

describe "chunks/show" do
  before(:each) do
    @chunk = assign(:chunk, stub_model(Chunk,
      :order_id => 1,
      :bean_id => 1,
      :quantity => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
  end
end
