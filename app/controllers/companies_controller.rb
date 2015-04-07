class CompaniesController < ApplicationController

  def index
    @companies = ["Company 1", "Company 2", "Company 3"]
  end
end
