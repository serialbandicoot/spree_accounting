class Spree::Admin::SupplierTypesController < Spree::Admin::BaseController
  # GET /admin/supplier_types
  # GET /admin/supplier_types.json
  def index
    @admin_supplier_types = Admin::SupplierType.page(params[:page])
    #@admin_supplier_types = Admin::SupplierType.paginate(:page => params[:page], :per_page => 2)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_supplier_types }
    end
  end

  # GET /admin/supplier_types/1
  # GET /admin/supplier_types/1.json
  def show
    @admin_supplier_type = Admin::SupplierType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_supplier_type }
    end
  end


  # GET /admin/supplier_types/new
  # GET /admin/supplier_types/new.json
  def new
    @admin_supplier_type = Admin::SupplierType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_supplier_type }
    end
  end

  # GET /admin/supplier_types/1/edit
  def edit
    @admin_supplier_type = Admin::SupplierType.find(params[:id])
  end

  # POST /admin/supplier_types
  # POST /admin/supplier_types.json
  def create
    @admin_supplier_type = Admin::SupplierType.new(params[:admin_supplier_type])

    respond_to do |format|
      if @admin_supplier_type.save
        format.html { redirect_to @admin_supplier_type, notice: 'Supplier type was successfully created.' }
        format.json { render json: @admin_supplier_type, status: :created, location: @admin_supplier_type }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_supplier_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/supplier_types/1
  # PUT /admin/supplier_types/1.json
  def update
    @admin_supplier_type = Admin::SupplierType.find(params[:id])

    respond_to do |format|
      if @admin_supplier_type.update_attributes(params[:admin_supplier_type])
        format.html { redirect_to @admin_supplier_type, notice: 'Supplier type was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_supplier_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/supplier_types/1
  # DELETE /admin/supplier_types/1.json
  def destroy
    @admin_supplier_type = Admin::SupplierType.find(params[:id])
    @admin_supplier_type.destroy

    respond_to do |format|
      format.html { redirect_to admin_supplier_types_url }
      format.json { head :ok }
    end
  end
end
