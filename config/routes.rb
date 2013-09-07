Project3::Application.routes.draw do
  get "questions/show"
  get "exams/new"

  post "questions/mark" => 'questions#mark'


resources :exams do
    resources :questions do
    	member do 
    		put 'mark'
    	end
    end
  end
end
