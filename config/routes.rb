Project3::Application.routes.draw do
  get "staticpages/home"
  get "staticpages/about"
  get "questions/show"
  get "exams/new"

  post "questions/mark" => 'questions#mark'
  post "questions/unmark" => 'questions#unmark'


resources :exams do
    resources :questions do
    	member do 
    		put 'mark'
    		put 'unmark'
    	end
    end
  end
end
