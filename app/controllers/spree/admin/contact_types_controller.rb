class Spree::Admin::ContactTypesController < Spree::Admin::BaseController
  # GET /admin/contact_types
  # GET /admin/contact_types.json
  def index
    @admin_contact_types = Admin::ContactType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_contact_types }
    end
  end

  # GET /admin/contact_types/1
  # GET /admin/contact_types/1.json
  def show
    @admin_contact_type = Admin::ContactType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_contact_type }
    end
  end

  # GET /admin/contact_types/new
  # GET /admin/contact_types/new.json
  def new
    @admin_contact_type = Admin::ContactType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_contact_type }
    end
  end

  # GET /admin/contact_types/1/edit
  def edit
    @admin_contact_type = Admin::ContactType.find(params[:id])
  end

  # POST /admin/contact_types
  # POST /admin/contact_types.json
  def create
    @admin_contact_type = Admin::ContactType.new(params[:admin_contact_type])

    respond_to do |format|
      if @admin_contact_type.save
        format.html { redirect_to admin_contact_types_url }
        format.json { render json: @admin_contact_type, status: :created, location: @admin_contact_type }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_contact_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/contact_types/1
  # PUT /admin/contact_types/1.json
  def update
    @admin_contact_type = Admin::ContactType.find(params[:id])

    respond_to do |format|
      if @admin_contact_type.update_attributes(params[:admin_contact_type])
        format.html { redirect_to admin_contact_types_url }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_contact_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/contact_types/1
  # DELETE /admin/contact_types/1.json
  def destroy
    @admin_contact_type = Admin::ContactType.find(params[:id])
    @admin_contact_type.destroy

    respond_to do |format|
      format.html { redirect_to admin_contact_types_url }
      format.json { head :ok }
    end
  end
end
