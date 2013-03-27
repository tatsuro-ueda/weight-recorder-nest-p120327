require 'spec_helper'

describe "weights/index" do
  before(:each) do
    assign(:weights, [
      stub_model(Weight,
        :user => nil,
        :weight => "9.99",
        :memo => "MyText"
      ),
      stub_model(Weight,
        :user => nil,
        :weight => "9.99",
        :memo => "MyText"
      )
    ])
  end

  it "renders a list of weights" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
