Rails.application.routes.draw do
  get "/songs" => "songs#index"
  get "/songs/:id" => "songs#show"
  post "/songs" => "songs#create"
  delete "/songs/:id" => "songs#destroy"
  patch "/songs/:id" => "songs#update"
end
