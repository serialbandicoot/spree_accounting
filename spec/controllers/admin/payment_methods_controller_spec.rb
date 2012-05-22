require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe Admin::PaymentMethodsController do

  # This should return the minimal set of attributes required to create a valid
  # Admin::PaymentMethod. As you add validations to Admin::PaymentMethod, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Admin::PaymentMethodsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all admin_payment_methods as @admin_payment_methods" do
      payment_method = Admin::AccountsPaymentMethod.create! valid_attributes
      get :index, {}, valid_session
      assigns(:admin_payment_methods).should eq([payment_method])
    end
  end

  describe "GET show" do
    it "assigns the requested payment_method as @payment_method" do
      payment_method = Admin::AccountsPaymentMethod.create! valid_attributes
      get :show, {:id => payment_method.to_param}, valid_session
      assigns(:payment_method).should eq(payment_method)
    end
  end

  describe "GET new" do
    it "assigns a new payment_method as @payment_method" do
      get :new, {}, valid_session
      assigns(:payment_method).should be_a_new(Admin::AccountsPaymentMethod)
    end
  end

  describe "GET edit" do
    it "assigns the requested payment_method as @payment_method" do
      payment_method = Admin::AccountsPaymentMethod.create! valid_attributes
      get :edit, {:id => payment_method.to_param}, valid_session
      assigns(:payment_method).should eq(payment_method)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Admin::PaymentMethod" do
        expect {
          post :create, {:payment_method => valid_attributes}, valid_session
        }.to change(Admin::AccountsPaymentMethod, :count).by(1)
      end

      it "assigns a newly created payment_method as @payment_method" do
        post :create, {:payment_method => valid_attributes}, valid_session
        assigns(:payment_method).should be_a(Admin::AccountsPaymentMethod)
        assigns(:payment_method).should be_persisted
      end

      it "redirects to the created payment_method" do
        post :create, {:payment_method => valid_attributes}, valid_session
        response.should redirect_to(Admin::AccountsPaymentMethod.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved payment_method as @payment_method" do
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::AccountsPaymentMethod.any_instance.stub(:save).and_return(false)
        post :create, {:payment_method => {}}, valid_session
        assigns(:payment_method).should be_a_new(Admin::AccountsPaymentMethod)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::AccountsPaymentMethod.any_instance.stub(:save).and_return(false)
        post :create, {:payment_method => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested payment_method" do
        payment_method = Admin::AccountsPaymentMethod.create! valid_attributes
        # Assuming there are no other admin_payment_methods in the database, this
        # specifies that the Admin::PaymentMethod created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Admin::AccountsPaymentMethod.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => payment_method.to_param, :payment_method => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested payment_method as @payment_method" do
        payment_method = Admin::AccountsPaymentMethod.create! valid_attributes
        put :update, {:id => payment_method.to_param, :payment_method => valid_attributes}, valid_session
        assigns(:payment_method).should eq(payment_method)
      end

      it "redirects to the payment_method" do
        payment_method = Admin::AccountsPaymentMethod.create! valid_attributes
        put :update, {:id => payment_method.to_param, :payment_method => valid_attributes}, valid_session
        response.should redirect_to(payment_method)
      end
    end

    describe "with invalid params" do
      it "assigns the payment_method as @payment_method" do
        payment_method = Admin::AccountsPaymentMethod.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::AccountsPaymentMethod.any_instance.stub(:save).and_return(false)
        put :update, {:id => payment_method.to_param, :payment_method => {}}, valid_session
        assigns(:payment_method).should eq(payment_method)
      end

      it "re-renders the 'edit' template" do
        payment_method = Admin::AccountsPaymentMethod.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::AccountsPaymentMethod.any_instance.stub(:save).and_return(false)
        put :update, {:id => payment_method.to_param, :payment_method => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested payment_method" do
      payment_method = Admin::AccountsPaymentMethod.create! valid_attributes
      expect {
        delete :destroy, {:id => payment_method.to_param}, valid_session
      }.to change(Admin::AccountsPaymentMethod, :count).by(-1)
    end

    it "redirects to the admin_payment_methods list" do
      payment_method = Admin::AccountsPaymentMethod.create! valid_attributes
      delete :destroy, {:id => payment_method.to_param}, valid_session
      response.should redirect_to(admin_payment_methods_url)
    end
  end

end
