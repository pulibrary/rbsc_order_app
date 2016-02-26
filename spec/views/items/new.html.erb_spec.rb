require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      :label => "MyString",
      :url => "MyString",
      :uri => "MyString"
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input#item_label[name=?]", "item[label]"

      assert_select "input#item_url[name=?]", "item[url]"

      assert_select "input#item_uri[name=?]", "item[uri]"
    end
  end
end
