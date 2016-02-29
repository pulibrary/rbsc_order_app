require 'rails_helper'

RSpec.describe "divisions/index", type: :view do
  before(:each) do
    assign(:divisions, [
      Division.create!(
        :label => "Label"
      ),
      Division.create!(
        :label => "Label"
      )
    ])
  end

  it "renders a list of divisions" do
    render
    assert_select "tr>td", :text => "Label".to_s, :count => 2
  end
end
