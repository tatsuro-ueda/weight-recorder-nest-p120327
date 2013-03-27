require 'spec_helper'

describe "weights/new" do
  before(:each) do
    assign(:weight, stub_model(Weight,
      :user => nil,
      :weight => "9.99",
      :memo => "MyText"
    ).as_new_record)
  end

  it "renders new weight form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", weights_path, "post" do
      assert_select "input#weight_user[name=?]", "weight[user]"
      assert_select "input#weight_weight[name=?]", "weight[weight]"
      assert_select "textarea#weight_memo[name=?]", "weight[memo]"
    end
  end
end
