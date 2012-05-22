class Spree::Admin::AccountsPaymentMethodsController < Spree::Admin::BaseController
  # GET /admin/payment_methods
  # GET /admin/payment_methods.json
  def index
    @admin_payment_methods = Admin::AccountsPaymentMethod.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_payment_methods }
    end
  end

  # GET /admin/payment_methods/1
  # GET /admin/payment_methods/1.json
  def show
    @admin_payment_method = Admin::AccountsPaymentMethod.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_payment_method }
    end
  end

  # GET /admin/payment_methods/new
  # GET /admin/payment_methods/new.json
  def new
    @admin_payment_method = Admin::AccountsPaymentMethod.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_payment_method }
    end
  end

  # GET /admin/payment_methods/1/edit
  def edit
    @admin_payment_method = Admin::AccountsPaymentMethod.find(params[:id])
  end

  # POST /admin/payment_methods
  # POST /admin/payment_methods.json
  def create
    @admin_payment_method = Admin::AccountsPaymentMethod.new(params[:admin_payment_method])

    respond_to do |format|
      if @admin_payment_method.save
        format.html { redirect_to @admin_payment_method, notice: 'Payment method was successfully created.' }
        format.json { render json: @admin_payment_method, status: :created, location: @admin_payment_method }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_payment_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/payment_methods/1
  # PUT /admin/payment_methods/1.json
  def update
    @admin_payment_method = Admin::AccountsPaymentMethod.find(params[:id])

    respond_to do |format|
      if @admin_payment_method.update_attributes(params[:admin_payment_method])
        format.html { redirect_to @admin_payment_method, notice: 'Payment method was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_payment_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/payment_methods/1
  # DELETE /admin/payment_methods/1.json
  def destroy
    @admin_payment_method = Admin::AccountsPaymentMethod.find(params[:id])
    @admin_payment_method.destroy

    respond_to do |format|
      format.html { redirect_to admin_payment_methods_url }
      format.json { head :ok }
    end
  end
end
