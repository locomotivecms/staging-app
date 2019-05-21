class DemoController < ApplicationController

  def show
    if account = Locomotive::Account.where(name: 'Anonymous', visitor: true).first
      # Demo account found!
      sign_in account

      # Find her/his site and the related home page
      site = account.sites.first
      page = site.pages.root.first

      # Directly go to the edit page view
      redirect_to locomotive.edit_page_content_path(site, page)
    else
      redirect_to 'https://www.locomotivecms.com'
    end
  end

end
