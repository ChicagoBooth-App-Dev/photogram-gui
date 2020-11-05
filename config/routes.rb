Rails.application.routes.draw do

  get('/users', { :controller => 'users', :action => 'index'})

  get('/users/:username', { :controller => 'users', :action => 'show_username'})


  get('/photos', { :controller => 'photos', :action => 'index'})

  get('/photos/:photo_id', { :controller => 'photos', :action => 'show_photo'})

end
