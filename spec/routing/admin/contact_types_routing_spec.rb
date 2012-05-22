require "spec_helper"

describe Admin::ContactTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/admin_contact_types").should route_to("admin_contact_types#index")
    end

    it "routes to #new" do
      get("/admin_contact_types/new").should route_to("admin_contact_types#new")
    end

    it "routes to #show" do
      get("/admin_contact_types/1").should route_to("admin_contact_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin_contact_types/1/edit").should route_to("admin_contact_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin_contact_types").should route_to("admin_contact_types#create")
    end

    it "routes to #update" do
      put("/admin_contact_types/1").should route_to("admin_contact_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin_contact_types/1").should route_to("admin_contact_types#destroy", :id => "1")
    end

  end
end
