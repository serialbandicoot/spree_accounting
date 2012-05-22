class Spree::Admin::SuppliersController <  Spree::Admin::BaseController
  # GET /admin/suppliers
  # GET /admin/suppliers.json
  def index
    @admin_suppliers = Admin::Supplier.order('supplier_name ASC').page(params[:page]).per(5)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_suppliers }
    end
  end

  # GET /admin/suppliers/1
  # GET /admin/suppliers/1.json
  def show
    @admin_supplier = Admin::Supplier.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_supplier }
    end
  end

  def new_contact_details
    show
  end

  def new_address
    show
  end

  def new_social_media
    show
  end

  # GET /admin/suppliers/new
  # GET /admin/suppliers/new.json
  def new
    @admin_supplier = Admin::Supplier.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_supplier }
    end
  end

  # GET /admin/suppliers/1/edit
  def edit
    @admin_supplier = Admin::Supplier.find(params[:id])
  end

  # POST /admin/suppliers
  # POST /admin/suppliers.json
  def create
    @admin_supplier = Admin::Supplier.new(params[:admin_supplier])

    respond_to do |format|
      if @admin_supplier.save
        format.html { redirect_to admin_suppliers_url }
        format.json { render json: @admin_supplier, status: :created, location: @admin_supplier }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/suppliers/1
  # PUT /admin/suppliers/1.json
  def update
    @admin_supplier = Admin::Supplier.find(params[:id])

    respond_to do |format|
      if @admin_supplier.update_attributes(params[:admin_supplier])
        format.html { redirect_to admin_suppliers_url }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/suppliers/1
  # DELETE /admin/suppliers/1.json
  def destroy
    @admin_supplier = Admin::Supplier.find(params[:id])
    @admin_supplier.destroy

    respond_to do |format|
      format.html { redirect_to admin_suppliers_url }
      format.json { head :ok }
    end
  end
end
