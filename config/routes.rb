Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses, only: [:create,:new]
  end
  resources :doses, only: :delete
  #get cocktails =>index
  #get cocktails/:id => def show @cocktail = Cocktail.find(:id) @cocktail.ingredients
  #get cocktails/new = new
  #post cocktails
  #now in the doses controller
  #get cocktails/:id/doses/new only
  #post cocktails/:id/doses
  #delete doses/:id
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
#           Prefix Verb   URI Pattern                                                                              Controller#Action
#            cocktail_doses POST   /cocktails/:cocktail_id/doses(.:format)                                                  doses#create
#         new_cocktail_dose GET    /cocktails/:cocktail_id/doses/new(.:format)                                              doses#new
#                 cocktails GET    /cocktails(.:format)                                                                     cocktails#index
#                           POST   /cocktails(.:format)                                                                     cocktails#create
#              new_cocktail GET    /cocktails/new(.:format)                                                                 cocktails#new
#             edit_cocktail GET    /cocktails/:id/edit(.:format)                                                            cocktails#edit
#                  cocktail GET    /cocktails/:id(.:format)                                                                 cocktails#show
#                           PATCH  /cocktails/:id(.:format)                                                                 cocktails#update
#                           PUT    /cocktails/:id(.:format)                                                                 cocktails#update
#                           DELETE /cocktails/:id(.:format)                                                                 cocktails#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
