XeroDemo::Application.routes.draw do
  get "xero_session/new"
  # get "xero_session/create"
  # get "xero_session/destroy"

  root to: 'invoices#index'

  # get "invoices/show"

  # resources :ideas do
  #   resources :comments
  # end

end
