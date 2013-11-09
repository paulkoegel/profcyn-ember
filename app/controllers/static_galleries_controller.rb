class StaticGalleriesController < ActionController::Base

  def index
    @galleries = Gallery.all
  end

  def show
    @gallery = Gallery.first #Gallery.find params[:id]
    render layout: 'static'
  end

end
