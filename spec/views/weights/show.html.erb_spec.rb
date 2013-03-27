require 'spec_helper'

describe "weights/show" do
  before(:each) do
    @weight = assign(:weight, stub_model(Weight,
      :user => nil,
      :weight => "9.99",
      :memo => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/9.99/)
    rendered.should match(/MyText/)
  end
end
