Rails.application.routes.draw do
 root to:  'tasks#index'
 get 'kiosk' => 'tasks#kiosk', as: :kiosk

 resources :tasks do
   member do
     get :inc
   end
 end

end
