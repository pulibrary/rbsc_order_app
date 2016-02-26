require 'rails_helper'

RSpec.describe "manifests/index", type: :view do
  before(:each) do
    assign(:manifests, [
      Manifest.create!(
        :call_num => "Call Num",
        :label => "Label",
        :memo => "MyText",
        :url => "Url",
        :uri => "Uri",
        :item_qty => 1,
        :division => 2,
        :format => 3,
        :permissions => 4,
        :start_item => 5,
        :end_item => 6
      ),
      Manifest.create!(
        :call_num => "Call Num",
        :label => "Label",
        :memo => "MyText",
        :url => "Url",
        :uri => "Uri",
        :item_qty => 1,
        :division => 2,
        :format => 3,
        :permissions => 4,
        :start_item => 5,
        :end_item => 6
      )
    ])
  end

  it "renders a list of manifests" do
    render
    assert_select "tr>td", :text => "Call Num".to_s, :count => 2
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Uri".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
