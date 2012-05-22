class Spree::Admin::SocialMediaTypesController < Spree::Admin::BaseController
  # GET /admin/social_media_types
  # GET /admin/social_media_types.json
  def index
    @admin_social_media_types = Admin::SocialMediaType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_social_media_types }
    end
  end

  # GET /admin/social_media_types/1
  # GET /admin/social_media_types/1.json
  def show
    @admin_social_media_type = Admin::SocialMediaType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_social_media_type }
    end
  end

  # GET /admin/social_media_types/new
  # GET /admin/social_media_types/new.json
  def new
    @admin_social_media_type = Admin::SocialMediaType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_social_media_type }
    end
  end

  # GET /admin/social_media_types/1/edit
  def edit
    @admin_social_media_type = Admin::SocialMediaType.find(params[:id])
  end

  # POST /admin/social_media_types
  # POST /admin/social_media_types.json
  def create
    @admin_social_media_type = Admin::SocialMediaType.new(params[:admin_social_media_type])

    respond_to do |format|
      if @admin_social_media_type.save
        format.html { redirect_to @admin_social_media_type, notice: 'Social media type was successfully created.' }
        format.json { render json: @admin_social_media_type, status: :created, location: @admin_social_media_type }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_social_media_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/social_media_types/1
  # PUT /admin/social_media_types/1.json
  def update
    @admin_social_media_type = Admin::SocialMediaType.find(params[:id])

    respond_to do |format|
      if @admin_social_media_type.update_attributes(params[:admin_social_media_type])
        format.html { redirect_to @admin_social_media_type, notice: 'Social media type was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_social_media_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/social_media_types/1
  # DELETE /admin/social_media_types/1.json
  def destroy
    @admin_social_media_type = Admin::SocialMediaType.find(params[:id])
    @admin_social_media_type.destroy

    respond_to do |format|
      format.html { redirect_to admin_social_media_types_url }
      format.json { head :ok }
    end
  end
end
