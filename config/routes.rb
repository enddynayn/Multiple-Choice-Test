Project3::Application.routes.draw do
  get "questions/show"
  get "exams/new"


resources :exams do
    resources :questions
  end



end
