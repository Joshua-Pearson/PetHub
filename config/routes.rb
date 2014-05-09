PetHub::Application.routes.draw do
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

resources :users, :only => [:index, :show]
resources :sessions, :only => [:create, :show, :destroy]
resources :animals do
  resources :messages
end

root 'welcome#index'

get '/users/:id/animals', to: 'users#index'

#              Prefix Verb     URI Pattern                                     Controller#Action
#                     GET|POST /auth/:provider/callback(.:format)              sessions#create
#        auth_failure GET|POST /auth/failure(.:format)                         redirect(301, /)
#             signout GET|POST /signout(.:format)                              sessions#destroy
#               users GET      /users(.:format)                                users#index
#                user GET      /users/:id(.:format)                            users#show
#            sessions POST     /sessions(.:format)                             sessions#create
#             session GET      /sessions/:id(.:format)                         sessions#show
#                     DELETE   /sessions/:id(.:format)                         sessions#destroy
#     animal_messages GET      /animals/:animal_id/messages(.:format)          messages#index
#                     POST     /animals/:animal_id/messages(.:format)          messages#create
#  new_animal_message GET      /animals/:animal_id/messages/new(.:format)      messages#new
# edit_animal_message GET      /animals/:animal_id/messages/:id/edit(.:format) messages#edit
#      animal_message GET      /animals/:animal_id/messages/:id(.:format)      messages#show
#                     PATCH    /animals/:animal_id/messages/:id(.:format)      messages#update
#                     PUT      /animals/:animal_id/messages/:id(.:format)      messages#update
#                     DELETE   /animals/:animal_id/messages/:id(.:format)      messages#destroy
#             animals GET      /animals(.:format)                              animals#index
#                     POST     /animals(.:format)                              animals#create
#          new_animal GET      /animals/new(.:format)                          animals#new
#         edit_animal GET      /animals/:id/edit(.:format)                     animals#edit
#              animal GET      /animals/:id(.:format)                          animals#show
#                     PATCH    /animals/:id(.:format)                          animals#update
#                     PUT      /animals/:id(.:format)                          animals#update
#                     DELETE   /animals/:id(.:format)                          animals#destroy
#                root GET      /                                               welcome#index
#                     GET      /users/:id/animals(.:format)                    users#index

end
