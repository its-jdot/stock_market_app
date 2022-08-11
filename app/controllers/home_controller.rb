class HomeController < ApplicationController
  
  
  def index
    @api = StockQuote::Stock.new(api_key: "pk_09440222b4794da68056a63c9781ed46")
    
    if params[:ticker] == ""
      @nothing = "You Enetred No Symbol !"
    elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
    end
  
  end

  def about
    
  end

end
