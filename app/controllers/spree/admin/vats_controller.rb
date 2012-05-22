class Spree::Admin::VatsController < Spree::Admin::BaseController
  # GET /admin/vats
  # GET /admin/vats.json
  def index
    @admin_vats = Admin::Vat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_vats }
    end
  end

  # GET /admin/vats/1
  # GET /admin/vats/1.json
  def show
    @admin_vat = Admin::Vat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_vat }
    end
  end

  # GET /admin/vats/new
  # GET /admin/vats/new.json
  def new
    @admin_vat = Admin::Vat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_vat }
    end
  end

  # GET /admin/vats/1/edit
  def edit
    @admin_vat = Admin::Vat.find(params[:id])
  end

  # POST /admin/vats
  # POST /admin/vats.json
  def create
    @admin_vat = Admin::Vat.new(params[:admin_vat])

    respond_to do |format|
      if @admin_vat.save
        format.html { redirect_to @admin_vat, notice: 'Vat was successfully created.' }
        format.json { render json: @admin_vat, status: :created, location: @admin_vat }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_vat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/vats/1
  # PUT /admin/vats/1.json
  def update
    @admin_vat = Admin::Vat.find(params[:id])

    respond_to do |format|
      if @admin_vat.update_attributes(params[:admin_vat])
        format.html { redirect_to @admin_vat, notice: 'Vat was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_vat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/vats/1
  # DELETE /admin/vats/1.json
  def destroy
    @admin_vat = Admin::Vat.find(params[:id])
    @admin_vat.destroy

    respond_to do |format|
      format.html { redirect_to admin_vats_url }
      format.json { head :ok }
    end
  end
end
