Rails.application.routes.draw do
  resources :students, only: :index
  get '/students/new', to: 'students#new', as: 'new_student'
  get '/students/:id', to: 'students#show', as: 'student'
  get '/students/create', to: 'students#create'
  post '/students', to:'students#create'
end
