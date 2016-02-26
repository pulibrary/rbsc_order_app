require 'rails_helper'

RSpec.describe "formats/show", type: :view do
  before(:each) do
    @format = assign(:format, Format.create!(
      :media => "Media",
      :size => "Size",
      :filetype => "Filetype",
      :fund_code => "Fund Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Media/)
    expect(rendered).to match(/Size/)
    expect(rendered).to match(/Filetype/)
    expect(rendered).to match(/Fund Code/)
  end
end
