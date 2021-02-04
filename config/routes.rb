Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  #  put 'student/:id/activate', to: 'students#update'
  #  put '/student/:id/activate', to: 'students#update'
  #  put 'students/:id/activate', to: 'students#update'
  #  put '/students/:id/activate', to: 'students#update'

  #  put 'student/:id/activate', to: 'students#activate'
  #  put '/student/:id/activate', to: 'students#activate'
  #  put 'students/:id/activate', to: 'students#activate'
  #  put '/students/:id/activate', to: 'students#activate'

  #  get 'student/:id/activate', to: 'students#update'
  #  get '/student/:id/activate', to: 'students#update'
  #  get 'students/:id/activate', to: 'students#update'
  #  get '/students/:id/activate', to: 'students#update'

  #  get 'student/:id/activate', to: 'students#activate'
  #  get '/student/:id/activate', to: 'students#activate'
  #  get 'students/:id/activate', to: 'students#activate'
  #  get '/students/:id/activate', to: 'students#activate'

  #  patch 'student/:id/activate', to: 'students#update'
  #  patch '/student/:id/activate', to: 'students#update'
  #  patch 'students/:id/activate', to: 'students#update'
  #  patch '/students/:id/activate', to: 'students#update'

  #  patch 'student/:id/activate', to: 'students#activate'
  #  patch '/student/:id/activate', to: 'students#activate'
  #  patch 'students/:id/activate', to: 'students#activate'
  #  patch '/students/:id/activate', to: 'students#activate'

  resources :students, only: [:index, :show, :update]
  get 'student/:id/activate', to: 'students#activate', as: 'activate_student'

end
