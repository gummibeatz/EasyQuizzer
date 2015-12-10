Rails.application.routes.draw do
  devise_for :students, :skip => :registrations
  devise_for :teachers

  root :to => 'welcome#home'    

# temporary routes right now
  resources :students, :only => [:index]
  resources :teachers, :only => [:index]

  resources :quizzes  
end
