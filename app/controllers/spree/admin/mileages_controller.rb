class Spree::Admin::MileagesController < Spree::Admin::BaseController
  # GET /admin/mileages
  # GET /admin/mileages.json
  def index
    @admin_mileages = Admin::Mileage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_mileages }
    end
  end

  # GET /admin/mileages/1
  # GET /admin/mileages/1.json
  def show
    @admin_mileage = Admin::Mileage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_mileage }
    end
  end

  # GET /admin/mileages/new
  # GET /admin/mileages/new.json
  def new
    @admin_mileage = Admin::Mileage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_mileage }
    end
  end

  # GET /admin/mileages/1/edit
  def edit
    @admin_mileage = Admin::Mileage.find(params[:id])
  end

  # POST /admin/mileages
  # POST /admin/mileages.json
  def create
    @admin_mileage = Admin::Mileage.new(params[:admin_mileage])

    respond_to do |format|
      if @admin_mileage.save
        format.html { redirect_to admin_mileages_url }
        format.json { render json: @admin_mileage, status: :created, location: @admin_mileage }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_mileage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/mileages/1
  # PUT /admin/mileages/1.json
  def update
    @admin_mileage = Admin::Mileage.find(params[:id])

    respond_to do |format|
      if @admin_mileage.update_attributes(params[:admin_mileage])
        format.html { redirect_to admin_mileages_url }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_mileage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/mileages/1
  # DELETE /admin/mileages/1.json
  def destroy
    @admin_mileage = Admin::Mileage.find(params[:id])
    @admin_mileage.destroy

    respond_to do |format|
      format.html { redirect_to admin_mileages_url }
      format.json { head :ok }
    end
  end
end
