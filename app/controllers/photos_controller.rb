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

  def delete
    photo_url = params.fetch("photo_id")    
    target = Photo.where( :id => photo_url).first
    target.destroy
    redirect_to('/photos')
  end

  def create
    entry = Photo.new
    entry.image = params.fetch('input_image')
    entry.caption = params.fetch('input_caption')
    entry.owner_id = params.fetch('input_owner_id')
    entry.save
    redirect_to('/photos/' + entry.id.to_s)
  end

  def update
    target_id = params.fetch('photo_id')
    target_photo = Photo.where({:id => target_id}).first
    target_photo.image = params.fetch('query_image')
    target_photo.caption = params.fetch('query_caption')
    target_photo.save

    redirect_to('/photos/' + target_id.to_s)
  end

  def comment
    #Parameters:{"input_photo_id"=>"952", "input_author_id"=>"perro", "input_body"=>"117"}
    entry = Comment.new
    entry.photo_id = params.fetch('input_photo_id')
    entry.body = params.fetch('input_body')
    entry.author_id = params.fetch('input_author_id')
    entry.save
    redirect_to('/photos/' + entry.photo_id.to_s)
  end
end
