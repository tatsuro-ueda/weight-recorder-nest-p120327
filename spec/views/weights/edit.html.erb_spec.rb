require 'spec_helper'

describe "weights/edit" do
  before(:each) do
    @weight = assign(:weight, stub_model(Weight,
      :weight => "9.99",
      :memo => "MyText"
    ))
  end

  it "renders the edit weight form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", weight_path(@weight), "post" do
      assert_select "input#weight_weight[name=?]", "weight[weight]"
      assert_select "textarea#weight_memo[name=?]", "weight[memo]"
    end
  end
end
