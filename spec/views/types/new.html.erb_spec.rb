require 'spec_helper'

describe "types/new" do
  before(:each) do
    assign(:type, stub_model(Type).as_new_record)
  end

  it "renders new type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", types_path, "post" do
    end
  end
end
