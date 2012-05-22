require "spec_helper"

describe Admin::VatsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin_vats").should route_to("admin_vats#index")
    end

    it "routes to #new" do
      get("/admin_vats/new").should route_to("admin_vats#new")
    end

    it "routes to #show" do
      get("/admin_vats/1").should route_to("admin_vats#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin_vats/1/edit").should route_to("admin_vats#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin_vats").should route_to("admin_vats#create")
    end

    it "routes to #update" do
      put("/admin_vats/1").should route_to("admin_vats#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin_vats/1").should route_to("admin_vats#destroy", :id => "1")
    end

  end
end
