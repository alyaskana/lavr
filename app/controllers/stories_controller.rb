class StoriesController < ApplicationController

  # GET /stories
  # GET /stories.json
  def index
    @stories = Story.all
  end

  # GET /stories/1
  # GET /stories/1.json
  def show
    @story = Story.find(params[:id])
  end

  # GET /stories/new
  def new
    @story = Story.new
  end

  # POST /stories
  # POST /stories.json
  def create
    @story = Story.new(story_params)

    if @story.save
      redirect_to new_story_path, notice: 'Спасибо за вашу историю! Скоро мы ее проверим и опубликуем.'
    else
      render :new
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def story_params
      params.require(:story).permit(:name, :city, :age, :content, :allow_public_read, :is_published)
    end
end
