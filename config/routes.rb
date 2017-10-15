Rails.application.routes.draw do
  root :to => 'diseases#index'
  resources :diseases, param: :disease
  put '/diseases/:disease/set_active_status', to: 'diseases#set_active_status'

  # This handles 404 Error, 500 Error, and 422 Error
  get "/404" => "application#not_found"
  get "/500" => "application#exception"
  get "/422" => 'application#unprocessable_entity'
end
