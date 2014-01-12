AnaliseGastos::Application.routes.draw do

  root to: 'contribuintes#index'

  resources :contribuintes
end
