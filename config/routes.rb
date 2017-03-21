Rails.application.routes.draw do
 root to:  'pages#home'

 get 'kiosk' => 'pages#kiosk', as: :kiosk

 resources :tasks, except: [:index] do
   member do
     get :inc
   end
 end

end
