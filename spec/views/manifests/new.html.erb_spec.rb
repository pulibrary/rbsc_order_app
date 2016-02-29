require 'rails_helper'

RSpec.describe "manifests/new", type: :view do
  before(:each) do
    assign(:manifest, Manifest.new(
      :call_num => "MyString",
      :label => "MyString",
      :memo => "MyText",
      :url => "MyString",
      :uri => "MyString",
      :item_qty => 1,
      :division => 1,
      :format => 1,
      :permissions => 1,
      :start_item => 1,
      :end_item => 1
    ))
  end

  it "renders new manifest form" do
    render

    assert_select "form[action=?][method=?]", manifests_path, "post" do

      assert_select "input#manifest_call_num[name=?]", "manifest[call_num]"

      assert_select "input#manifest_label[name=?]", "manifest[label]"

      assert_select "textarea#manifest_memo[name=?]", "manifest[memo]"

      assert_select "input#manifest_url[name=?]", "manifest[url]"

      assert_select "input#manifest_uri[name=?]", "manifest[uri]"

      assert_select "input#manifest_item_qty[name=?]", "manifest[item_qty]"

      assert_select "input#manifest_division[name=?]", "manifest[division]"

      assert_select "input#manifest_format[name=?]", "manifest[format]"

      assert_select "input#manifest_permissions[name=?]", "manifest[permissions]"

      assert_select "input#manifest_start_item[name=?]", "manifest[start_item]"

      assert_select "input#manifest_end_item[name=?]", "manifest[end_item]"
    end
  end
end
