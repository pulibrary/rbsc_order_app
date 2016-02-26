require 'rails_helper'

RSpec.describe "divisions/show", type: :view do
  before(:each) do
    @division = assign(:division, Division.create!(
      :label => "Label"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Label/)
  end
end
