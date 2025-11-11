Rails.application.routes.draw do
  devise_for :users
  resources :audits do
    resources :findings
  end
  root "audits#index"
end
