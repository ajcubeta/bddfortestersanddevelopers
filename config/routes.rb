Bddfortestersanddevelopers::Application.routes.draw do

  devise_for :candidates, :only => [:registrations]
  devise_for :employers, :only => [:registrations]

  resources :blogs

  devise_for :users, :except => [:registrations] do
    # Create two login routes one with a name of new_user_session since device uses this for some actions
    # but we still want to be able to use login_url for the application
    get  "login",                  :to => "devise/sessions#new"
    get  "login",                  :to => "devise/sessions#new", :as => :new_user_session

    post "login",                  :to => "devise/sessions#create"
    get  "logout",                 :to => "devise/sessions#destroy"
    get  "request_reset_password", :to => "devise/passwords#new"
    post "request_reset_password", :to => "devise/passwords#create"
    get  "reset_password"        , :to => "devise/passwords#edit"
    put  "reset_password"        , :to => "devise/passwords#update"
    get  "resend_confirmation"   , :to => "devise/confirmations#new"
    post "resend_confirmation"   , :to => "devise/confirmations#create"
    get  "confirm_account"       , :to => "confirmations#show"
  end

  root :to => "home#index"
end