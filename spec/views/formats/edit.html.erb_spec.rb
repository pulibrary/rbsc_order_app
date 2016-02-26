require 'rails_helper'

RSpec.describe "formats/edit", type: :view do
  before(:each) do
    @format = assign(:format, Format.create!(
      :media => "MyString",
      :size => "MyString",
      :filetype => "MyString",
      :fund_code => "MyString"
    ))
  end

  it "renders the edit format form" do
    render

    assert_select "form[action=?][method=?]", format_path(@format), "post" do

      assert_select "input#format_media[name=?]", "format[media]"

      assert_select "input#format_size[name=?]", "format[size]"

      assert_select "input#format_filetype[name=?]", "format[filetype]"

      assert_select "input#format_fund_code[name=?]", "format[fund_code]"
    end
  end
end
