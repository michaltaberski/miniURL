Miniurl::Application.routes.draw do |map|

  root :to => "shortcuts#new"

  resources :shortcuts

  match "/:alias" => "shortcuts#go"

end
