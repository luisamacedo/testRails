class HomeController < ApplicationController
  layout "home"

  def index
    @all_customers = Customer.all
    @all_lawyers = Lawyer.all
    @customers_without_lawyer = Customer.all.where(lawyer_id: nil)
    if params[:customer_id] != nil
      get_selected_value
    end
  end

  def get_selected_value
    @customer_to_match = Customer.find(params[:customer_id])
    if Lawyer.all.where(state_id: @customer_to_match.state_id).first != nil
      @lawyer_to_match = Lawyer.all.where(state_id: @customer_to_match.state_id).order('random()').first.id
      @customer_to_match.update(lawyer_id: @lawyer_to_match)
    end
  end
end
