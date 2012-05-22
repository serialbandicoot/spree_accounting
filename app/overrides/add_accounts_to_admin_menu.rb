Deface::Override.new(:virtual_path  => "spree/layouts/admin",
                     :name          => "spree_accounts_admin_tab",
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :text => "<%= tab :company_details, :label => t('spree.admin.accounting') %>",
                     :disabled      => false)


# Adds the contents menu. Inside the contents sub menu we ensure it's needed
Deface::Override.new(:virtual_path  => "spree/layouts/admin",
                     :name          => "spree_accounting_sub_menu",
                     :insert_top    => "#sub-menu[data-hook]",
                     :partial       => "spree/admin/shared/accounting_sub_menu",
                     :disabled      => false)




