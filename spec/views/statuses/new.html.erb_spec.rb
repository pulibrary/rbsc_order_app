require 'rails_helper'

RSpec.describe "statuses/new", type: :view do
  before(:each) do
    assign(:status, Status.new(
      :id => "",
      :label => "MyString"
    ))
  end

  it "renders new status form" do
    render

    assert_select "form[action=?][method=?]", statuses_path, "post" do

      assert_select "input#status_id[name=?]", "status[id]"

      assert_select "input#status_label[name=?]", "status[label]"
    end
  end
end
