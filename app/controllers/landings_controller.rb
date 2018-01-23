class LandingsController < ApplicationController
  def index
    @items = Item.all
  end

# This is called when a transaction is concluded successfully!

  def thankyou
  end

# This is called when a transaction doesn't go well..

  def unsuccessful
  end



end
