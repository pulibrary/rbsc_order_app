require 'rails_helper'

RSpec.describe "manifests/show", type: :view do
  before(:each) do
    @manifest = assign(:manifest, Manifest.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Call Num/)
    expect(rendered).to match(/Label/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Uri/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
  end
end
