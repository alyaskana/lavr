class PagesController < ApplicationController

  # GET /
  def index
    @stories = Story.order(id: :desc).limit(2)
  end
end
