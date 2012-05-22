class Spree::Admin::ExpenseTypesController < Spree::Admin::BaseController
  # GET /admin/expense_types
  # GET /admin/expense_types.json
  def index
    @admin_expense_types = Admin::ExpenseType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_expense_types }
    end
  end

  # GET /admin/expense_types/1
  # GET /admin/expense_types/1.json
  def show
    @admin_expense_type = Admin::ExpenseType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_expense_type }
    end
  end

  # GET /admin/expense_types/new
  # GET /admin/expense_types/new.json
  def new
    @admin_expense_type = Admin::ExpenseType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_expense_type }
    end
  end

  # GET /admin/expense_types/1/edit
  def edit
    @admin_expense_type = Admin::ExpenseType.find(params[:id])
  end

  # POST /admin/expense_types
  # POST /admin/expense_types.json
  def create
    @admin_expense_type = Admin::ExpenseType.new(params[:admin_expense_type])

    respond_to do |format|
      if @admin_expense_type.save
        format.html { redirect_to @admin_expense_type, notice: 'Expense type was successfully created.' }
        format.json { render json: @admin_expense_type, status: :created, location: @admin_expense_type }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_expense_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/expense_types/1
  # PUT /admin/expense_types/1.json
  def update
    @admin_expense_type = Admin::ExpenseType.find(params[:id])

    respond_to do |format|
      if @admin_expense_type.update_attributes(params[:admin_expense_type])
        format.html { redirect_to @admin_expense_type, notice: 'Expense type was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_expense_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/expense_types/1
  # DELETE /admin/expense_types/1.json
  def destroy
    @admin_expense_type = Admin::ExpenseType.find(params[:id])
    @admin_expense_type.destroy

    respond_to do |format|
      format.html { redirect_to admin_expense_types_url }
      format.json { head :ok }
    end
  end
end
