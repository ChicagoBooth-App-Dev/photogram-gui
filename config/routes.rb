Rails.application.routes.draw do

  get('/', { :controller => 'users', :action => 'index'})
  
  get('/users', { :controller => 'users', :action => 'index'})

  get('/users/:username', { :controller => 'users', :action => 'show_username'})

  get('/update_user/:username_id', { :controller => 'users', :action => 'update_username'})
  
  get('/insert_user_record', { :controller => 'users', :action => 'create_username'})





  get('/photos', { :controller => 'photos', :action => 'index'})

  get('/photos/:photo_id', { :controller => 'photos', :action => 'show_photo'})

  get('/delete_photo/:photo_id', { :controller => 'photos', :action => 'delete'})

  get('/insert_photo_record', { :controller => 'photos', :action => 'create'})

  get('/update_photo/:photo_id', { :controller => 'photos', :action => 'update'})


end
