AnaliseGastos::Application.routes.draw do

  resources :gastos

  root to: 'contribuintes#index'

  resources :contribuintes
end
