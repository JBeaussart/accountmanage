Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resource :users
  resource :accounts do
  	resource :transactions
  	resource :reccuring_transactions
  end
end
