Rails.application.routes.draw do
  devise_for :students
  devise_for :teachers
  root :to => "welcome#home"    
end
