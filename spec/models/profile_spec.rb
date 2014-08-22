require 'spec_helper'

describe Profile do
  it "should find beans associated to it" do
    profile = Profile.create(name: "Example")
    bean = Bean.create(name: "Test Bean")
    ingredient = Ingredient.create(
    	:profile  => profile,
    	:bean     => bean,
    	:quantity => 0.25
    )

    profile.reload
    profile.beans.size.should == 1
    profile.beans.first.should == bean
  end
end
