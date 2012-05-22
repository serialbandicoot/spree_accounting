class Spree::Admin::ExpensesController < Spree::Admin::BaseController
  # GET /admin/expenses
  # GET /admin/expenses.json
  def index
    @admin_expenses = Admin::Expense.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_expenses }
    end
  end

  # GET /admin/expenses/1
  # GET /admin/expenses/1.json
  def show
    @admin_expense = Admin::Expense.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_expense }
    end
  end

  # GET /admin/expenses/new
  # GET /admin/expenses/new.json
  def new
    @admin_expense = Admin::Expense.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_expense }
    end
  end

  # GET /admin/expenses/1/edit
  def edit
    @admin_expense = Admin::Expense.find(params[:id])
  end

  # POST /admin/expenses
  # POST /admin/expenses.json
  def create
    @admin_expense = Admin::Expense.new(params[:admin_expense])

    respond_to do |format|
      if @admin_expense.save
        format.html { redirect_to @admin_expense, notice: 'Expense was successfully created.' }
        format.json { render json: @admin_expense, status: :created, location: @admin_expense }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/expenses/1
  # PUT /admin/expenses/1.json
  def update
    @admin_expense = Admin::Expense.find(params[:id])

    respond_to do |format|
      if @admin_expense.update_attributes(params[:admin_expense])
        format.html { redirect_to @admin_expense, notice: 'Expense was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/expenses/1
  # DELETE /admin/expenses/1.json
  def destroy
    @admin_expense = Admin::Expense.find(params[:id])
    @admin_expense.destroy

    respond_to do |format|
      format.html { redirect_to admin_expenses_url }
      format.json { head :ok }
    end
  end
end
