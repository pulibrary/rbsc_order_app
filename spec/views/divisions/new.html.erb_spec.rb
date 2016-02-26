require 'rails_helper'

RSpec.describe "divisions/new", type: :view do
  before(:each) do
    assign(:division, Division.new(
      :label => "MyString"
    ))
  end

  it "renders new division form" do
    render

    assert_select "form[action=?][method=?]", divisions_path, "post" do

      assert_select "input#division_label[name=?]", "division[label]"
    end
  end
end
