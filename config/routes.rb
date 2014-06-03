Imdb::Application.routes.draw do

  # Specify a custom home page
  get "/" => "apartmenttypes#index"

# Sign-In and Sign-Out
 
  get "/logout" => 'sessions#logout'
  get "/login" => 'sessions#login'
  post "/authenticate" => 'sessions#authenticate'

  # Resource: Users

  # --- Create
  get "/users/new" => 'users#new'
  post "/users" => 'users#create'

  # --- Read
  get "/users" => 'users#show'
  get "/users/:id" => 'users#show'

  # -- Update
  get "/users/:id/edit" => 'users#edit'
  patch "/users/:id" => 'users#update'

  # --- Delete
  delete "/users/:id" => 'users#destroy'

  # Resource: Apartmenttypes

  # --- Create
  get "/apartmenttypes/new" => 'apartmenttypes#new'
  post "/apartmenttypes" => 'apartmenttypes#create'

  # --- Read
  get "/apartmenttypes" => 'apartmenttypes#index'
  get "/apartmenttypes/:id" => 'apartmenttypes#show'

  # -- Update
  get "/apartmenttypes/:id/edit" => 'apartmenttypes#edit'
  patch "/apartmenttypes/:id" => 'apartmenttypes#update'

  # --- Delete
  delete "/apartmenttypes/:id" => 'apartmenttypes#destroy'



  # Resource: Studentdirectors

  # --- Create
  get "/studentdirectors/new" => 'studentdirectors#new'
  post "/studentdirectors" => 'studentdirectors#create'

  # --- Read
  get "/studentdirectors" => 'studentdirectors#index'
  get "/studentdirectors/:id" => 'studentdirectors#show'

  # -- Update
  get "/studentdirectors/:id/edit" => 'studentdirectors#edit'
  patch "/studentdirectors/:id" => 'studentdirectors#update'

  # --- Delete
  delete "/studentdirectors/:id" => 'studentdirectors#destroy'


  # Resource: Userprofiles

  # --- Create
  get "/userprofiles/new" => 'userprofiles#new'
  post "/userprofiles" => 'userprofiles#create'

  # --- Read
  get "/userprofiles" => 'userprofiles#index'
  get "/userprofiles/:id" => 'userprofiles#show'

  # -- Update
  get "/userprofiles/:id/edit" => 'userprofiles#edit'
  patch "/userprofiles/:id" => 'userprofiles#update'

  # --- Delete
  delete "/userprofiles/:id" => 'userprofiles#destroy'



  
   # Resource: Reviews
 
   # --- Create
   get "/reviews/new" => 'reviews#new'
   post "/reviews" => 'reviews#create'
 
   # --- Read
   get "/reviews" => 'reviews#index'
   get "/reviews/:id" => 'reviews#show'
 
   # -- Update
   get "/reviews/:id/edit" => 'reviews#edit'
   patch "/reviews/:id" => 'reviews#update'
 
   # --- Delete
   delete "/reviews/:id" => 'reviews#destroy'



end
