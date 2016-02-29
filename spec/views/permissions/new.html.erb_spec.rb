require 'rails_helper'

RSpec.describe "permissions/new", type: :view do
  before(:each) do
    assign(:permission, Permission.new(
      :label => "MyString",
      :description => "MyText",
      :price => "9.99",
      :fund_code => "MyString"
    ))
  end

  it "renders new permission form" do
    render

    assert_select "form[action=?][method=?]", permissions_path, "post" do

      assert_select "input#permission_label[name=?]", "permission[label]"

      assert_select "textarea#permission_description[name=?]", "permission[description]"

      assert_select "input#permission_price[name=?]", "permission[price]"

      assert_select "input#permission_fund_code[name=?]", "permission[fund_code]"
    end
  end
end
