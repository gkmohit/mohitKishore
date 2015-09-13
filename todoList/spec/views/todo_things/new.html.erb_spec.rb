require 'spec_helper'

describe "todo_things/new" do
  before(:each) do
    assign(:todo_thing, stub_model(TodoThing,
      :title => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new todo_thing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", todo_things_path, "post" do
      assert_select "input#todo_thing_title[name=?]", "todo_thing[title]"
      assert_select "textarea#todo_thing_description[name=?]", "todo_thing[description]"
    end
  end
end
