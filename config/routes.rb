Rails.application.routes.draw do
  devise_for :users

  post 'graphql' => 'graphqls#create'
end
