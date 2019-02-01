Rails.application.routes.draw do
  root to: 'home#index'

  post 'test', to: 'home#test'


  devise_for :users, skip: [
    :registrations,
    :password],
    path: '',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout'
    }

end
