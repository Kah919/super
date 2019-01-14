Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/heros", to: "heros#index"
  get "/heros/new", to:"heros#new"
  get "/heros/:id", to: "heros#show", as: "hero"
  post "/heros", to:"heros#create"
  get "/heros/:id/edit", to: "heros#edit", as: "heros_edit"
  patch "/heros/:id", to: "heros#update"
  delete "/heros/:id", to: "heros#delete"

end
