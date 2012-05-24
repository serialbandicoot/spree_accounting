require 'csv'

class Spree::Admin::AccountingBankAccountsController < Spree::Admin::BaseController
  # GET /admin/accounting_bank_accounts
  # GET /admin/accounting_bank_accounts.json
  def index
    @admin_accounting_bank_accounts = Admin::AccountingBankAccount.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_accounting_bank_accounts }
    end
  end

  # GET /admin/accounting_bank_accounts/1
  # GET /admin/accounting_bank_accounts/1.json
  def show
    @admin_accounting_bank_account = Admin::AccountingBankAccount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_accounting_bank_account }

    end
  end

  def new_transaction
     transaction_summary
  end

  def transaction_balance
     balance_array = [0]
     @admin_bank_transactions.reverse.each do |transaction|
         if Admin::BankingTransactionType.find_by_id(transaction.banking_transaction_type_id).banking_transaction_type == 'Credit' then
            balance_array << balance_array.last + transaction.transaction_amount
         else
            balance_array << balance_array.last - transaction.transaction_amount
         end
     end
     balance_array.reverse
  end

  def calculate_amount(type)
    sum_array = []
    @admin_bank_transactions.each do |transaction|
      if Admin::BankingTransactionType.find_by_id(transaction.banking_transaction_type_id).banking_transaction_type == type then
         sum_array << transaction.transaction_amount
      end
    end
    sum_array.sum
  end


  def transaction_summary
     @admin_accounting_bank_account = Admin::AccountingBankAccount.find(params[:id])
     @admin_bank_transactions =  @admin_accounting_bank_account.bank_transactions.order('transaction_date DESC')

     @credit = calculate_amount("Credit")
     @debit = calculate_amount("Debit")
     @total = @credit - @debit
     @transaction_balance = transaction_balance

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_accounting_bank_account }
      format.csv  {render :csv => @admin_bank_transactions}
    end
  end

  # GET /admin/accounting_bank_accounts/new
  # GET /admin/accounting_bank_accounts/new.json
  def new
    @admin_accounting_bank_account = Admin::AccountingBankAccount.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_accounting_bank_account }
    end
  end

  # GET /admin/accounting_bank_accounts/1/edit
  def edit
    @admin_accounting_bank_account = Admin::AccountingBankAccount.find(params[:id])
  end

  # POST /admin/accounting_bank_accounts
  # POST /admin/accounting_bank_accounts.json
  def create
    @admin_accounting_bank_account = Admin::AccountingBankAccount.new(params[:admin_accounting_bank_account])

    respond_to do |format|
      if @admin_accounting_bank_account.save
        format.html { redirect_to admin_accounting_bank_accounts_url}
        format.json { render json: @admin_accounting_bank_account, status: :created, location: @admin_accounting_bank_account }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_accounting_bank_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/accounting_bank_accounts/1
  # PUT /admin/accounting_bank_accounts/1.json
  def update
    @admin_accounting_bank_account = Admin::AccountingBankAccount.find(params[:id])

    respond_to do |format|
      if @admin_accounting_bank_account.update_attributes(params[:admin_accounting_bank_account])
        format.html { redirect_to admin_accounting_bank_accounts_url }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_accounting_bank_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/accounting_bank_accounts/1
  # DELETE /admin/accounting_bank_accounts/1.json
  def destroy
    @admin_accounting_bank_account = Admin::AccountingBankAccount.find(params[:id])
    @admin_accounting_bank_account.destroy

    respond_to do |format|
      format.html { redirect_to admin_accounting_bank_accounts_url }
      format.json { head :ok }
    end
  end
end
