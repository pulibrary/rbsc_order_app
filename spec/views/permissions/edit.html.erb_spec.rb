require 'rails_helper'

RSpec.describe "permissions/edit", type: :view do
  before(:each) do
    @permission = assign(:permission, Permission.create!(
      :label => "MyString",
      :description => "MyText",
      :price => "9.99",
      :fund_code => "MyString"
    ))
  end

  it "renders the edit permission form" do
    render

    assert_select "form[action=?][method=?]", permission_path(@permission), "post" do

      assert_select "input#permission_label[name=?]", "permission[label]"

      assert_select "textarea#permission_description[name=?]", "permission[description]"

      assert_select "input#permission_price[name=?]", "permission[price]"

      assert_select "input#permission_fund_code[name=?]", "permission[fund_code]"
    end
  end
end
