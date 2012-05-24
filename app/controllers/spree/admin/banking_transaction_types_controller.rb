class Spree::Admin::BankingTransactionTypesController < Spree::Admin::BaseController
  # GET /admin/banking_transaction_types
  # GET /admin/banking_transaction_types.json
  def index
    @admin_banking_transaction_types = Admin::BankingTransactionType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_banking_transaction_types }
    end
  end

  # GET /admin/banking_transaction_types/1
  # GET /admin/banking_transaction_types/1.json
  def show
    @admin_banking_transaction_type = Admin::BankingTransactionType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_banking_transaction_type }
    end
  end

  # GET /admin/banking_transaction_types/new
  # GET /admin/banking_transaction_types/new.json
  def new
    @admin_banking_transaction_type = Admin::BankingTransactionType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_banking_transaction_type }
    end
  end

  # GET /admin/banking_transaction_types/1/edit
  def edit
    @admin_banking_transaction_type = Admin::BankingTransactionType.find(params[:id])
  end

  # POST /admin/banking_transaction_types
  # POST /admin/banking_transaction_types.json
  def create
    @admin_banking_transaction_type = Admin::BankingTransactionType.new(params[:admin_banking_transaction_type])

    respond_to do |format|
      if @admin_banking_transaction_type.save
        format.html { redirect_to admin_banking_transaction_types_url }
        format.json { render json: @admin_banking_transaction_type, status: :created, location: @admin_banking_transaction_type }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_banking_transaction_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/banking_transaction_types/1
  # PUT /admin/banking_transaction_types/1.json
  def update
    @admin_banking_transaction_type = Admin::BankingTransactionType.find(params[:id])

    respond_to do |format|
      if @admin_banking_transaction_type.update_attributes(params[:admin_banking_transaction_type])
        format.html { redirect_to admin_banking_transaction_types_url }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_banking_transaction_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/banking_transaction_types/1
  # DELETE /admin/banking_transaction_types/1.json
  def destroy
    @admin_banking_transaction_type = Admin::BankingTransactionType.find(params[:id])
    @admin_banking_transaction_type.destroy

    respond_to do |format|
      format.html { redirect_to admin_banking_transaction_types_url }
      format.json { head :ok }
    end
  end
end
