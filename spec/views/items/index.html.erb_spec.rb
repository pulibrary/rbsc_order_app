require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        :label => "Label",
        :url => "Url",
        :uri => "Uri"
      ),
      Item.create!(
        :label => "Label",
        :url => "Url",
        :uri => "Uri"
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Uri".to_s, :count => 2
  end
end
