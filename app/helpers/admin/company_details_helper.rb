module Admin::CompanyDetailsHelper

 #Check to see if in Accounts, first tab is company_details URL so we can show subnav
  def inside_accounts_tab?
      @inside_accounting_tab ||= request.fullpath.match(admin_company_details_path)
  end

  def accounts_tab
    content_tag :li, :class => inside_accounts_tab? ? 'selected' : nil do
      link_to t('spree.admin.accounting'), admin_company_details_path
    end
  end
end
