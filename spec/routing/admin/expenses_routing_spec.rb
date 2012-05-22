require "spec_helper"

describe Admin::ExpensesController do
  describe "routing" do

    it "routes to #index" do
      get("/admin_expenses").should route_to("admin_expenses#index")
    end

    it "routes to #new" do
      get("/admin_expenses/new").should route_to("admin_expenses#new")
    end

    it "routes to #show" do
      get("/admin_expenses/1").should route_to("admin_expenses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin_expenses/1/edit").should route_to("admin_expenses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin_expenses").should route_to("admin_expenses#create")
    end

    it "routes to #update" do
      put("/admin_expenses/1").should route_to("admin_expenses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin_expenses/1").should route_to("admin_expenses#destroy", :id => "1")
    end

  end
end
