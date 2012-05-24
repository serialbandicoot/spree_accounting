class Spree::Admin::BankTransactionsController < Spree::Admin::BaseController
  # GET /admin/bank_transactions
  # GET /admin/bank_transactions.json
  def index
    @admin_bank_transactions = Admin::BankTransaction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_bank_transactions }
    end
  end

  # GET /admin/bank_transactions/1
  # GET /admin/bank_transactions/1.json
  def show
    @admin_bank_transaction = Admin::BankTransaction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_bank_transaction }
    end
  end

  # GET /admin/bank_transactions/new
  # GET /admin/bank_transactions/new.json
  def new
    @admin_bank_transaction = Admin::BankTransaction.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_bank_transaction }
    end
  end

  # GET /admin/bank_transactions/1/edit
  def edit
    @admin_bank_transaction = Admin::BankTransaction.find(params[:id])
  end

  # POST /admin/bank_transactions
  # POST /admin/bank_transactions.json
  def create
    @admin_bank_transaction = Admin::BankTransaction.new(params[:admin_bank_transaction])

    respond_to do |format|
      if @admin_bank_transaction.save
        format.html { redirect_to "/parties/admin/accounting_bank_accounts/transaction_summary/#{@admin_bank_transaction.accounting_bank_account_id}" }
        format.json { render json: @admin_bank_transaction, status: :created, location: @admin_bank_transaction }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_bank_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/bank_transactions/1
  # PUT /admin/bank_transactions/1.json
  def update
    @admin_bank_transaction = Admin::BankTransaction.find(params[:id])

    respond_to do |format|
      if @admin_bank_transaction.update_attributes(params[:admin_bank_transaction])
        format.html { redirect_to "/parties/admin/accounting_bank_accounts/transaction_summary/#{@admin_bank_transaction.accounting_bank_account_id}" }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_bank_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/bank_transactions/1
  # DELETE /admin/bank_transactions/1.json
  def destroy
    @admin_bank_transaction = Admin::BankTransaction.find(params[:id])
    @admin_bank_transaction.destroy

    respond_to do |format|
      format.html { redirect_to admin_bank_transactions_url }
      format.json { head :ok }
    end
  end
end
