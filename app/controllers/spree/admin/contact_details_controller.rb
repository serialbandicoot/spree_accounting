class Spree::Admin::ContactDetailsController < Spree::Admin::BaseController
  # GET /admin/contact_details
  # GET /admin/contact_details.json
  def index
    @admin_contact_details = Admin::ContactDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_contact_details }
    end
  end

  # GET /admin/contact_details/1
  # GET /admin/contact_details/1.json
  def show
    @admin_contact_detail = Admin::ContactDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_contact_detail }
    end
  end

  # GET /admin/contact_details/new
  # GET /admin/contact_details/new.json
  def new
    @admin_contact_detail = Admin::ContactDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_contact_detail }
    end
  end

  # GET /admin/contact_details/1/edit
  def edit
    @admin_contact_detail = Admin::ContactDetail.find(params[:id])
  end

  # POST /admin/contact_details
  # POST /admin/contact_details.json
  def create
    @admin_contact_detail = Admin::ContactDetail.new(params[:admin_contact_detail])

    respond_to do |format|
      if @admin_contact_detail.save
        format.html { redirect_to @admin_contact_detail, notice: 'Contact detail was successfully created.' }
        format.json { render json: @admin_contact_detail, status: :created, location: @admin_contact_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_contact_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/contact_details/1
  # PUT /admin/contact_details/1.json
  def update
    @admin_contact_detail = Admin::ContactDetail.find(params[:id])

    respond_to do |format|
      if @admin_contact_detail.update_attributes(params[:admin_contact_detail])
        format.html { redirect_to @admin_contact_detail, notice: 'Contact detail was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_contact_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/contact_details/1
  # DELETE /admin/contact_details/1.json
  def destroy
    @admin_contact_detail = Admin::ContactDetail.find(params[:id])
    @admin_contact_detail.destroy

    respond_to do |format|
      format.html { redirect_to admin_contact_details_url }
      format.json { head :ok }
    end
  end
end
