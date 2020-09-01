Rails.application.routes.draw do
  resources :students
  resources :exams
  resources :teachers
  resources :reports
  resources :payments
  resources :pockets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
