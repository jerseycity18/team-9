class BuddiesController < ApplicationController
  def new
    @buddy = Buddy.new
  end

  def create
    @buddy = Buddy.new(buddy_params)

    @buddy.save
    redirect_to @buddy
  end

  def show
    @buddy = Buddy.find(params[:id])
  end

  private

  def buddy_params
    params.require(:buddy).permit(:first_name, :last_name, :zipcode, :interest, :availability, :communication)
  end

end
