Rails.application.routes.draw do
  devise_for :students, :skip => :registrations
  devise_for :teachers

  root :to => 'welcome#home'    

# temporary routes right now
  get 'student' => 'welcome#student', :as => :student
  get 'teacher' => 'welcome#teacher', :as => :teacher

  resources :quizzes  

end
