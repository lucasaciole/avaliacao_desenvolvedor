Rails.application.routes.draw do
  resources :transactions
  post '/transactions/import', to: 'transactions#save_import'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
