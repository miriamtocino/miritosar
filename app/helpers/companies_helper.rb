require 'uri'

module CompaniesHelper
  def image_for(company)
    company.logo.blank? ? image_tag('placeholder.png') : image_tag(company.logo)
  end

  def website_for(website)
    clean_url = URI.split(website)
    clean_url[2]
  end

  def format_average_stars(company)
    if company.average_stars.nil?
      content_tag(:strong, 'No reviews')
    else
      # average_stars = "*" * company.average_stars.round
      # "#{average_stars} (#{pluralize(company.reviews.size, 'review')})" 
      "#{pluralize(number_with_precision(company.average_stars, precision: 1) , 'star')} (#{pluralize(company.reviews.size, 'review')})"
    end
  end
end
