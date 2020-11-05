class PhotosController < ApplicationController

  def index
    @list_of_photos = Photo.all
    render ({ :template => "photo_templates/index.html.erb"})
  end

  def show_photo
    @list_of_photos = Photo.all
    render ({ :template => "photo_templates/show_photos.html.erb"})
  end

end