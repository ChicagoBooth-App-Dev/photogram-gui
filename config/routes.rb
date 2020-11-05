Rails.application.routes.draw do

  get('/user', { :controller => 'users', :action => 'index'})

  get('/user/:username', { :controller => 'users', :action => 'show_username'})

end
