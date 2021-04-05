class Admin::StoriesController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "RRTbGqjJ"
  before_action :set_story, only: [:show, :edit, :update, :destroy]

  # GET /admin/stories
  # GET /admin/stories.json
  def index
    @stories = Story.order(id: :desc).all
  end

  # GET /admin/stories/1
  # GET /admin/stories/1.json
  def show
  end

  # GET /admin/stories/1/edit
  def edit
  end

  # PATCH/PUT /admin/stories/1
  # PATCH/PUT /admin/stories/1.json
  def update
    if @story.update(story_params)
      redirect_to edit_admin_story_path(@story), notice: 'История успешно обновлена!'
    else
      render :edit
    end
  end

  # DELETE /admin/stories/1
  # DELETE /admin/stories/1.json
  def destroy
    @story.destroy
    redirect_to admin_stories_url, notice: 'История успешно удалена' 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story
      @story = Story.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def story_params
      params.require(:story).permit(:name, :city, :age, :content, :allow_public_read, :is_published)
    end
end
