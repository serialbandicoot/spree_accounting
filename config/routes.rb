Spree::Core::Engine.routes.draw do

  namespace :admin do

    match "suppliers/new_contact_details/:id" => "suppliers#new_contact_details"
    match "suppliers/new_address/:id" => "suppliers#new_address"
    match "suppliers/new_social_media/:id" => "suppliers#new_social_media"

    resources :company_details
    resources :accounts_addresses
    resources :expense_categories
    resources :expense_types
    resources :vats
    resources :expenses
    resources :contact_details
    resources :suppliers
    resources :contact_types
    resources :accounts_payment_methods
    resources :supplier_types
    resources :social_media_types
    resources :social_media
  end

end
