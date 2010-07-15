Miniurl::Application.routes.draw do |map|
  resources :shortcuts
  
  root :to => "shortcuts#index"
  

end
