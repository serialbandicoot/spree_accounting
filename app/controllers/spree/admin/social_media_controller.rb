class Spree::Admin::SocialMediaController < Spree::Admin::BaseController
  # GET /admin/social_media
  # GET /admin/social_media.json
  def index
    @admin_social_media = Admin::SocialMedium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_social_media }
    end
  end

  # GET /admin/social_media/1
  # GET /admin/social_media/1.json
  def show
    @admin_social_medium = Admin::SocialMedium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_social_medium }
    end
  end

  # GET /admin/social_media/new
  # GET /admin/social_media/new.json
  def new
    @admin_social_medium = Admin::SocialMedium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_social_medium }
    end
  end

  # GET /admin/social_media/1/edit
  def edit
    @admin_social_medium = Admin::SocialMedium.find(params[:id])
  end

  # POST /admin/social_media
  # POST /admin/social_media.json
  def create
    @admin_social_medium = Admin::SocialMedium.new(params[:admin_social_medium])

    respond_to do |format|
      if @admin_social_medium.save
        format.html { redirect_to admin_social_media_url }
        format.json { render json: @admin_social_medium, status: :created, location: @admin_social_medium }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_social_medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/social_media/1
  # PUT /admin/social_media/1.json
  def update
    @admin_social_medium = Admin::SocialMedium.find(params[:id])

    respond_to do |format|
      if @admin_social_medium.update_attributes(params[:admin_social_medium])
        format.html { redirect_to admin_social_media_url }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_social_medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/social_media/1
  # DELETE /admin/social_media/1.json
  def destroy
    @admin_social_medium = Admin::SocialMedium.find(params[:id])
    @admin_social_medium.destroy

    respond_to do |format|
      format.html { redirect_to admin_social_media_url }
      format.json { head :ok }
    end
  end
end
