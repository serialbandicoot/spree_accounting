class Spree::Admin::CompanyDetailsController < Spree::Admin::BaseController
  # GET /admin/company_details
  # GET /admin/company_details.json
  def index
    @admin_company_details = Admin::CompanyDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @admin_company_details }
    end
  end

  # GET /admin/company_details/1
  # GET /admin/company_details/1.json
  def show
    @admin_company_detail = Admin::CompanyDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @admin_company_detail }
    end
  end

  # GET /admin/company_details/new
  # GET /admin/company_details/new.json
  def new
    @admin_company_detail = Admin::CompanyDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @admin_company_detail }
    end
  end

  # GET /admin/company_details/1/edit
  def edit
    @admin_company_detail = Admin::CompanyDetail.find(params[:id])
  end

  # POST /admin/company_details
  # POST /admin/company_details.json
  def create
    @admin_company_detail = Admin::CompanyDetail.new(params[:admin_company_detail])

    respond_to do |format|
      if @admin_company_detail.save
        format.html { redirect_to @admin_company_detail, :notice => 'Company detail was successfully created.' }
        format.json { render :json => @admin_company_detail, :status => :created, :location => @admin_company_detail }
      else
        format.html { render :action => "new" }
        format.json { render :json => @admin_company_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/company_details/1
  # PUT /admin/company_details/1.json
  def update
    @admin_company_detail = Admin::CompanyDetail.find(params[:id])

    respond_to do |format|
      if @admin_company_detail.update_attributes(params[:admin_company_detail])
        format.html { redirect_to @admin_company_detail, :notice => 'Company detail was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @admin_company_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/company_details/1
  # DELETE /admin/company_details/1.json
  def destroy
    @admin_company_detail = Admin::CompanyDetail.find(params[:id])
    @admin_company_detail.destroy

    respond_to do |format|
      format.html { redirect_to admin_company_details_url }
      format.json { head :ok }
    end
  end
end
