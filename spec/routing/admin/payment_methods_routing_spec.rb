require "spec_helper"

describe Admin::PaymentMethodsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin_payment_methods").should route_to("admin_payment_methods#index")
    end

    it "routes to #new" do
      get("/admin_payment_methods/new").should route_to("admin_payment_methods#new")
    end

    it "routes to #show" do
      get("/admin_payment_methods/1").should route_to("admin_payment_methods#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin_payment_methods/1/edit").should route_to("admin_payment_methods#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin_payment_methods").should route_to("admin_payment_methods#create")
    end

    it "routes to #update" do
      put("/admin_payment_methods/1").should route_to("admin_payment_methods#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin_payment_methods/1").should route_to("admin_payment_methods#destroy", :id => "1")
    end

  end
end
