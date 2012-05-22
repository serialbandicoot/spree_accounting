require "spec_helper"

describe Admin::SuppliersController do
  describe "routing" do

    it "routes to #index" do
      get("/admin_suppliers").should route_to("admin_suppliers#index")
    end

    it "routes to #new" do
      get("/admin_suppliers/new").should route_to("admin_suppliers#new")
    end

    it "routes to #show" do
      get("/admin_suppliers/1").should route_to("admin_suppliers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin_suppliers/1/edit").should route_to("admin_suppliers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin_suppliers").should route_to("admin_suppliers#create")
    end

    it "routes to #update" do
      put("/admin_suppliers/1").should route_to("admin_suppliers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin_suppliers/1").should route_to("admin_suppliers#destroy", :id => "1")
    end

  end
end
