require "spec_helper"

describe Admin::CompanyAddressesController do
  describe "routing" do

    it "routes to #index" do
      get("/admin_company_addresses").should route_to("admin_company_addresses#index")
    end

    it "routes to #new" do
      get("/admin_company_addresses/new").should route_to("admin_company_addresses#new")
    end

    it "routes to #show" do
      get("/admin_company_addresses/1").should route_to("admin_company_addresses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin_company_addresses/1/edit").should route_to("admin_company_addresses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin_company_addresses").should route_to("admin_company_addresses#create")
    end

    it "routes to #update" do
      put("/admin_company_addresses/1").should route_to("admin_company_addresses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin_company_addresses/1").should route_to("admin_company_addresses#destroy", :id => "1")
    end

  end
end
