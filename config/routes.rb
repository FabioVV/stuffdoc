Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check


  # devise_for(:users, controllers: { registration: "users/registrations"},
  #   :path => "users", #/users/sign_in
  #   :path_names => {
  #   :sign_in => "login",
  #   :sign_out => "logout",
  #   :password => "secret",
  #   :confirmation => "verification",
  #   :unlock => "unblock",
  #   :registration => "register",
  #   :sign_up => "create-account" 
  # })
  # 
  devise_for :users

  # Main page etc etc
  root "core#index"

  get 'about' => "core#about", as: :about_page

end
