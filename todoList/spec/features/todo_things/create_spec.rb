require 'spec_helper'

describe "Creating todo things"  do
	it "redirects to the todo things index page on success" do
		visit "/todo_things"
		click_link "New Todo thing"
		expect(page).to have_content("New todo_thing")


		fill_in "Title", with: "My todo thing"
		fill_in "Description", with: "Test 1"
		click_button "Create Todo thing"

		expect(page).to have_content("Test 1")
	end

	it "displays an error when the todo list has no title" do
		expect(TodoThing.count).to eq(0)

		visit "/todo_things"
		click_link "New Todo thing"
		expect(page).to have_content("New todo_thing")


		fill_in "Title", with: ""
		fill_in "Description", with: "Test 2"
		click_button "Create Todo thing"
		expect(page).to have_content("error")
		expect(TodoThing.count).to eq(0)

		# visit "/todo_lists"
		# expect(page).to_not have_content("Test 2")
	end
end