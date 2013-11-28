class StaticGalleriesController < ActionController::Base

  layout 'static'

  def index
    @galleries = Gallery.all
  end

  def show
    @gallery = Gallery.find params[:id]
    @images = @gallery.images.limit(100) || []
  end

end
