class Spree::Admin::ExpenseCategoriesController < Spree::Admin::BaseController
  # GET /admin/expense_categories
  # GET /admin/expense_categories.json
  def index
    @admin_expense_categories = Admin::ExpenseCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_expense_categories }
    end
  end

  # GET /admin/expense_categories/1
  # GET /admin/expense_categories/1.json
  def show
    @admin_expense_category = Admin::ExpenseCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_expense_category }
    end
  end

  # GET /admin/expense_categories/new
  # GET /admin/expense_categories/new.json
  def new
    @admin_expense_category = Admin::ExpenseCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_expense_category }
    end
  end

  # GET /admin/expense_categories/1/edit
  def edit
    @admin_expense_category = Admin::ExpenseCategory.find(params[:id])
  end

  # POST /admin/expense_categories
  # POST /admin/expense_categories.json
  def create
    @admin_expense_category = Admin::ExpenseCategory.new(params[:admin_expense_category])

    respond_to do |format|
      if @admin_expense_category.save
        format.html { redirect_to admin_expense_categories_url }
        format.json { render json: @admin_expense_category, status: :created, location: @admin_expense_category }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_expense_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/expense_categories/1
  # PUT /admin/expense_categories/1.json
  def update
    @admin_expense_category = Admin::ExpenseCategory.find(params[:id])

    respond_to do |format|
      if @admin_expense_category.update_attributes(params[:admin_expense_category])
        format.html { redirect_to admin_expense_categories_url }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_expense_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/expense_categories/1
  # DELETE /admin/expense_categories/1.json
  def destroy
    @admin_expense_category = Admin::ExpenseCategory.find(params[:id])
    @admin_expense_category.destroy

    respond_to do |format|
      format.html { redirect_to admin_expense_categories_url }
      format.json { head :ok }
    end
  end
end
