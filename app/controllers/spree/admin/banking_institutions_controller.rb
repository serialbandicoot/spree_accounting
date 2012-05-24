class Spree::Admin::BankingInstitutionsController < Spree::Admin::BaseController
  # GET /admin/banking_institutions
  # GET /admin/banking_institutions.json
  def index
    @admin_banking_institutions = Admin::BankingInstitution.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_banking_institutions }
    end
  end

  # GET /admin/banking_institutions/1
  # GET /admin/banking_institutions/1.json
  def show
    @admin_banking_institution = Admin::BankingInstitution.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_banking_institution }
    end
  end

  # GET /admin/banking_institutions/new
  # GET /admin/banking_institutions/new.json
  def new
    @admin_banking_institution = Admin::BankingInstitution.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_banking_institution }
    end
  end

  # GET /admin/banking_institutions/1/edit
  def edit
    @admin_banking_institution = Admin::BankingInstitution.find(params[:id])
  end

  # POST /admin/banking_institutions
  # POST /admin/banking_institutions.json
  def create
    @admin_banking_institution = Admin::BankingInstitution.new(params[:admin_banking_institution])

    respond_to do |format|
      if @admin_banking_institution.save
        format.html { redirect_to admin_banking_institutions_url }
        format.json { render json: @admin_banking_institution, status: :created, location: @admin_banking_institution }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_banking_institution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/banking_institutions/1
  # PUT /admin/banking_institutions/1.json
  def update
    @admin_banking_institution = Admin::BankingInstitution.find(params[:id])

    respond_to do |format|
      if @admin_banking_institution.update_attributes(params[:admin_banking_institution])
        format.html { redirect_to admin_banking_institutions_url }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_banking_institution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/banking_institutions/1
  # DELETE /admin/banking_institutions/1.json
  def destroy
    @admin_banking_institution = Admin::BankingInstitution.find(params[:id])
    @admin_banking_institution.destroy

    respond_to do |format|
      format.html { redirect_to admin_banking_institutions_url }
      format.json { head :ok }
    end
  end
end
