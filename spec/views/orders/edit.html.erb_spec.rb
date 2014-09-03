require 'spec_helper'

describe "orders/edit" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
      :profile_id => 1,
      :eight_oz => 1,
      :twelve_oz => 1,
      :sixteen_oz => 1,
      :eighty_oz => 1,
      :total_oz => 1
    ))
  end

  it "renders the edit order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orders_path(@order), :method => "post" do
      assert_select "input#order_profile_id", :name => "order[profile_id]"
      assert_select "input#order_eight_oz", :name => "order[eight_oz]"
      assert_select "input#order_twelve_oz", :name => "order[twelve_oz]"
      assert_select "input#order_sixteen_oz", :name => "order[sixteen_oz]"
      assert_select "input#order_eighty_oz", :name => "order[eighty_oz]"
      assert_select "input#order_total_oz", :name => "order[total_oz]"
    end
  end
end
