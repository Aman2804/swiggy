class AddressesController < ApplicationController
  defore_action :addressable_data
  def index
    
  end
  def new
    binding.pry
    @address = Address.new
    # binding.pry
  end
  def create
    @user_id = 
    @address = Address.new(address_permited_params)
    # binding.pry
  end


  private

  def address_permited_params
    params.require(:address).permit(:flat_no, :location, :city, :landmark, :address_type)
  end
  def addressable_data
    @address = request.env["REQUEST_PATH"].split('/')
  end
end
