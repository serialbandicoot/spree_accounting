require "spec_helper"

describe Admin::ExpenseCategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/admin_expense_categories").should route_to("admin_expense_categories#index")
    end

    it "routes to #new" do
      get("/admin_expense_categories/new").should route_to("admin_expense_categories#new")
    end

    it "routes to #show" do
      get("/admin_expense_categories/1").should route_to("admin_expense_categories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin_expense_categories/1/edit").should route_to("admin_expense_categories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin_expense_categories").should route_to("admin_expense_categories#create")
    end

    it "routes to #update" do
      put("/admin_expense_categories/1").should route_to("admin_expense_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin_expense_categories/1").should route_to("admin_expense_categories#destroy", :id => "1")
    end

  end
end
