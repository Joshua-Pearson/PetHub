PetHub::Application.routes.draw do
   # match 'auth/:provider/callback', to: 'sessions#create'
   # match 'auth/failure', to: redirect('/')
   # match 'signout', to: 'sessions#destroy', as: 'signout'

resources :users, :sessions, :pets, :welcome

root 'welcome#index'

#        Prefix Verb   URI Pattern                  Controller#Action
#         users GET    /users(.:format)             users#index
#               POST   /users(.:format)             users#create
#      new_user GET    /users/new(.:format)         users#new
#     edit_user GET    /users/:id/edit(.:format)    users#edit
#          user GET    /users/:id(.:format)         users#show
#               PATCH  /users/:id(.:format)         users#update
#               PUT    /users/:id(.:format)         users#update
#               DELETE /users/:id(.:format)         users#destroy
#      sessions GET    /sessions(.:format)          sessions#index
#               POST   /sessions(.:format)          sessions#create
#   new_session GET    /sessions/new(.:format)      sessions#new
#  edit_session GET    /sessions/:id/edit(.:format) sessions#edit
#       session GET    /sessions/:id(.:format)      sessions#show
#               PATCH  /sessions/:id(.:format)      sessions#update
#               PUT    /sessions/:id(.:format)      sessions#update
#               DELETE /sessions/:id(.:format)      sessions#destroy
#          pets GET    /pets(.:format)              pets#index
#               POST   /pets(.:format)              pets#create
#       new_pet GET    /pets/new(.:format)          pets#new
#      edit_pet GET    /pets/:id/edit(.:format)     pets#edit
#           pet GET    /pets/:id(.:format)          pets#show
#               PATCH  /pets/:id(.:format)          pets#update
#               PUT    /pets/:id(.:format)          pets#update
#               DELETE /pets/:id(.:format)          pets#destroy
# welcome_index GET    /welcome(.:format)           welcome#index
#               POST   /welcome(.:format)           welcome#create
#   new_welcome GET    /welcome/new(.:format)       welcome#new
#  edit_welcome GET    /welcome/:id/edit(.:format)  welcome#edit
#       welcome GET    /welcome/:id(.:format)       welcome#show
#               PATCH  /welcome/:id(.:format)       welcome#update
#               PUT    /welcome/:id(.:format)       welcome#update
#               DELETE /welcome/:id(.:format)       welcome#destroy
#          root GET    /                            welcome/#index

end
