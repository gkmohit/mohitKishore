require 'spec_helper'

describe "todo_things/show" do
  before(:each) do
    @todo_thing = assign(:todo_thing, stub_model(TodoThing,
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
