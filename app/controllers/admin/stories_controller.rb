class Admin::StoriesController < ApplicationController
  http_basic_authenticate_with name: "alina", password: "secret"
  before_action :set_story, only: [:show, :edit, :update, :destroy]

  # GET /admin/stories
  # GET /admin/stories.json
  def index
    @stories = Story.all
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
      redirect_to admin_story_path(@story), notice: 'Story was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/stories/1
  # DELETE /admin/stories/1.json
  def destroy
    @story.destroy
    redirect_to admin_stories_url, notice: 'Story was successfully destroyed.' 
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
