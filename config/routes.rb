Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :jobs do
      member do
        post :publish
        post :hide
      end
      resources :resumes
    end
  end

  resources :jobs do
   collection do
     get :search
   end
   resources :resumes
 end

  get "page1/index"
  get "page2/index"
  get "page3/index"
  root 'welcome#index'
end
