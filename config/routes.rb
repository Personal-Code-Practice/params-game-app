Rails.application.routes.draw do
  get '/name_game_url' => 'games#name'
  get '/guess_a_number' => 'games#guess'
  get '/home/:guess' => 'games#guessing'
  get '/form_practice' => 'games#practice'
  post '/something' => 'games#other'
  get '/form_guess' => 'games#form_game'
  post '/guessing_game' => 'games#inside'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
