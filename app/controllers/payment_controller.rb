class PaymentController < ApplicationController
  def new
    @amount = params[:amount]    
  end

  def confirm
    @result = Braintree::TransparentRedirect.confirm(request.query_string)
    #raise @result.inspect
    if @result.success?
      render :action => "confirm"
    else
      @amount = 100
      render :action => "new"
    end
  end
end
