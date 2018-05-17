Rails.application.routes.draw do
  resources :transactions
  post '/transactions/import', to: 'transactions#import', as: 'import_transactions'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
