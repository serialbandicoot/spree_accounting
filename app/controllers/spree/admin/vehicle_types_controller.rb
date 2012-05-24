class Spree::Admin::VehicleTypesController < Spree::Admin::BaseController
  # GET /admin/vehicle_types
  # GET /admin/vehicle_types.json
  def index
    @admin_vehicle_types = Admin::VehicleType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_vehicle_types }
    end
  end

  # GET /admin/vehicle_types/1
  # GET /admin/vehicle_types/1.json
  def show
    @admin_vehicle_type = Admin::VehicleType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_vehicle_type }
    end
  end

  # GET /admin/vehicle_types/new
  # GET /admin/vehicle_types/new.json
  def new
    @admin_vehicle_type = Admin::VehicleType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_vehicle_type }
    end
  end

  # GET /admin/vehicle_types/1/edit
  def edit
    @admin_vehicle_type = Admin::VehicleType.find(params[:id])
  end

  # POST /admin/vehicle_types
  # POST /admin/vehicle_types.json
  def create
    @admin_vehicle_type = Admin::VehicleType.new(params[:admin_vehicle_type])

    respond_to do |format|
      if @admin_vehicle_type.save
        format.html { redirect_to admin_vehicle_types_url }
        format.json { render json: @admin_vehicle_type, status: :created, location: @admin_vehicle_type }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_vehicle_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/vehicle_types/1
  # PUT /admin/vehicle_types/1.json
  def update
    @admin_vehicle_type = Admin::VehicleType.find(params[:id])

    respond_to do |format|
      if @admin_vehicle_type.update_attributes(params[:admin_vehicle_type])
        format.html { redirect_to admin_vehicle_types_url }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_vehicle_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/vehicle_types/1
  # DELETE /admin/vehicle_types/1.json
  def destroy
    @admin_vehicle_type = Admin::VehicleType.find(params[:id])
    @admin_vehicle_type.destroy

    respond_to do |format|
      format.html { redirect_to admin_vehicle_types_url }
      format.json { head :ok }
    end
  end
end
