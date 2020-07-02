Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   # define :admins as the second devise mapping. routes using this class will
  # need to be defined within a devise_scope as shown below
  mount_devise_token_auth_for "Admin", at: 'admin_auth'

  # this route will authorize requests using the User class
  get 'demo/members_only', to: 'demo#members_only'
  # routes within this block will authorize requests using the Admin class
  devise_scope :admin do
   get 'demo/admins_only', to: 'demo#admins_only'
  end
end


