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

end