require 'uri'

module CompaniesHelper
  def image_for(company)
    company.logo.blank? ? image_tag('placeholder.png') : image_tag(company.logo)
  end

  def website_for(website)
    clean_url = URI.split(website)
    clean_url[2]
  end
end
