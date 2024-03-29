class Spree::Admin::AccountsAddressesController < Spree::Admin::BaseController
  # GET /admin/company_addresses
  # GET /admin/company_addresses.json
  def index
    @admin_accounts_addresses = Admin::AccountsAddress.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_accounts_addresses }
    end
  end

  # GET /admin/company_addresses/1
  # GET /admin/company_addresses/1.json
  def show
    @admin_accounts_addresses = Admin::AccountsAddress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_accounts_addresses }
    end
  end

  # GET /admin/company_addresses/new
  # GET /admin/company_addresses/new.json
  def new
    @admin_accounts_addresses = Admin::AccountsAddress.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_accounts_addresses }
    end
  end

  # GET /admin/company_addresses/1/edit
  def edit
    @admin_accounts_addresses = Admin::AccountsAddress.find(params[:id])
  end

  # POST /admin/company_addresses
  # POST /admin/company_addresses.json
  def create
    @admin_accounts_addresses = Admin::AccountsAddress.new(params[:admin_accounts_address])

    respond_to do |format|
      if @admin_accounts_addresses.save
        format.html { redirect_to admin_suppliers_url }
        format.json { render json: @admin_accounts_addresses, status: :created, location: @admin_company_address }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_accounts_addresses.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/company_addresses/1
  # PUT /admin/company_addresses/1.json
  def update
    @admin_company_address = Admin::AccountsAddress.find(params[:id])

    respond_to do |format|
      if @admin_accounts_addresses.update_attributes(params[:admin_accounts_address])
        format.html { redirect_to admin_suppliers_url }
        #format.html { redirect_to :controller => "company_details", :action => :index }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_accounts_addresses.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/company_addresses/1
  # DELETE /admin/company_addresses/1.json
  def destroy
    @admin_accounts_addresses = Admin::AccountsAddress.find(params[:id])
    @admin_accounts_addresses.destroy

    respond_to do |format|
      format.html { redirect_to admin_suppliers_url }
      format.json { head :ok }
    end
  end
end
