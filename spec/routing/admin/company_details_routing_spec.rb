require "spec_helper"

describe Admin::CompanyDetailsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin_company_details").should route_to("admin_company_details#index")
    end

    it "routes to #new" do
      get("/admin_company_details/new").should route_to("admin_company_details#new")
    end

    it "routes to #show" do
      get("/admin_company_details/1").should route_to("admin_company_details#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin_company_details/1/edit").should route_to("admin_company_details#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin_company_details").should route_to("admin_company_details#create")
    end

    it "routes to #update" do
      put("/admin_company_details/1").should route_to("admin_company_details#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin_company_details/1").should route_to("admin_company_details#destroy", :id => "1")
    end

  end
end
