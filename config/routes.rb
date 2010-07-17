Miniurl::Application.routes.draw do |map|

  root :to => "shortcuts#index"

  resources :shortcuts

  match "/:alias" => "shortcuts#go"

end
