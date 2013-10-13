class GalleriesController < ActionController::Base

  respond_to :json

  def index
    @galleries = Gallery.all
  end

  def show
    @gallery = Gallery.find params[:id]
  end

end
