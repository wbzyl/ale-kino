ActionController::Routing::Routes.draw do |map|

  map.resources :filmy, :recenzje, :kina
  map.root :filmy

end
