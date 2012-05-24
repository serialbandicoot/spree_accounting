Spree::Core::Engine.routes.draw do

  namespace :admin do

    match "suppliers/new_contact_details/:id" => "suppliers#new_contact_details"
    match "suppliers/new_address/:id" => "suppliers#new_address"
    match "suppliers/new_social_media/:id" => "suppliers#new_social_media"
    match "accounting_bank_accounts/transaction_summary/:id" => "accounting_bank_accounts#transaction_summary"
    match "accounting_bank_accounts/new_transaction/:id" => "accounting_bank_accounts#new_transaction"

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
    resources :banking_institutions
    resources :accounting_bank_accounts
    resources :bank_transactions
    resources :banking_transaction_types
    resources :mileages
    resources :reclaim_rates
    resources :vehicle_types
  end

end
