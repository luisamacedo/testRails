class HomeController < ApplicationController
  layout "home"

  def index
    @all_customers = Customer.all
    @all_lawyers = Lawyer.all
  end
end
