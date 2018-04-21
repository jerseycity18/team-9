class MembersController < ApplicationController
  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)

    @member.save
    redirect_to @member
  end

  def index
  end
  
  def show
  end

  private

  def member_params
    params.require(:member).permit(:first_name, :last_name, :zipcode, :interest, :availability, :communication)
  end
end
