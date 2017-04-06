Rails.application.routes.draw do
 root to:  'tasks#index'

 get 'kiosk' => 'tasks#index', as: :kiosk

 resources :tasks do
   member do
     get :inc
   end
 end

end
