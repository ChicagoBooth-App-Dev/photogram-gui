class PhotosController < ApplicationController

  def index
    render ({ :template => "photo_templates/index.html.erb"})
  end

  def show_photo
    render ({ :template => "photo_templates/show_photos.html.erb"})
  end

end