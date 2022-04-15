Rails.application.routes.draw do
  devise_for :users, module: 'users'
  resources :books
  resources :users, only: %i(index show)
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
