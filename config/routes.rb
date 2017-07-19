Rails.application.routes.draw do
  root 'static_pages#home'
  
  get 'post_location' => 'static_pages#post_location'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
