require 'spec_helper'

describe Bean do
  it "should respond to #class" do
    Bean.new.class.should == Bean
  end
end
