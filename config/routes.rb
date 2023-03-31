Rails.application.routes.draw do
  
get "/songs" => "songs#index"

post "songs/" => "songs#create" 


get "songs/:id" => "photos#show"

patch "/songs/:id" => "photos#update"

delete "/photos/:id" => "photos#destroy"

end 