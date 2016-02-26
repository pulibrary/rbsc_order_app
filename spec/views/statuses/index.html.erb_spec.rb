require 'rails_helper'

RSpec.describe "statuses/index", type: :view do
  before(:each) do
    assign(:statuses, [
      Status.create!(
        :id => "",
        :label => "Label"
      ),
      Status.create!(
        :id => "",
        :label => "Label"
      )
    ])
  end

  it "renders a list of statuses" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Label".to_s, :count => 2
  end
end
