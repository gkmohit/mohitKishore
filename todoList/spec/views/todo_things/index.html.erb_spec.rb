require 'spec_helper'

describe "todo_things/index" do
  before(:each) do
    assign(:todo_things, [
      stub_model(TodoThing,
        :title => "Title",
        :description => "MyText"
      ),
      stub_model(TodoThing,
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of todo_things" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
