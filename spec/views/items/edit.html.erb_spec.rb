require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :label => "MyString",
      :url => "MyString",
      :uri => "MyString"
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input#item_label[name=?]", "item[label]"

      assert_select "input#item_url[name=?]", "item[url]"

      assert_select "input#item_uri[name=?]", "item[uri]"
    end
  end
end
