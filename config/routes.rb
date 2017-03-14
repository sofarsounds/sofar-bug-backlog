Rails.application.routes.draw do
 root to:  'pages#home'

 resources :tasks, except: [:index] do
   member do
     get :inc
   end
 end

end
