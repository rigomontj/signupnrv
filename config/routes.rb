Rails.application.routes.draw do

  devise_scope :user do
    root to: "devise/registrations#new"
  end

  root 'home#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  get 'users/logged', to: 'home#logged', as: 'logged'

end
