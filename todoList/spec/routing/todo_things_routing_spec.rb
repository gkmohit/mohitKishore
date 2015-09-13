require "spec_helper"

describe TodoThingsController do
  describe "routing" do

    it "routes to #index" do
      get("/todo_things").should route_to("todo_things#index")
    end

    it "routes to #new" do
      get("/todo_things/new").should route_to("todo_things#new")
    end

    it "routes to #show" do
      get("/todo_things/1").should route_to("todo_things#show", :id => "1")
    end

    it "routes to #edit" do
      get("/todo_things/1/edit").should route_to("todo_things#edit", :id => "1")
    end

    it "routes to #create" do
      post("/todo_things").should route_to("todo_things#create")
    end

    it "routes to #update" do
      put("/todo_things/1").should route_to("todo_things#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/todo_things/1").should route_to("todo_things#destroy", :id => "1")
    end

  end
end
