require 'rails_helper'

RSpec.describe "formats/index", type: :view do
  before(:each) do
    assign(:formats, [
      Format.create!(
        :media => "Media",
        :size => "Size",
        :filetype => "Filetype",
        :fund_code => "Fund Code"
      ),
      Format.create!(
        :media => "Media",
        :size => "Size",
        :filetype => "Filetype",
        :fund_code => "Fund Code"
      )
    ])
  end

  it "renders a list of formats" do
    render
    assert_select "tr>td", :text => "Media".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => "Filetype".to_s, :count => 2
    assert_select "tr>td", :text => "Fund Code".to_s, :count => 2
  end
end
