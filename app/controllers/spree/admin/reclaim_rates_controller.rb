class Spree::Admin::ReclaimRatesController < Spree::Admin::BaseController
  # GET /admin/reclaim_rates
  # GET /admin/reclaim_rates.json
  def index
    @admin_reclaim_rates = Admin::ReclaimRate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_reclaim_rates }
    end
  end

  # GET /admin/reclaim_rates/1
  # GET /admin/reclaim_rates/1.json
  def show
    @admin_reclaim_rate = Admin::ReclaimRate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_reclaim_rate }
    end
  end

  # GET /admin/reclaim_rates/new
  # GET /admin/reclaim_rates/new.json
  def new
    @admin_reclaim_rate = Admin::ReclaimRate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_reclaim_rate }
    end
  end

  # GET /admin/reclaim_rates/1/edit
  def edit
    @admin_reclaim_rate = Admin::ReclaimRate.find(params[:id])
  end

  # POST /admin/reclaim_rates
  # POST /admin/reclaim_rates.json
  def create
    @admin_reclaim_rate = Admin::ReclaimRate.new(params[:admin_reclaim_rate])

    respond_to do |format|
      if @admin_reclaim_rate.save
        format.html { redirect_to admin_reclaim_rates_url }
        format.json { render json: @admin_reclaim_rate, status: :created, location: @admin_reclaim_rate }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_reclaim_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/reclaim_rates/1
  # PUT /admin/reclaim_rates/1.json
  def update
    @admin_reclaim_rate = Admin::ReclaimRate.find(params[:id])

    respond_to do |format|
      if @admin_reclaim_rate.update_attributes(params[:admin_reclaim_rate])
        format.html { redirect_to admin_reclaim_rates_url }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_reclaim_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/reclaim_rates/1
  # DELETE /admin/reclaim_rates/1.json
  def destroy
    @admin_reclaim_rate = Admin::ReclaimRate.find(params[:id])
    @admin_reclaim_rate.destroy

    respond_to do |format|
      format.html { redirect_to admin_reclaim_rates_url }
      format.json { head :ok }
    end
  end
end
