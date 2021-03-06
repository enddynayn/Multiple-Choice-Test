Project3::Application.routes.draw do
  get "users/new"
  get "staticpages/home"
  get "staticpages/about"
  get "questions/show"
  get "exams/new"

  post "questions/mark" => 'questions#mark'
  post "questions/unmark" => 'questions#unmark'
  post "exams/complete_exam" => 'exams#complete_exam'

resources :users
resources :sessions, only: [:new, :create, :destroy]
root  'staticpages#home'

resources :exams do
    resources :questions do
    	member do 
    		put 'mark'
    		put 'unmark'
    	end
    end
end

   match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
end
