class Spree::Admin::CompanyAddressesController < Spree::Admin::BaseController
  # GET /admin/company_addresses
  # GET /admin/company_addresses.json
  def index
    @admin_company_addresses = Admin::CompanyAddress.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_company_addresses }
    end
  end

  # GET /admin/company_addresses/1
  # GET /admin/company_addresses/1.json
  def show
    @admin_company_address = Admin::CompanyAddress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_company_address }
    end
  end

  # GET /admin/company_addresses/new
  # GET /admin/company_addresses/new.json
  def new
    @admin_company_address = Admin::CompanyAddress.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_company_address }
    end
  end

  # GET /admin/company_addresses/1/edit
  def edit
    @admin_company_address = Admin::CompanyAddress.find(params[:id])
  end

  # POST /admin/company_addresses
  # POST /admin/company_addresses.json
  def create
    @admin_company_address = Admin::CompanyAddress.new(params[:admin_company_address])

    respond_to do |format|
      if @admin_company_address.save
        format.html { redirect_to :back }
        format.json { render json: @admin_company_address, status: :created, location: @admin_company_address }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_company_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/company_addresses/1
  # PUT /admin/company_addresses/1.json
  def update
    @admin_company_address = Admin::CompanyAddress.find(params[:id])

    respond_to do |format|
      if @admin_company_address.update_attributes(params[:admin_company_address])
        format.html { redirect_to admin_company_details_url, notice: 'Company address was successfully updated.' }
        #format.html { redirect_to :controller => "company_details", :action => :index }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_company_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/company_addresses/1
  # DELETE /admin/company_addresses/1.json
  def destroy
    @admin_company_address = Admin::CompanyAddress.find(params[:id])
    @admin_company_address.destroy

    respond_to do |format|
      format.html { redirect_to admin_company_details_url }
      format.json { head :ok }
    end
  end
end
