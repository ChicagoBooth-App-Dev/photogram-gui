class PhotosController < ApplicationController

  def index
    @list_of_photos = Photo.all.order( :created_at => :desc)
    render ({ :template => "photo_templates/index.html.erb"})
  end

  def show_photo
    photo_url = params.fetch("photo_id")
    @photo_object = Photo.where({ :id => photo_url}).first()
    render ({ :template => "photo_templates/show_photos.html.erb"})
  end

end