Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :taxonomies do
      resources :taxons do
        resources :bullets
      end
    end
  end
end

#                        admin_taxon_bullets GET    /admin/taxons/:taxon_id/bullets(.:format)                            spree/admin/bullets#index
#                                            POST   /admin/taxons/:taxon_id/bullets(.:format)                            spree/admin/bullets#create
#                     new_admin_taxon_bullet GET    /admin/taxons/:taxon_id/bullets/new(.:format)                        spree/admin/bullets#new
#                    edit_admin_taxon_bullet GET    /admin/taxons/:taxon_id/bullets/:id/edit(.:format)                   spree/admin/bullets#edit
#                         admin_taxon_bullet GET    /admin/taxons/:taxon_id/bullets/:id(.:format)                        spree/admin/bullets#show
#                                            PUT    /admin/taxons/:taxon_id/bullets/:id(.:format)                        spree/admin/bullets#update
#                                            DELETE /admin/taxons/:taxon_id/bullets/:id(.:format)                        spree/admin/bullets#destroy
     