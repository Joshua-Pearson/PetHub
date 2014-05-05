PetHub::Application.routes.draw do
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

resources :users, :sessions, :animals, :messages, :comments

root 'welcome#index'
#              GET|POST /auth/:provider/callback(.:format) sessions#create
# auth_failure GET|POST /auth/failure(.:format)            redirect(301, /)
#      signout GET|POST /signout(.:format)                 sessions#destroy
#        users GET      /users(.:format)                   users#index
#              POST     /users(.:format)                   users#create
#     new_user GET      /users/new(.:format)               users#new
#    edit_user GET      /users/:id/edit(.:format)          users#edit
#         user GET      /users/:id(.:format)               users#show
#              PATCH    /users/:id(.:format)               users#update
#              PUT      /users/:id(.:format)               users#update
#              DELETE   /users/:id(.:format)               users#destroy
#     sessions GET      /sessions(.:format)                sessions#index
#              POST     /sessions(.:format)                sessions#create
#  new_session GET      /sessions/new(.:format)            sessions#new
# edit_session GET      /sessions/:id/edit(.:format)       sessions#edit
#      session GET      /sessions/:id(.:format)            sessions#show
#              PATCH    /sessions/:id(.:format)            sessions#update
#              PUT      /sessions/:id(.:format)            sessions#update
#              DELETE   /sessions/:id(.:format)            sessions#destroy
#      animals GET      /animals(.:format)                 animals#index
#              POST     /animals(.:format)                 animals#create
#   new_animal GET      /animals/new(.:format)             animals#new
#  edit_animal GET      /animals/:id/edit(.:format)        animals#edit
#       animal GET      /animals/:id(.:format)             animals#show
#              PATCH    /animals/:id(.:format)             animals#update
#              PUT      /animals/:id(.:format)             animals#update
#              DELETE   /animals/:id(.:format)             animals#destroy
#     messages GET      /messages(.:format)                messages#index
#              POST     /messages(.:format)                messages#create
#  new_message GET      /messages/new(.:format)            messages#new
# edit_message GET      /messages/:id/edit(.:format)       messages#edit
#      message GET      /messages/:id(.:format)            messages#show
#              PATCH    /messages/:id(.:format)            messages#update
#              PUT      /messages/:id(.:format)            messages#update
#              DELETE   /messages/:id(.:format)            messages#destroy
#     comments GET      /comments(.:format)                comments#index
#              POST     /comments(.:format)                comments#create
#  new_comment GET      /comments/new(.:format)            comments#new
# edit_comment GET      /comments/:id/edit(.:format)       comments#edit
#      comment GET      /comments/:id(.:format)            comments#show
#              PATCH    /comments/:id(.:format)            comments#update
#              PUT      /comments/:id(.:format)            comments#update
#              DELETE   /comments/:id(.:format)            comments#destroy
#         root GET      /                                  welcome#index
end
