class UsersController < ApplicationController

  def index
    @list_of_users = User.all.order({ :username => :asc})
    render({ :template => "user_templates/index.html.erb"})
  end

  def show_username
    username_url = params.fetch('username')
    @username_object = User.where({ :username => username_url}).at(0)

    if @username_object ==nil
      redirect_to('/404')
    else
      render({ :template => "user_templates/show_username.html.erb"})
    end
  end

  def update_username
    target_id = params.fetch('username_id')
    target_username = User.where({ :id => target_id}).first
    target_username.username = params.fetch('input_username')
    target_username.save
    redirect_to('/users/' + target_username.username.to_s)

  end

  def create_username
    # {"input_username"=>"kevincito"}
    entry = User.new
    entry.username = params.fetch('input_username')
    # entry.caption = params.fetch('input_caption')
    # entry.owner_id = params.fetch('input_owner_id')
    entry.save
    # redirect_to('/photos/' + entry.id.to_s)
    redirect_to('/users/' + entry.username.to_s)
  end

end