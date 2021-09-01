class PagesController < ApplicationController

  # GET /
  def index
    @stories = Story.where(is_published: true).order(id: :desc)
  end
end
