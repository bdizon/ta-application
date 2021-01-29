Rails.application.routes.draw do
  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }
  get 'admin_overview/index'
  get 'student_reviews/new'
  get 'student_reviews/show'
  get 'schedules/new'
  get 'students/new'
  get 'sections/new'
  get 'courses/new'
  get 'courses/show'
  get 'courses/index'
  get 'semesters/new'
  get 'admin_homepage/index'
  get 'student_homepage/index'
  get 'homepage/index'

  root 'homepage#index'

  resources :courses
  resources :sections
  resources :reviews
  resources :students

end
